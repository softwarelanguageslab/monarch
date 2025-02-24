(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7405 #t)) g7405)))
    (meta (lambda (v) (letrec* ((g7406 v)) g7406)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7407
          (letrec*
           ((g7408
             (letrec*
              ((x-e7409 lst))
              (letrec*
               ((v1742 x-e7409))
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
                   ((x-cnd7410
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7410
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
           g7408)))
        g7407)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7411 (lambda (v) (letrec* ((g7412 v)) g7412)))) g7411)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7413
          (letrec*
           ((x7414 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7414)))))
        g7413))))
   (letrec*
    ((g7415
      (letrec*
       ((g7416
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
           ((g7417 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7418
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7419
                     (lambda (k j lst)
                       (letrec*
                        ((g7420
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7421
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7421))
                             lst))))
                        g7420))))
                   g7419)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7422
                     (letrec*
                      ((x-cnd7423
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7423
                        g7263
                        (begin
                          (write '(blame g7261 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7422)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7424
                     (letrec*
                      ((x-cnd7425
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7425
                        g7266
                        (begin
                          (write '(blame g7264 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7424)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7426
                     (letrec*
                      ((x-cnd7427
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7427
                        g7269
                        (begin
                          (write '(blame g7267 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7426)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7428
                     (letrec*
                      ((x-cnd7429
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7430 #t)) g7430)) g7272))))
                      (if x-cnd7429
                        g7272
                        (begin
                          (write '(blame g7270 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7428)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7431
                     (letrec*
                      ((x-cnd7432
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7433 #t)) g7433)) g7275))))
                      (if x-cnd7432
                        g7275
                        (begin
                          (write '(blame g7273 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7431)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7434
                     (letrec*
                      ((x-cnd7435
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7435
                        g7278
                        (begin
                          (write '(blame g7276 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7434)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7436
                     (letrec*
                      ((x-cnd7437
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7437
                        g7281
                        (begin
                          (write '(blame g7279 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7436)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7438
                     (letrec*
                      ((x-cnd7439
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7439
                        g7284
                        (begin
                          (write '(blame g7282 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7438)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x-cnd7441
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7441
                        g7287
                        (begin
                          (write '(blame g7285 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7440)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7442
                     (lambda (k j v)
                       (letrec*
                        ((g7443
                          (letrec*
                           ((x-cnd7444
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7444
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7443))))
                   g7442)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7445
                     (lambda (k j v)
                       (letrec*
                        ((g7446
                          (letrec*
                           ((x-cnd7447
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7447
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7451
                                (letrec*
                                 ((x7452
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7452))))
                               (x7448
                                (letrec*
                                 ((x7450
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7449
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7450 k j x7449)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7451 x7448)))))))
                        g7446))))
                   g7445)))
               (any? (lambda (v) (letrec* ((g7453 #t)) g7453)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x7455
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7455)))))
                   g7454)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7458
                                (letrec*
                                 ((x7459
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7459)))))
                              g7458))
                           g7290))))
                      (if x-cnd7457
                        g7290
                        (begin
                          (write '(blame g7288 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7456)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7460
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7461
                          (letrec*
                           ((x-cnd7462
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7463
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7463))
                                g7293))))
                           (if x-cnd7462
                             g7293
                             (begin
                               (write '(blame g7291 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7461))))
                   g7460)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7464
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7465
                          (letrec*
                           ((x-cnd7466
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7467
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7467))
                                g7296))))
                           (if x-cnd7466
                             g7296
                             (begin
                               (write '(blame g7294 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7465))))
                   g7464)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7468
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7469
                          (letrec*
                           ((x-cnd7470
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7471
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7471))
                                g7299))))
                           (if x-cnd7470
                             g7299
                             (begin
                               (write '(blame g7297 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7469))))
                   g7468)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7472
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7473
                          (letrec*
                           ((x-cnd7474
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7475
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7475))
                                g7302))))
                           (if x-cnd7474
                             g7302
                             (begin
                               (write '(blame g7300 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7473))))
                   g7472)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7476
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7477
                          (letrec*
                           ((x-cnd7478
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7479
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7479))
                                g7305))))
                           (if x-cnd7478
                             g7305
                             (begin
                               (write '(blame g7303 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7477))))
                   g7476)))
               (meta (lambda (v) (letrec* ((g7480 v)) g7480)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7481
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7483
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7484
                                 (letrec*
                                  ((x7485
                                    (letrec*
                                     ((x7487
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7486
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7312 x7487 x7486)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7485)))))
                               g7484))))
                          g7483))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7482
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7482))))))
                  g7481)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7488
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7490
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7491
                                 (letrec*
                                  ((x7492
                                    (letrec*
                                     ((x7494
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7493
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7319 x7494 x7493)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7492)))))
                               g7491))))
                          g7490))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7489
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7489))))))
                  g7488)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7495
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7497
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7498
                                 (letrec*
                                  ((x7499
                                    (letrec*
                                     ((x7501
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7500
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7326 x7501 x7500)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7499)))))
                               g7498))))
                          g7497))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7496
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7496))))))
                  g7495)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7502
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7504
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7505
                                 (letrec*
                                  ((x7506
                                    (letrec*
                                     ((x7508
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7507
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7333 x7508 x7507)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7506)))))
                               g7505))))
                          g7504))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7503
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7503))))))
                  g7502)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7509
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7511
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7512
                                 (letrec*
                                  ((x7513
                                    (letrec*
                                     ((x7515
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7514
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7340 x7515 x7514)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7513)))))
                               g7512))))
                          g7511))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7510
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7510))))))
                  g7509)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7516
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7518
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7519
                                 (letrec*
                                  ((x7520
                                    (letrec*
                                     ((x7522
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7521
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7347 x7522 x7521)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7520)))))
                               g7519))))
                          g7518))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7517
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7517))))))
                  g7516)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7523
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7525
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7526
                                 (letrec*
                                  ((x7527
                                    (letrec*
                                     ((x7529
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7528
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7354 x7529 x7528)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7527)))))
                               g7526))))
                          g7525))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7524
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7524))))))
                  g7523)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7530
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7532
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7533
                                 (letrec*
                                  ((x7534
                                    (letrec*
                                     ((x7536
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7535
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7361 x7536 x7535)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7534)))))
                               g7533))))
                          g7532))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7531
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7531))))))
                  g7530)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7537
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7539
                            (lambda (g7364)
                              (letrec*
                               ((g7540
                                 (letrec*
                                  ((x7541
                                    (letrec*
                                     ((x7542
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7367 x7542)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7541)))))
                               g7540))))
                          g7539))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7538
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7538))))))
                  g7537)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7543
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7545
                            (lambda (g7370)
                              (letrec*
                               ((g7546
                                 (letrec*
                                  ((x7547
                                    (letrec*
                                     ((x7548
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7373 x7548)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7547)))))
                               g7546))))
                          g7545))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7544
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7544))))))
                  g7543)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7549
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7551
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7552
                                 (letrec*
                                  ((x7553
                                    (letrec*
                                     ((x7555
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7554
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7380 x7555 x7554)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7553)))))
                               g7552))))
                          g7551))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7550
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7550))))))
                  g7549)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7556
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7558
                            (lambda (g7383)
                              (letrec*
                               ((g7559
                                 (letrec*
                                  ((x7560
                                    (letrec*
                                     ((x7561
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7386 x7561)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7560)))))
                               g7559))))
                          g7558))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7557
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7557))))))
                  g7556)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7562
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7564
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7565
                                 (letrec*
                                  ((x7566
                                    (letrec*
                                     ((x7568
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7567
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7393 x7568 x7567)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7566)))))
                               g7565))))
                          g7564))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7563
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7563))))))
                  g7562)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7569
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7569)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7570
                     (letrec*
                      ((x7571
                        (letrec*
                         ((x7572
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7572)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7571)))))
                   g7570)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7573
                     (letrec*
                      ((x7576
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7576))))
                    (g7574
                     (letrec*
                      ((x7577
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7577))))
                    (g7575
                     (letrec*
                      ((x-cnd7578
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7578
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7581
                           (letrec*
                            ((x7582
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7582))))
                          (x7579
                           (letrec*
                            ((x7580
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7580)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7581 x7579)))))))
                   g7575)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7583
                     (letrec*
                      ((x7584
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7584)))))
                   g7583)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7585
                     (letrec*
                      ((x7586
                        (letrec*
                         ((x7587
                           (letrec*
                            ((x7588
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7588)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7587)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7586)))))
                   g7585)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7589
                     (letrec*
                      ((x7590
                        (letrec*
                         ((x7591
                           (letrec*
                            ((x7592
                              (begin
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7592)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7591)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7590)))))
                   g7589)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7593
                     (letrec*
                      ((x7596
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7596))))
                    (g7594
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7597))))
                    (g7595
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
                       ((g7598
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7599 res))
                       g7599))))
                   g7595)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7601
                        (letrec*
                         ((x7602
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7602)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7601)))))
                   g7600)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7604
                        (letrec*
                         ((x7605
                           (letrec*
                            ((x7606
                              (begin
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7606)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7605)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7604)))))
                   g7603)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7609
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7609))))
                    (g7608
                     (letrec*
                      ((x-cnd7610
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7610
                        #f
                        (letrec*
                         ((x-cnd7611
                           (letrec*
                            ((x7612
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7612 k)))))
                         (if x-cnd7611
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7613
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7613)))))))))
                   g7608)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7615)))))
                   g7614)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7618))))
                    (g7617
                     (letrec*
                      ((x-cnd7619
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7619
                        ""
                        (letrec*
                         ((x7622
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7623))))
                          (x7620
                           (letrec*
                            ((x7621
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7621)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7622 x7620)))))))
                   g7617)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7627))))
                    (g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7628))))
                    (g7626
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7629
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7629))))
                   g7626)))
               (cdddar
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
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7633)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7632)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7631)))))
                   g7630)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7637
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7637))))
                    (g7635
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7638))))
                    (g7636
                     (letrec*
                      ((x-cnd7639
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7639
                        x
                        (letrec*
                         ((x7641
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7640
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7641 x7640)))))))
                   g7636)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7642
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7642)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x-cnd7644
                        (letrec*
                         ((x7645 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7645)))))
                      (if x-cnd7644
                        (letrec*
                         ((x7646 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7646)))
                        #f))))
                   g7643)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7649))))
                    (g7648
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7650
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7651 (if val7245 val7245 #f)))
                             g7651)))))
                       g7650))))
                   g7648)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7653
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7653 9)))))
                      (letrec*
                       ((g7654
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7655
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7655 10)))))
                            (letrec*
                             ((g7656
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7657
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7657 32))))))
                             g7656)))))
                       g7654))))
                   g7652)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7659
                        (letrec*
                         ((x7660
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7660)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7659)))))
                   g7658)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7663))))
                    (g7662
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7662)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7664 #f)) g7664)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7666)))))
                   g7665)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x7669
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7669))))
                    (g7668
                     (letrec*
                      ((x-cnd7670
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7670
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7668)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7672
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7673
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7673
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7674
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7675
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7675
                                       (letrec*
                                        ((x-cnd7676
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7676
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7677
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7678
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7678
                                             (letrec*
                                              ((x-cnd7679
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7679
                                                (letrec*
                                                 ((x-cnd7680
                                                   (letrec*
                                                    ((x7682
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7681
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7682 x7681)))))
                                                 (if x-cnd7680
                                                   (letrec*
                                                    ((x7684
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7683
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7684 x7683)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7685
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7686
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7686
                                                (letrec*
                                                 ((x-cnd7687
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7687
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7688
                                                       (letrec*
                                                        ((x-cnd7689
                                                          (letrec*
                                                           ((x7690
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
                                                             (= x7690 n)))))
                                                        (if x-cnd7689
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7691
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
                                                                    ((g7692
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7693
                                                                           (letrec*
                                                                            ((x7695
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
                                                                             (x7694
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
                                                                               x7695
                                                                               x7694)))))
                                                                         (if x-cnd7693
                                                                           (letrec*
                                                                            ((x7696
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
                                                                               x7696)))
                                                                           #f)))))
                                                                    g7692))))
                                                                g7691))))
                                                           (letrec*
                                                            ((g7697
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7697))
                                                          #f))))
                                                     g7688))
                                                   #f))
                                                #f)))))
                                         g7685)))))
                                   g7677)))))
                             g7674)))))
                       g7672))))
                   g7671)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7698
                     (letrec*
                      ((x7699
                        (letrec*
                         ((x7700
                           (letrec*
                            ((x7701
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7701)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7700)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7699)))))
                   g7698)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7702
                     (letrec*
                      ((x7703
                        (letrec*
                         ((x7704
                           (letrec*
                            ((x7705
                              (begin
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7705)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7704)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7703)))))
                   g7702)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7706
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7706)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7707
                     (letrec*
                      ((x7709
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7709))))
                    (g7708
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7710
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7711 (if val7254 val7254 #f)))
                             g7711)))))
                       g7710))))
                   g7708)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7712
                     (letrec*
                      ((x7715
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7715))))
                    (g7713
                     (letrec*
                      ((x7716
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7716))))
                    (g7714
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
                       ((g7717
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7718 res))
                       g7718))))
                   g7714)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7719
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7719)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x7723
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7723))))
                    (g7721
                     (letrec*
                      ((x7724
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7724))))
                    (g7722
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7725
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7725))))
                   g7722)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x7727
                        (letrec*
                         ((x7728
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7728)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7727)))))
                   g7726)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7730
                        (letrec*
                         ((x7731
                           (letrec*
                            ((x7732
                              (begin
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7732)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7731)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7730)))))
                   g7729)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7734
                        (letrec*
                         ((x7735
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7735)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7734)))))
                   g7733)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7737
                        (letrec*
                         ((x7738
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7738)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7737)))))
                   g7736)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7742
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7742))))
                    (g7740
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7743))))
                    (g7741
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7744)))))
                   g7741)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7746
                        (letrec*
                         ((x7747
                           (letrec*
                            ((x7748
                              (begin
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7748)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7747)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7746)))))
                   g7745)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7751))))
                    (g7750
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7750)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7752
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7752)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7754
                        (letrec*
                         ((x7755
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7755)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7754)))))
                   g7753)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7756
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7756)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7759))))
                    (g7758
                     (letrec*
                      ((x-cnd7760
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7760
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7763
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7764))))
                          (x7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7762)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7763 x7761)))))))
                   g7758)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7766
                        (letrec*
                         ((x7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7768)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7767)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7766)))))
                   g7765)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7770
                        (letrec*
                         ((x7771
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7772)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7771)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7770)))))
                   g7769)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7775))))
                    (g7774
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7776)))))
                   g7774)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7778
                        (letrec*
                         ((x7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7780)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7779)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7778)))))
                   g7777)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7784))))
                    (g7782
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7785))))
                    (g7783
                     (letrec*
                      ((x-cnd7786
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7786
                        (letrec*
                         ((g7787
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7787)
                        (letrec*
                         ((x-cnd7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7789)))))
                         (if x-cnd7788
                           (letrec*
                            ((g7790
                              (letrec*
                               ((x7791
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7791)))))
                            g7790)
                           (letrec*
                            ((x-cnd7792
                              (letrec*
                               ((x7793
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7793)))))
                            (if x-cnd7792
                              (letrec*
                               ((g7794
                                 (letrec*
                                  ((x7796
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7795
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7796 x7795)))))
                               g7794)
                              (letrec*
                               ((x-cnd7797
                                 (letrec*
                                  ((x7798
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7798)))))
                               (if x-cnd7797
                                 (letrec*
                                  ((g7799
                                    (letrec*
                                     ((x7802
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7801
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7800
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7802 x7801 x7800)))))
                                  g7799)
                                 (letrec*
                                  ((x-cnd7803
                                    (letrec*
                                     ((x7804
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7804)))))
                                  (if x-cnd7803
                                    (letrec*
                                     ((g7805
                                       (letrec*
                                        ((x7809
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7808
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7807
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7806
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7809 x7808 x7807 x7806)))))
                                     g7805)
                                    (letrec*
                                     ((x-cnd7810
                                       (letrec*
                                        ((x7811
                                          (letrec*
                                           ((x7812
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7812)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7811)))))
                                     (if x-cnd7810
                                       (letrec*
                                        ((g7813
                                          (letrec*
                                           ((x7819
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7818
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7817
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7816
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7814
                                             (letrec*
                                              ((x7815
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7815)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7819
                                              x7818
                                              x7817
                                              x7816
                                              x7814)))))
                                        g7813)
                                       (letrec*
                                        ((x-cnd7820
                                          (letrec*
                                           ((x7821
                                             (letrec*
                                              ((x7822
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7822)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7821)))))
                                        (if x-cnd7820
                                          (letrec*
                                           ((g7823
                                             (letrec*
                                              ((x7831
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7830
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7829
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7828
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7826
                                                (letrec*
                                                 ((x7827
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7827))))
                                               (x7824
                                                (letrec*
                                                 ((x7825
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7825)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7831
                                                 x7830
                                                 x7829
                                                 x7828
                                                 x7826
                                                 x7824)))))
                                           g7823)
                                          (letrec*
                                           ((x-cnd7832
                                             (letrec*
                                              ((x7833
                                                (letrec*
                                                 ((x7834
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7834)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7833)))))
                                           (if x-cnd7832
                                             (letrec*
                                              ((g7835
                                                (letrec*
                                                 ((x7845
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7844
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7843
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7842
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7840
                                                   (letrec*
                                                    ((x7841
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7841))))
                                                  (x7838
                                                   (letrec*
                                                    ((x7839
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7839))))
                                                  (x7836
                                                   (letrec*
                                                    ((x7837
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7837)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7845
                                                    x7844
                                                    x7843
                                                    x7842
                                                    x7840
                                                    x7838
                                                    x7836)))))
                                              g7835)
                                             (letrec*
                                              ((g7846
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7846)))))))))))))))))))
                   g7783)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7849))))
                    (g7848
                     (letrec*
                      ((x-cnd7850
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7850
                        #f
                        (letrec*
                         ((x-cnd7851
                           (letrec*
                            ((x7852
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7852 e)))))
                         (if x-cnd7851
                           l
                           (letrec*
                            ((x7853
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7853)))))))))
                   g7848)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((x7855
                        (letrec*
                         ((x7856
                           (letrec*
                            ((x7857
                              (begin
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7857)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7856)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7855)))))
                   g7854)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x7859
                        (letrec*
                         ((x7860
                           (letrec*
                            ((x7861
                              (begin
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7861)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7860)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7859)))))
                   g7858)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7862
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7862)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((x7865
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7865))))
                    (g7864
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7864)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7867
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7867))))
                   g7866)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7869
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7869)))))
                   g7868)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7871
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7871
                           (letrec*
                            ((x7872
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7872)))
                           #f))))
                      (letrec*
                       ((g7873
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7873))))
                   g7870)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x7875
                        (letrec*
                         ((x7876
                           (letrec*
                            ((x7877
                              (begin
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7877)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7876)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7875)))))
                   g7874)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x-cnd7879
                        (letrec*
                         ((x7880 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7880 c)))))
                      (if x-cnd7879
                        (letrec*
                         ((x7881 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7881)))
                        #f))))
                   g7878)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7884
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7884))))
                    (g7883
                     (letrec*
                      ((x-cnd7885
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7885
                        #f
                        (letrec*
                         ((x-cnd7886
                           (letrec*
                            ((x7887
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7887 k)))))
                         (if x-cnd7886
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7888
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7888)))))))))
                   g7883)))
               (not (lambda (x) (letrec* ((g7889 (if x #f #t))) g7889)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7890
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7890)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x7893
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7893))))
                    (g7892
                     (letrec*
                      ((x-cnd7894
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7894
                        #f
                        (letrec*
                         ((x-cnd7895
                           (letrec*
                            ((x7896
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7896 e)))))
                         (if x-cnd7895
                           l
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7897)))))))))
                   g7892)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7899
                        (letrec*
                         ((x7900
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7901)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7900)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7899)))))
                   g7898)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7904
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7904))))
                    (g7903
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7905
                             (letrec*
                              ((x-cnd7906
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7906
                                0
                                (letrec*
                                 ((x7907
                                   (letrec*
                                    ((x7908
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7908)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7907)))))))
                           g7905))))
                      (letrec*
                       ((g7909
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7909))))
                   g7903)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x7913
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7913))))
                    (g7911
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7914))))
                    (g7912
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7915
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7915))))
                   g7912)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7917
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7917)))))
                   g7916)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7919
                        (letrec*
                         ((x7920
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7920)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7919)))))
                   g7918)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7923))))
                    (g7922
                     (letrec*
                      ((x-cnd7924
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7924
                        #f
                        (letrec*
                         ((x-cnd7925
                           (letrec*
                            ((x7926
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7926 k)))))
                         (if x-cnd7925
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7927
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7927)))))))))
                   g7922)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7929)))))
                   g7928)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7933))))
                    (g7931
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7934))))
                    (g7932
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7935)))))
                   g7932)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7937
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7937))))
                   g7936)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7941))))
                    (g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((x-cnd7943
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7943
                        #t
                        (letrec*
                         ((x-cnd7944
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7944
                           (letrec*
                            ((g7945
                              (letrec*
                               ((x7947
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7947))))
                             (g7946
                              (letrec*
                               ((x7948
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7948)))))
                            g7946)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7940)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7951))))
                    (g7950
                     (letrec*
                      ((x-cnd7952
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7952
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7950)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7956))))
                    (g7954
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7957))))
                    (g7955
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7958
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7958))))
                   g7955)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7960
                        (letrec*
                         ((x7961
                           (letrec*
                            ((x7962
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7962)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7961)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7960)))))
                   g7959)))
               (newline (lambda () (letrec* ((g7963 #f)) g7963)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7966
                        (letrec*
                         ((x7967
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7967))))
                       (x7965
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7966 x7965)))))
                   g7964)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7970))))
                    (g7969
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7971)))))
                   g7969)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7976
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7976))))
                    (g7973
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7977))))
                    (g7974
                     (letrec*
                      ((x7978
                        (letrec*
                         ((x7979
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7979)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7978))))
                    (g7975
                     (letrec*
                      ((x-cnd7980
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7980
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7982
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7981
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x7982 x7981)))))))
                   g7975)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x-cnd7984
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7984
                        a
                        (letrec*
                         ((x7985
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x7985)))))))
                   g7983)))
               (foldl
                (lambda (f z l)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((x-cnd7987
                        (begin
                          (write '(funapp 1661 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7987
                        z
                        (letrec*
                         ((x7989
                           (letrec*
                            ((x7990
                              (begin
                                (write '(funapp 1665 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1665 61))
                              (display "\n")
                              (f z x7990))))
                          (x7988
                           (begin
                             (write '(funapp 1666 34))
                             (display "\n")
                             (cdr l))))
                         (begin
                           (write '(funapp 1667 26))
                           (display "\n")
                           (foldl f x7989 x7988)))))))
                   g7986)))
               (randpos
                (lambda (rand)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((n
                        (begin
                          (write '(funapp 1674 27))
                          (display "\n")
                          (rand))))
                      (letrec*
                       ((g7992
                         (letrec*
                          ((x-cnd7993
                            (begin
                              (write '(funapp 1678 39))
                              (display "\n")
                              (> n 0))))
                          (if x-cnd7993
                            n
                            (begin
                              (write '(funapp 1679 43))
                              (display "\n")
                              (randpos rand))))))
                       g7992))))
                   g7991)))
               (mk-list
                (lambda (rand n)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x-cnd7995
                        (begin
                          (write '(funapp 1687 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd7995
                        empty
                        (letrec*
                         ((x7998
                           (begin
                             (write '(funapp 1691 34))
                             (display "\n")
                             (randpos rand)))
                          (x7996
                           (letrec*
                            ((x7997
                              (begin
                                (write '(funapp 1693 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1693 55))
                              (display "\n")
                              (mk-list rand x7997)))))
                         (begin
                           (write '(funapp 1694 26))
                           (display "\n")
                           (cons x7998 x7996)))))))
                   g7994)))
               (main
                (lambda (rand n m)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x8000
                        (begin
                          (write '(funapp 1700 39))
                          (display "\n")
                          (mk-list rand n))))
                      (begin
                        (write '(funapp 1700 58))
                        (display "\n")
                        (foldl / m x8000)))))
                   g7999))))
              (letrec*
               ((g8001
                 (begin
                   (write '(funapp 1704 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1705 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8005
                          (letrec*
                           ((xj7394
                             (begin
                               (write '(funapp 1709 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1709 37))
                                  (display "\n")
                                  'module))))
                            (xk7395
                             (begin
                               (write '(funapp 1709 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1709 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8006
                              (begin
                                (write '(funapp 1712 27))
                                (display "\n")
                                ((lambda (j7399 k7400 f7401)
                                   (letrec*
                                    ((g8007
                                      (lambda (g7396 g7397 g7398)
                                        (letrec*
                                         ((g8008
                                           (letrec*
                                            ((x8009
                                              (letrec*
                                               ((x8012
                                                 (begin
                                                   (write '(funapp 1722 44))
                                                   (display "\n")
                                                   ((lambda (j7402 k7403 f7404)
                                                      (letrec*
                                                       ((g8013
                                                         (lambda ()
                                                           (letrec*
                                                            ((g8014
                                                              (letrec*
                                                               ((x8015
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1729
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (f7404))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1730
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7402
                                                                  k7403
                                                                  x8015)))))
                                                            g8014))))
                                                       g8013))
                                                    j7399
                                                    k7400
                                                    g7396)))
                                                (x8011
                                                 (begin
                                                   (write '(funapp 1740 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7399
                                                    k7400
                                                    g7397)))
                                                (x8010
                                                 (begin
                                                   (write '(funapp 1742 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7399
                                                    k7400
                                                    g7398))))
                                               (begin
                                                 (write '(funapp 1743 42))
                                                 (display "\n")
                                                 (f7401 x8012 x8011 x8010)))))
                                            (begin
                                              (write '(funapp 1744 39))
                                              (display "\n")
                                              (real?/c j7399 k7400 x8009)))))
                                         g8008))))
                                    g8007))
                                 xj7394
                                 xk7395
                                 main))))
                            g8006)))
                         (x8004 (input))
                         (x8003 (input))
                         (x8002 (input)))
                        (begin
                          (write '(funapp 1754 21))
                          (display "\n")
                          (x8005 x8004 x8003 x8002)))))))))
               g8001))))
           g7418))))
       g7416)))
    g7415)))
