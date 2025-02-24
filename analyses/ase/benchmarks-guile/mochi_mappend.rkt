(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7412 #t)) g7412)))
    (meta (lambda (v) (letrec* ((g7413 v)) g7413)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7414
          (letrec*
           ((g7415
             (letrec*
              ((x-e7416 lst))
              (letrec*
               ((v1742 x-e7416))
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
                   ((x-cnd7417
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7417
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
           g7415)))
        g7414)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7418 (lambda (v) (letrec* ((g7419 v)) g7419)))) g7418)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7420
          (letrec*
           ((x7421 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7421)))))
        g7420))))
   (letrec*
    ((g7422
      (letrec*
       ((g7423
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
           ((g7424 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7425
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7426
                     (lambda (k j lst)
                       (letrec*
                        ((g7427
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7428
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7428))
                             lst))))
                        g7427))))
                   g7426)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7429
                     (letrec*
                      ((x-cnd7430
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7430
                        g7263
                        (begin
                          (write '(blame g7261 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7429)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7431
                     (letrec*
                      ((x-cnd7432
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7432
                        g7266
                        (begin
                          (write '(blame g7264 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7431)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7433
                     (letrec*
                      ((x-cnd7434
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7434
                        g7269
                        (begin
                          (write '(blame g7267 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7433)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7435
                     (letrec*
                      ((x-cnd7436
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7437 #t)) g7437)) g7272))))
                      (if x-cnd7436
                        g7272
                        (begin
                          (write '(blame g7270 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7435)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7438
                     (letrec*
                      ((x-cnd7439
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7440 #t)) g7440)) g7275))))
                      (if x-cnd7439
                        g7275
                        (begin
                          (write '(blame g7273 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7438)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7441
                     (letrec*
                      ((x-cnd7442
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7442
                        g7278
                        (begin
                          (write '(blame g7276 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7441)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x-cnd7444
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7444
                        g7281
                        (begin
                          (write '(blame g7279 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7443)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x-cnd7446
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7446
                        g7284
                        (begin
                          (write '(blame g7282 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7445)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7448
                        g7287
                        (begin
                          (write '(blame g7285 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7447)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7449
                     (lambda (k j v)
                       (letrec*
                        ((g7450
                          (letrec*
                           ((x-cnd7451
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7451
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7450))))
                   g7449)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7452
                     (lambda (k j v)
                       (letrec*
                        ((g7453
                          (letrec*
                           ((x-cnd7454
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7454
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7458
                                (letrec*
                                 ((x7459
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7459))))
                               (x7455
                                (letrec*
                                 ((x7457
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7456
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7457 k j x7456)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7458 x7455)))))))
                        g7453))))
                   g7452)))
               (any? (lambda (v) (letrec* ((g7460 #t)) g7460)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x7462
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7462)))))
                   g7461)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7463
                     (letrec*
                      ((x-cnd7464
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7465
                                (letrec*
                                 ((x7466
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7466)))))
                              g7465))
                           g7290))))
                      (if x-cnd7464
                        g7290
                        (begin
                          (write '(blame g7288 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7463)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7467
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7468
                          (letrec*
                           ((x-cnd7469
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7470
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7470))
                                g7293))))
                           (if x-cnd7469
                             g7293
                             (begin
                               (write '(blame g7291 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7468))))
                   g7467)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7471
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7472
                          (letrec*
                           ((x-cnd7473
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7474
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7474))
                                g7296))))
                           (if x-cnd7473
                             g7296
                             (begin
                               (write '(blame g7294 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7472))))
                   g7471)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7475
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7476
                          (letrec*
                           ((x-cnd7477
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7478
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7478))
                                g7299))))
                           (if x-cnd7477
                             g7299
                             (begin
                               (write '(blame g7297 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7476))))
                   g7475)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7479
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7480
                          (letrec*
                           ((x-cnd7481
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7482
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7482))
                                g7302))))
                           (if x-cnd7481
                             g7302
                             (begin
                               (write '(blame g7300 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7480))))
                   g7479)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7483
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7484
                          (letrec*
                           ((x-cnd7485
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7486
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7486))
                                g7305))))
                           (if x-cnd7485
                             g7305
                             (begin
                               (write '(blame g7303 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7484))))
                   g7483)))
               (meta (lambda (v) (letrec* ((g7487 v)) g7487)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7488
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7490
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7491
                                 (letrec*
                                  ((x7492
                                    (letrec*
                                     ((x7494
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7493
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7312 x7494 x7493)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7492)))))
                               g7491))))
                          g7490))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7489
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7489))))))
                  g7488)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7495
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7497
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7498
                                 (letrec*
                                  ((x7499
                                    (letrec*
                                     ((x7501
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7500
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7319 x7501 x7500)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7499)))))
                               g7498))))
                          g7497))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7496
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7496))))))
                  g7495)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7502
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7504
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7505
                                 (letrec*
                                  ((x7506
                                    (letrec*
                                     ((x7508
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7507
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7326 x7508 x7507)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7506)))))
                               g7505))))
                          g7504))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7503
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7503))))))
                  g7502)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7509
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7511
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7512
                                 (letrec*
                                  ((x7513
                                    (letrec*
                                     ((x7515
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7514
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7333 x7515 x7514)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7513)))))
                               g7512))))
                          g7511))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7510
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7510))))))
                  g7509)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7516
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7518
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7519
                                 (letrec*
                                  ((x7520
                                    (letrec*
                                     ((x7522
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7521
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7340 x7522 x7521)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7520)))))
                               g7519))))
                          g7518))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7517
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7517))))))
                  g7516)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7523
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7525
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7526
                                 (letrec*
                                  ((x7527
                                    (letrec*
                                     ((x7529
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7528
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7347 x7529 x7528)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7527)))))
                               g7526))))
                          g7525))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7524
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7524))))))
                  g7523)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7530
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7532
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7533
                                 (letrec*
                                  ((x7534
                                    (letrec*
                                     ((x7536
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7535
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7354 x7536 x7535)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7534)))))
                               g7533))))
                          g7532))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7531
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7531))))))
                  g7530)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7537
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7539
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7540
                                 (letrec*
                                  ((x7541
                                    (letrec*
                                     ((x7543
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7542
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7361 x7543 x7542)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7541)))))
                               g7540))))
                          g7539))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7538
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7538))))))
                  g7537)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7544
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7546
                            (lambda (g7364)
                              (letrec*
                               ((g7547
                                 (letrec*
                                  ((x7548
                                    (letrec*
                                     ((x7549
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7367 x7549)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7548)))))
                               g7547))))
                          g7546))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7545
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7545))))))
                  g7544)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7550
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7552
                            (lambda (g7370)
                              (letrec*
                               ((g7553
                                 (letrec*
                                  ((x7554
                                    (letrec*
                                     ((x7555
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7373 x7555)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7554)))))
                               g7553))))
                          g7552))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7551
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7551))))))
                  g7550)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7556
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7558
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7559
                                 (letrec*
                                  ((x7560
                                    (letrec*
                                     ((x7562
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7561
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7380 x7562 x7561)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7560)))))
                               g7559))))
                          g7558))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7557
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7557))))))
                  g7556)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7563
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7565
                            (lambda (g7383)
                              (letrec*
                               ((g7566
                                 (letrec*
                                  ((x7567
                                    (letrec*
                                     ((x7568
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7386 x7568)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7567)))))
                               g7566))))
                          g7565))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7564
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7564))))))
                  g7563)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7569
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7571
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7572
                                 (letrec*
                                  ((x7573
                                    (letrec*
                                     ((x7575
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7574
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7393 x7575 x7574)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7573)))))
                               g7572))))
                          g7571))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7570
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7570))))))
                  g7569)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7576
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7576)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7577
                     (letrec*
                      ((x7578
                        (letrec*
                         ((x7579
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7579)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7578)))))
                   g7577)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7580
                     (letrec*
                      ((x7583
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7583))))
                    (g7581
                     (letrec*
                      ((x7584
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7584))))
                    (g7582
                     (letrec*
                      ((x-cnd7585
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7585
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7588
                           (letrec*
                            ((x7589
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7589))))
                          (x7586
                           (letrec*
                            ((x7587
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7587)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7588 x7586)))))))
                   g7582)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7590
                     (letrec*
                      ((x7591
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7591)))))
                   g7590)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7592
                     (letrec*
                      ((x7593
                        (letrec*
                         ((x7594
                           (letrec*
                            ((x7595
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7595)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7594)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7593)))))
                   g7592)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7597
                        (letrec*
                         ((x7598
                           (letrec*
                            ((x7599
                              (begin
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7599)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7598)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7597)))))
                   g7596)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7603))))
                    (g7601
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7604))))
                    (g7602
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
                       ((g7605
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7606 res))
                       g7606))))
                   g7602)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7608
                        (letrec*
                         ((x7609
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7609)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7608)))))
                   g7607)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7611
                        (letrec*
                         ((x7612
                           (letrec*
                            ((x7613
                              (begin
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7613)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7612)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7611)))))
                   g7610)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7616))))
                    (g7615
                     (letrec*
                      ((x-cnd7617
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7617
                        #f
                        (letrec*
                         ((x-cnd7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7619 k)))))
                         (if x-cnd7618
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7620
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7620)))))))))
                   g7615)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7622)))))
                   g7621)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7625))))
                    (g7624
                     (letrec*
                      ((x-cnd7626
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7626
                        ""
                        (letrec*
                         ((x7629
                           (letrec*
                            ((x7630
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7630))))
                          (x7627
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7628)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7629 x7627)))))))
                   g7624)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7634))))
                    (g7632
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7635))))
                    (g7633
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7636
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7636))))
                   g7633)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7638
                        (letrec*
                         ((x7639
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7640)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7639)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7638)))))
                   g7637)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7644))))
                    (g7642
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7645))))
                    (g7643
                     (letrec*
                      ((x-cnd7646
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7646
                        x
                        (letrec*
                         ((x7648
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7647
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7648 x7647)))))))
                   g7643)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7649
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7649)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x-cnd7651
                        (letrec*
                         ((x7652 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7652)))))
                      (if x-cnd7651
                        (letrec*
                         ((x7653 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7653)))
                        #f))))
                   g7650)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7656))))
                    (g7655
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7657
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7658 (if val7245 val7245 #f)))
                             g7658)))))
                       g7657))))
                   g7655)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7660
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7660 9)))))
                      (letrec*
                       ((g7661
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7662
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7662 10)))))
                            (letrec*
                             ((g7663
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7664
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7664 32))))))
                             g7663)))))
                       g7661))))
                   g7659)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7666
                        (letrec*
                         ((x7667
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7667)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7666)))))
                   g7665)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7670))))
                    (g7669
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7669)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7671 #f)) g7671)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7673)))))
                   g7672)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7676))))
                    (g7675
                     (letrec*
                      ((x-cnd7677
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7677
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7675)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7679
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7680
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7680
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7681
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7682
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7682
                                       (letrec*
                                        ((x-cnd7683
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7683
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7684
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7685
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7685
                                             (letrec*
                                              ((x-cnd7686
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7686
                                                (letrec*
                                                 ((x-cnd7687
                                                   (letrec*
                                                    ((x7689
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7688
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7689 x7688)))))
                                                 (if x-cnd7687
                                                   (letrec*
                                                    ((x7691
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7690
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7691 x7690)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7692
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7693
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7693
                                                (letrec*
                                                 ((x-cnd7694
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7694
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7695
                                                       (letrec*
                                                        ((x-cnd7696
                                                          (letrec*
                                                           ((x7697
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
                                                             (= x7697 n)))))
                                                        (if x-cnd7696
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7698
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
                                                                    ((g7699
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7700
                                                                           (letrec*
                                                                            ((x7702
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
                                                                             (x7701
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
                                                                               x7702
                                                                               x7701)))))
                                                                         (if x-cnd7700
                                                                           (letrec*
                                                                            ((x7703
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
                                                                               x7703)))
                                                                           #f)))))
                                                                    g7699))))
                                                                g7698))))
                                                           (letrec*
                                                            ((g7704
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7704))
                                                          #f))))
                                                     g7695))
                                                   #f))
                                                #f)))))
                                         g7692)))))
                                   g7684)))))
                             g7681)))))
                       g7679))))
                   g7678)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7705
                     (letrec*
                      ((x7706
                        (letrec*
                         ((x7707
                           (letrec*
                            ((x7708
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7708)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7707)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7706)))))
                   g7705)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7709
                     (letrec*
                      ((x7710
                        (letrec*
                         ((x7711
                           (letrec*
                            ((x7712
                              (begin
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7712)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7711)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7710)))))
                   g7709)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7713
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7713)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7714
                     (letrec*
                      ((x7716
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7716))))
                    (g7715
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7717
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7718 (if val7254 val7254 #f)))
                             g7718)))))
                       g7717))))
                   g7715)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7719
                     (letrec*
                      ((x7722
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7722))))
                    (g7720
                     (letrec*
                      ((x7723
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7723))))
                    (g7721
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
                       ((g7724
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7725 res))
                       g7725))))
                   g7721)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7726
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7726)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((x7730
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7730))))
                    (g7728
                     (letrec*
                      ((x7731
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7731))))
                    (g7729
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7732
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7732))))
                   g7729)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7734
                        (letrec*
                         ((x7735
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7735)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7734)))))
                   g7733)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7737
                        (letrec*
                         ((x7738
                           (letrec*
                            ((x7739
                              (begin
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7739)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7738)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7737)))))
                   g7736)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (letrec*
                         ((x7742
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7742)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7741)))))
                   g7740)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7745)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7744)))))
                   g7743)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7749))))
                    (g7747
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7750))))
                    (g7748
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7751)))))
                   g7748)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7755)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7754)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7753)))))
                   g7752)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7758))))
                    (g7757
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7757)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7759
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7759)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7761
                        (letrec*
                         ((x7762
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7762)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7761)))))
                   g7760)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7763
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7763)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7766))))
                    (g7765
                     (letrec*
                      ((x-cnd7767
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7767
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7771))))
                          (x7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7769)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7770 x7768)))))))
                   g7765)))
               (caaadr
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
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7775)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7774)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7773)))))
                   g7772)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7777
                        (letrec*
                         ((x7778
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7779)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7778)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7777)))))
                   g7776)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7782))))
                    (g7781
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7783)))))
                   g7781)))
               (caadar
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7787)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7786)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7785)))))
                   g7784)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7791))))
                    (g7789
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7792))))
                    (g7790
                     (letrec*
                      ((x-cnd7793
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7793
                        (letrec*
                         ((g7794
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7794)
                        (letrec*
                         ((x-cnd7795
                           (letrec*
                            ((x7796
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7796)))))
                         (if x-cnd7795
                           (letrec*
                            ((g7797
                              (letrec*
                               ((x7798
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7798)))))
                            g7797)
                           (letrec*
                            ((x-cnd7799
                              (letrec*
                               ((x7800
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7800)))))
                            (if x-cnd7799
                              (letrec*
                               ((g7801
                                 (letrec*
                                  ((x7803
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7802
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7803 x7802)))))
                               g7801)
                              (letrec*
                               ((x-cnd7804
                                 (letrec*
                                  ((x7805
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7805)))))
                               (if x-cnd7804
                                 (letrec*
                                  ((g7806
                                    (letrec*
                                     ((x7809
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7808
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7807
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7809 x7808 x7807)))))
                                  g7806)
                                 (letrec*
                                  ((x-cnd7810
                                    (letrec*
                                     ((x7811
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7811)))))
                                  (if x-cnd7810
                                    (letrec*
                                     ((g7812
                                       (letrec*
                                        ((x7816
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7815
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7814
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7813
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7816 x7815 x7814 x7813)))))
                                     g7812)
                                    (letrec*
                                     ((x-cnd7817
                                       (letrec*
                                        ((x7818
                                          (letrec*
                                           ((x7819
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7819)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7818)))))
                                     (if x-cnd7817
                                       (letrec*
                                        ((g7820
                                          (letrec*
                                           ((x7826
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7825
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7824
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7823
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7821
                                             (letrec*
                                              ((x7822
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7822)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7826
                                              x7825
                                              x7824
                                              x7823
                                              x7821)))))
                                        g7820)
                                       (letrec*
                                        ((x-cnd7827
                                          (letrec*
                                           ((x7828
                                             (letrec*
                                              ((x7829
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7829)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7828)))))
                                        (if x-cnd7827
                                          (letrec*
                                           ((g7830
                                             (letrec*
                                              ((x7838
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7837
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7836
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7835
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7833
                                                (letrec*
                                                 ((x7834
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7834))))
                                               (x7831
                                                (letrec*
                                                 ((x7832
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7832)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7838
                                                 x7837
                                                 x7836
                                                 x7835
                                                 x7833
                                                 x7831)))))
                                           g7830)
                                          (letrec*
                                           ((x-cnd7839
                                             (letrec*
                                              ((x7840
                                                (letrec*
                                                 ((x7841
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7841)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7840)))))
                                           (if x-cnd7839
                                             (letrec*
                                              ((g7842
                                                (letrec*
                                                 ((x7852
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7851
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7850
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7849
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7847
                                                   (letrec*
                                                    ((x7848
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7848))))
                                                  (x7845
                                                   (letrec*
                                                    ((x7846
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7846))))
                                                  (x7843
                                                   (letrec*
                                                    ((x7844
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7844)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7852
                                                    x7851
                                                    x7850
                                                    x7849
                                                    x7847
                                                    x7845
                                                    x7843)))))
                                              g7842)
                                             (letrec*
                                              ((g7853
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7853)))))))))))))))))))
                   g7790)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7856))))
                    (g7855
                     (letrec*
                      ((x-cnd7857
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7857
                        #f
                        (letrec*
                         ((x-cnd7858
                           (letrec*
                            ((x7859
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7859 e)))))
                         (if x-cnd7858
                           l
                           (letrec*
                            ((x7860
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7860)))))))))
                   g7855)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7862
                        (letrec*
                         ((x7863
                           (letrec*
                            ((x7864
                              (begin
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7864)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7863)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7862)))))
                   g7861)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x7866
                        (letrec*
                         ((x7867
                           (letrec*
                            ((x7868
                              (begin
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7868)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7867)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7866)))))
                   g7865)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7869
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7869)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x7872
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7872))))
                    (g7871
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7871)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7874
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7874))))
                   g7873)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7876
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7876)))))
                   g7875)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7878
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7878
                           (letrec*
                            ((x7879
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7879)))
                           #f))))
                      (letrec*
                       ((g7880
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7880))))
                   g7877)))
               (cddaar
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
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7884)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7883)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7882)))))
                   g7881)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x-cnd7886
                        (letrec*
                         ((x7887 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7887 c)))))
                      (if x-cnd7886
                        (letrec*
                         ((x7888 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7888)))
                        #f))))
                   g7885)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7891
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7891))))
                    (g7890
                     (letrec*
                      ((x-cnd7892
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7892
                        #f
                        (letrec*
                         ((x-cnd7893
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7894 k)))))
                         (if x-cnd7893
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7895)))))))))
                   g7890)))
               (not (lambda (x) (letrec* ((g7896 (if x #f #t))) g7896)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7897
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7897)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7900
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7900))))
                    (g7899
                     (letrec*
                      ((x-cnd7901
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7901
                        #f
                        (letrec*
                         ((x-cnd7902
                           (letrec*
                            ((x7903
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7903 e)))))
                         (if x-cnd7902
                           l
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7904)))))))))
                   g7899)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7906
                        (letrec*
                         ((x7907
                           (letrec*
                            ((x7908
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7908)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7907)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7906)))))
                   g7905)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7911
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7911))))
                    (g7910
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7912
                             (letrec*
                              ((x-cnd7913
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7913
                                0
                                (letrec*
                                 ((x7914
                                   (letrec*
                                    ((x7915
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7915)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7914)))))))
                           g7912))))
                      (letrec*
                       ((g7916
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7916))))
                   g7910)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7920))))
                    (g7918
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7921))))
                    (g7919
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7922
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7922))))
                   g7919)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7924)))))
                   g7923)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7926
                        (letrec*
                         ((x7927
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7927)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7926)))))
                   g7925)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7930))))
                    (g7929
                     (letrec*
                      ((x-cnd7931
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7931
                        #f
                        (letrec*
                         ((x-cnd7932
                           (letrec*
                            ((x7933
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7933 k)))))
                         (if x-cnd7932
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7934
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7934)))))))))
                   g7929)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7936)))))
                   g7935)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7940))))
                    (g7938
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7941))))
                    (g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7942)))))
                   g7939)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7944
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7944))))
                   g7943)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7948))))
                    (g7946
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7949))))
                    (g7947
                     (letrec*
                      ((x-cnd7950
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7950
                        #t
                        (letrec*
                         ((x-cnd7951
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7951
                           (letrec*
                            ((g7952
                              (letrec*
                               ((x7954
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7954))))
                             (g7953
                              (letrec*
                               ((x7955
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7955)))))
                            g7953)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7947)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7958))))
                    (g7957
                     (letrec*
                      ((x-cnd7959
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7959
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7957)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7963))))
                    (g7961
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7964))))
                    (g7962
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7965
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7965))))
                   g7962)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7967
                        (letrec*
                         ((x7968
                           (letrec*
                            ((x7969
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7969)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7968)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7967)))))
                   g7966)))
               (newline (lambda () (letrec* ((g7970 #f)) g7970)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7971
                     (letrec*
                      ((x7973
                        (letrec*
                         ((x7974
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7974))))
                       (x7972
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7973 x7972)))))
                   g7971)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7977))))
                    (g7976
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7978)))))
                   g7976)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7983))))
                    (g7980
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7984))))
                    (g7981
                     (letrec*
                      ((x7985
                        (letrec*
                         ((x7986
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7986)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7985))))
                    (g7982
                     (letrec*
                      ((x-cnd7987
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7987
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7988
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x7989 x7988)))))))
                   g7982)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x-cnd7991
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7991
                        a
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x7992)))))))
                   g7990)))
               (mappend
                (lambda (xs ys)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x-cnd7994
                        (begin
                          (write '(funapp 1661 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7994
                        ys
                        (letrec*
                         ((x7997
                           (begin
                             (write '(funapp 1665 34))
                             (display "\n")
                             (car xs)))
                          (x7995
                           (letrec*
                            ((x7996
                              (begin
                                (write '(funapp 1667 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1667 56))
                              (display "\n")
                              (mappend x7996 ys)))))
                         (begin
                           (write '(funapp 1668 26))
                           (display "\n")
                           (cons x7997 x7995)))))))
                   g7993)))
               (map-append
                (lambda (f xs)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x-cnd7999
                        (begin
                          (write '(funapp 1675 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7999
                        empty
                        (letrec*
                         ((x8002
                           (letrec*
                            ((x8003
                              (begin
                                (write '(funapp 1679 51))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1679 62))
                              (display "\n")
                              (f x8003))))
                          (x8000
                           (letrec*
                            ((x8001
                              (begin
                                (write '(funapp 1681 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1681 56))
                              (display "\n")
                              (map-append f x8001)))))
                         (begin
                           (write '(funapp 1682 26))
                           (display "\n")
                           (mappend x8002 x8000)))))))
                   g7998))))
              (letrec*
               ((g8004
                 (begin
                   (write '(funapp 1686 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1687 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8007
                          (letrec*
                           ((xj7394
                             (begin
                               (write '(funapp 1691 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1691 37))
                                  (display "\n")
                                  'module))))
                            (xk7395
                             (begin
                               (write '(funapp 1691 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1691 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8008
                              (begin
                                (write '(funapp 1694 27))
                                (display "\n")
                                ((lambda (j7398 k7399 f7400)
                                   (letrec*
                                    ((g8009
                                      (lambda (g7396 g7397)
                                        (letrec*
                                         ((g8010
                                           (letrec*
                                            ((x8020
                                              (begin
                                                (write '(funapp 1701 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8011
                                              (letrec*
                                               ((x8014
                                                 (begin
                                                   (write '(funapp 1705 44))
                                                   (display "\n")
                                                   ((lambda (j7402 k7403 f7404)
                                                      (letrec*
                                                       ((g8015
                                                         (lambda (g7401)
                                                           (letrec*
                                                            ((g8016
                                                              (letrec*
                                                               ((x8019
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1712
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (listof
                                                                    any/c)))
                                                                (x8017
                                                                 (letrec*
                                                                  ((x8018
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1716
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7402
                                                                       k7403
                                                                       g7401))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1720
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7404
                                                                     x8018)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1721
                                                                    56))
                                                                 (display "\n")
                                                                 (x8019
                                                                  j7402
                                                                  k7403
                                                                  x8017)))))
                                                            g8016))))
                                                       g8015))
                                                    j7398
                                                    k7399
                                                    g7396)))
                                                (x8012
                                                 (letrec*
                                                  ((x8013
                                                    (begin
                                                      (write '(funapp 1732 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1733 45))
                                                    (display "\n")
                                                    (x8013
                                                     j7398
                                                     k7399
                                                     g7397)))))
                                               (begin
                                                 (write '(funapp 1734 42))
                                                 (display "\n")
                                                 (f7400 x8014 x8012)))))
                                            (begin
                                              (write '(funapp 1735 39))
                                              (display "\n")
                                              (x8020 j7398 k7399 x8011)))))
                                         g8010))))
                                    g8009))
                                 xj7394
                                 xk7395
                                 map-append))))
                            g8008)))
                         (x8006 (input))
                         (x8005 (input)))
                        (begin
                          (write '(funapp 1744 21))
                          (display "\n")
                          (x8007 x8006 x8005)))
                       (letrec*
                        ((x8023
                          (letrec*
                           ((xj7405
                             (begin
                               (write '(funapp 1748 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1748 37))
                                  (display "\n")
                                  'module))))
                            (xk7406
                             (begin
                               (write '(funapp 1748 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1748 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8024
                              (begin
                                (write '(funapp 1751 27))
                                (display "\n")
                                ((lambda (j7409 k7410 f7411)
                                   (letrec*
                                    ((g8025
                                      (lambda (g7407 g7408)
                                        (letrec*
                                         ((g8026
                                           (letrec*
                                            ((x8032
                                              (begin
                                                (write '(funapp 1758 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8027
                                              (letrec*
                                               ((x8030
                                                 (letrec*
                                                  ((x8031
                                                    (begin
                                                      (write '(funapp 1763 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1764 45))
                                                    (display "\n")
                                                    (x8031
                                                     j7409
                                                     k7410
                                                     g7407))))
                                                (x8028
                                                 (letrec*
                                                  ((x8029
                                                    (begin
                                                      (write '(funapp 1767 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1768 45))
                                                    (display "\n")
                                                    (x8029
                                                     j7409
                                                     k7410
                                                     g7408)))))
                                               (begin
                                                 (write '(funapp 1769 42))
                                                 (display "\n")
                                                 (f7411 x8030 x8028)))))
                                            (begin
                                              (write '(funapp 1770 39))
                                              (display "\n")
                                              (x8032 j7409 k7410 x8027)))))
                                         g8026))))
                                    g8025))
                                 xj7405
                                 xk7406
                                 mappend))))
                            g8024)))
                         (x8022 (input))
                         (x8021 (input)))
                        (begin
                          (write '(funapp 1779 21))
                          (display "\n")
                          (x8023 x8022 x8021)))))))))
               g8004))))
           g7425))))
       g7423)))
    g7422)))
