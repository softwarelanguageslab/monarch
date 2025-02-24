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
           ((g7428 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7429
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7430
                     (lambda (k j lst)
                       (letrec*
                        ((g7431
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7432
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7432))
                             lst))))
                        g7431))))
                   g7430)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7433
                     (letrec*
                      ((x-cnd7434
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7434
                        g7263
                        (begin
                          (write '(blame g7261 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7433)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7435
                     (letrec*
                      ((x-cnd7436
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7436
                        g7266
                        (begin
                          (write '(blame g7264 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7435)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7437
                     (letrec*
                      ((x-cnd7438
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7438
                        g7269
                        (begin
                          (write '(blame g7267 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7437)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x-cnd7440
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7441 #t)) g7441)) g7272))))
                      (if x-cnd7440
                        g7272
                        (begin
                          (write '(blame g7270 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7439)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7444 #t)) g7444)) g7275))))
                      (if x-cnd7443
                        g7275
                        (begin
                          (write '(blame g7273 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7442)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x-cnd7446
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7446
                        g7278
                        (begin
                          (write '(blame g7276 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7445)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7448
                        g7281
                        (begin
                          (write '(blame g7279 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7447)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7450
                        g7284
                        (begin
                          (write '(blame g7282 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7449)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7452
                        g7287
                        (begin
                          (write '(blame g7285 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7451)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7453
                     (lambda (k j v)
                       (letrec*
                        ((g7454
                          (letrec*
                           ((x-cnd7455
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7455
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7454))))
                   g7453)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7456
                     (lambda (k j v)
                       (letrec*
                        ((g7457
                          (letrec*
                           ((x-cnd7458
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7458
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7462
                                (letrec*
                                 ((x7463
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7463))))
                               (x7459
                                (letrec*
                                 ((x7461
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7460
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7461 k j x7460)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7462 x7459)))))))
                        g7457))))
                   g7456)))
               (any? (lambda (v) (letrec* ((g7464 #t)) g7464)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x7466
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7466)))))
                   g7465)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x-cnd7468
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7469
                                (letrec*
                                 ((x7470
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7470)))))
                              g7469))
                           g7290))))
                      (if x-cnd7468
                        g7290
                        (begin
                          (write '(blame g7288 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7467)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7471
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7472
                          (letrec*
                           ((x-cnd7473
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7474
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7474))
                                g7293))))
                           (if x-cnd7473
                             g7293
                             (begin
                               (write '(blame g7291 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7472))))
                   g7471)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7475
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7476
                          (letrec*
                           ((x-cnd7477
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7478
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7478))
                                g7296))))
                           (if x-cnd7477
                             g7296
                             (begin
                               (write '(blame g7294 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7476))))
                   g7475)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7479
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7480
                          (letrec*
                           ((x-cnd7481
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7482
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7482))
                                g7299))))
                           (if x-cnd7481
                             g7299
                             (begin
                               (write '(blame g7297 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7480))))
                   g7479)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7483
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7484
                          (letrec*
                           ((x-cnd7485
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7486
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7486))
                                g7302))))
                           (if x-cnd7485
                             g7302
                             (begin
                               (write '(blame g7300 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7484))))
                   g7483)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7487
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7488
                          (letrec*
                           ((x-cnd7489
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7490
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7490))
                                g7305))))
                           (if x-cnd7489
                             g7305
                             (begin
                               (write '(blame g7303 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7488))))
                   g7487)))
               (meta (lambda (v) (letrec* ((g7491 v)) g7491)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7492
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7494
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7495
                                 (letrec*
                                  ((x7496
                                    (letrec*
                                     ((x7498
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7497
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7312 x7498 x7497)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7496)))))
                               g7495))))
                          g7494))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7493
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7493))))))
                  g7492)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7499
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7501
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7502
                                 (letrec*
                                  ((x7503
                                    (letrec*
                                     ((x7505
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7504
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7319 x7505 x7504)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7503)))))
                               g7502))))
                          g7501))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7500
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7500))))))
                  g7499)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7506
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7508
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7509
                                 (letrec*
                                  ((x7510
                                    (letrec*
                                     ((x7512
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7511
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7326 x7512 x7511)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7510)))))
                               g7509))))
                          g7508))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7507
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7507))))))
                  g7506)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7513
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7515
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7516
                                 (letrec*
                                  ((x7517
                                    (letrec*
                                     ((x7519
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7518
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7333 x7519 x7518)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7517)))))
                               g7516))))
                          g7515))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7514
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7514))))))
                  g7513)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7520
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7522
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7523
                                 (letrec*
                                  ((x7524
                                    (letrec*
                                     ((x7526
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7525
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7340 x7526 x7525)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7524)))))
                               g7523))))
                          g7522))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7521
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7521))))))
                  g7520)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7527
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7529
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7530
                                 (letrec*
                                  ((x7531
                                    (letrec*
                                     ((x7533
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7532
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7347 x7533 x7532)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7531)))))
                               g7530))))
                          g7529))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7528
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7528))))))
                  g7527)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7534
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7536
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7537
                                 (letrec*
                                  ((x7538
                                    (letrec*
                                     ((x7540
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7539
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7354 x7540 x7539)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7538)))))
                               g7537))))
                          g7536))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7535
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7535))))))
                  g7534)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7541
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7543
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7544
                                 (letrec*
                                  ((x7545
                                    (letrec*
                                     ((x7547
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7546
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7361 x7547 x7546)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7545)))))
                               g7544))))
                          g7543))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7542
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7542))))))
                  g7541)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7548
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7550
                            (lambda (g7364)
                              (letrec*
                               ((g7551
                                 (letrec*
                                  ((x7552
                                    (letrec*
                                     ((x7553
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7367 x7553)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7552)))))
                               g7551))))
                          g7550))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7549
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7549))))))
                  g7548)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7554
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7556
                            (lambda (g7370)
                              (letrec*
                               ((g7557
                                 (letrec*
                                  ((x7558
                                    (letrec*
                                     ((x7559
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7373 x7559)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7558)))))
                               g7557))))
                          g7556))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7555
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7555))))))
                  g7554)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7560
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7562
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7563
                                 (letrec*
                                  ((x7564
                                    (letrec*
                                     ((x7566
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7565
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7380 x7566 x7565)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7564)))))
                               g7563))))
                          g7562))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7561
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7561))))))
                  g7560)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7567
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7569
                            (lambda (g7383)
                              (letrec*
                               ((g7570
                                 (letrec*
                                  ((x7571
                                    (letrec*
                                     ((x7572
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7386 x7572)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7571)))))
                               g7570))))
                          g7569))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7568
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7568))))))
                  g7567)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7573
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7575
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7576
                                 (letrec*
                                  ((x7577
                                    (letrec*
                                     ((x7579
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7578
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7393 x7579 x7578)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7577)))))
                               g7576))))
                          g7575))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7574
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7574))))))
                  g7573)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7580
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7580)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7581
                     (letrec*
                      ((x7582
                        (letrec*
                         ((x7583
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7583)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7582)))))
                   g7581)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7584
                     (letrec*
                      ((x7587
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7587))))
                    (g7585
                     (letrec*
                      ((x7588
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7588))))
                    (g7586
                     (letrec*
                      ((x-cnd7589
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7589
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7592
                           (letrec*
                            ((x7593
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7593))))
                          (x7590
                           (letrec*
                            ((x7591
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7591)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7592 x7590)))))))
                   g7586)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7595)))))
                   g7594)))
               (cadadr
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
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7599)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7598)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7597)))))
                   g7596)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7601
                        (letrec*
                         ((x7602
                           (letrec*
                            ((x7603
                              (begin
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7603)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7602)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7601)))))
                   g7600)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7607))))
                    (g7605
                     (letrec*
                      ((x7608
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7608))))
                    (g7606
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
                       ((g7609
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7610 res))
                       g7610))))
                   g7606)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7612
                        (letrec*
                         ((x7613
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7613)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7612)))))
                   g7611)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (letrec*
                         ((x7616
                           (letrec*
                            ((x7617
                              (begin
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7617)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7616)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7615)))))
                   g7614)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7620))))
                    (g7619
                     (letrec*
                      ((x-cnd7621
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7621
                        #f
                        (letrec*
                         ((x-cnd7622
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7623 k)))))
                         (if x-cnd7622
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7624
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7624)))))))))
                   g7619)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7626)))))
                   g7625)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7629))))
                    (g7628
                     (letrec*
                      ((x-cnd7630
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7630
                        ""
                        (letrec*
                         ((x7633
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7634))))
                          (x7631
                           (letrec*
                            ((x7632
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7632)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7633 x7631)))))))
                   g7628)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7638))))
                    (g7636
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7639))))
                    (g7637
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7640
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7640))))
                   g7637)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (letrec*
                         ((x7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7644)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7643)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7642)))))
                   g7641)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7648))))
                    (g7646
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7649))))
                    (g7647
                     (letrec*
                      ((x-cnd7650
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7650
                        x
                        (letrec*
                         ((x7652
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7651
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7652 x7651)))))))
                   g7647)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7653
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7653)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x-cnd7655
                        (letrec*
                         ((x7656 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7656)))))
                      (if x-cnd7655
                        (letrec*
                         ((x7657 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7657)))
                        #f))))
                   g7654)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7660))))
                    (g7659
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7661
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7662 (if val7245 val7245 #f)))
                             g7662)))))
                       g7661))))
                   g7659)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7664
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7664 9)))))
                      (letrec*
                       ((g7665
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7666
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7666 10)))))
                            (letrec*
                             ((g7667
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7668
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7668 32))))))
                             g7667)))))
                       g7665))))
                   g7663)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7670
                        (letrec*
                         ((x7671
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7671)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7670)))))
                   g7669)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((x7674
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7674))))
                    (g7673
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7673)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7675 #f)) g7675)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((x7677
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7677)))))
                   g7676)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((x7680
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7680))))
                    (g7679
                     (letrec*
                      ((x-cnd7681
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7681
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7679)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7683
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7684
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7684
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7685
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7686
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7686
                                       (letrec*
                                        ((x-cnd7687
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7687
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7688
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7689
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7689
                                             (letrec*
                                              ((x-cnd7690
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7690
                                                (letrec*
                                                 ((x-cnd7691
                                                   (letrec*
                                                    ((x7693
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7692
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7693 x7692)))))
                                                 (if x-cnd7691
                                                   (letrec*
                                                    ((x7695
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7694
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7695 x7694)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7696
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7697
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7697
                                                (letrec*
                                                 ((x-cnd7698
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7698
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7699
                                                       (letrec*
                                                        ((x-cnd7700
                                                          (letrec*
                                                           ((x7701
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
                                                             (= x7701 n)))))
                                                        (if x-cnd7700
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7702
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
                                                                    ((g7703
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7704
                                                                           (letrec*
                                                                            ((x7706
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
                                                                             (x7705
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
                                                                               x7706
                                                                               x7705)))))
                                                                         (if x-cnd7704
                                                                           (letrec*
                                                                            ((x7707
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
                                                                               x7707)))
                                                                           #f)))))
                                                                    g7703))))
                                                                g7702))))
                                                           (letrec*
                                                            ((g7708
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7708))
                                                          #f))))
                                                     g7699))
                                                   #f))
                                                #f)))))
                                         g7696)))))
                                   g7688)))))
                             g7685)))))
                       g7683))))
                   g7682)))
               (cdaaar
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
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7712)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7711)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7710)))))
                   g7709)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7713
                     (letrec*
                      ((x7714
                        (letrec*
                         ((x7715
                           (letrec*
                            ((x7716
                              (begin
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7716)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7715)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7714)))))
                   g7713)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7717
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7717)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7718
                     (letrec*
                      ((x7720
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7720))))
                    (g7719
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7721
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7722 (if val7254 val7254 #f)))
                             g7722)))))
                       g7721))))
                   g7719)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7723
                     (letrec*
                      ((x7726
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7726))))
                    (g7724
                     (letrec*
                      ((x7727
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7727))))
                    (g7725
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
                       ((g7728
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7729 res))
                       g7729))))
                   g7725)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7730
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7730)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7734
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7734))))
                    (g7732
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7735))))
                    (g7733
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7736
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7736))))
                   g7733)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7738
                        (letrec*
                         ((x7739
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7739)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7738)))))
                   g7737)))
               (cdaddr
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
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7743)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7742)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7741)))))
                   g7740)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (letrec*
                         ((x7746
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7746)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7745)))))
                   g7744)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (letrec*
                         ((x7749
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7749)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7748)))))
                   g7747)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7753))))
                    (g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7754))))
                    (g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7755)))))
                   g7752)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (letrec*
                         ((x7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7759)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7758)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7757)))))
                   g7756)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7762))))
                    (g7761
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7761)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7763
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7763)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7766)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7765)))))
                   g7764)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7767
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7767)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7770))))
                    (g7769
                     (letrec*
                      ((x-cnd7771
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7771
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7775))))
                          (x7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7773)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7774 x7772)))))))
                   g7769)))
               (caaadr
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
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7779)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7778)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7781
                        (letrec*
                         ((x7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7783)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7782)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7781)))))
                   g7780)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7786))))
                    (g7785
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7787)))))
                   g7785)))
               (caadar
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7791)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7790)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7789)))))
                   g7788)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7795))))
                    (g7793
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7796))))
                    (g7794
                     (letrec*
                      ((x-cnd7797
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7797
                        (letrec*
                         ((g7798
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7798)
                        (letrec*
                         ((x-cnd7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7800)))))
                         (if x-cnd7799
                           (letrec*
                            ((g7801
                              (letrec*
                               ((x7802
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7802)))))
                            g7801)
                           (letrec*
                            ((x-cnd7803
                              (letrec*
                               ((x7804
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7804)))))
                            (if x-cnd7803
                              (letrec*
                               ((g7805
                                 (letrec*
                                  ((x7807
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7806
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7807 x7806)))))
                               g7805)
                              (letrec*
                               ((x-cnd7808
                                 (letrec*
                                  ((x7809
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7809)))))
                               (if x-cnd7808
                                 (letrec*
                                  ((g7810
                                    (letrec*
                                     ((x7813
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7812
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7811
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7813 x7812 x7811)))))
                                  g7810)
                                 (letrec*
                                  ((x-cnd7814
                                    (letrec*
                                     ((x7815
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7815)))))
                                  (if x-cnd7814
                                    (letrec*
                                     ((g7816
                                       (letrec*
                                        ((x7820
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7819
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7818
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7817
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7820 x7819 x7818 x7817)))))
                                     g7816)
                                    (letrec*
                                     ((x-cnd7821
                                       (letrec*
                                        ((x7822
                                          (letrec*
                                           ((x7823
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7823)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7822)))))
                                     (if x-cnd7821
                                       (letrec*
                                        ((g7824
                                          (letrec*
                                           ((x7830
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7829
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7828
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7827
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7825
                                             (letrec*
                                              ((x7826
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7826)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7830
                                              x7829
                                              x7828
                                              x7827
                                              x7825)))))
                                        g7824)
                                       (letrec*
                                        ((x-cnd7831
                                          (letrec*
                                           ((x7832
                                             (letrec*
                                              ((x7833
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7833)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7832)))))
                                        (if x-cnd7831
                                          (letrec*
                                           ((g7834
                                             (letrec*
                                              ((x7842
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7841
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7840
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7839
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7837
                                                (letrec*
                                                 ((x7838
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7838))))
                                               (x7835
                                                (letrec*
                                                 ((x7836
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7836)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7842
                                                 x7841
                                                 x7840
                                                 x7839
                                                 x7837
                                                 x7835)))))
                                           g7834)
                                          (letrec*
                                           ((x-cnd7843
                                             (letrec*
                                              ((x7844
                                                (letrec*
                                                 ((x7845
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7845)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7844)))))
                                           (if x-cnd7843
                                             (letrec*
                                              ((g7846
                                                (letrec*
                                                 ((x7856
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7855
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7854
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7853
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7851
                                                   (letrec*
                                                    ((x7852
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7852))))
                                                  (x7849
                                                   (letrec*
                                                    ((x7850
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7850))))
                                                  (x7847
                                                   (letrec*
                                                    ((x7848
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7848)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7856
                                                    x7855
                                                    x7854
                                                    x7853
                                                    x7851
                                                    x7849
                                                    x7847)))))
                                              g7846)
                                             (letrec*
                                              ((g7857
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7857)))))))))))))))))))
                   g7794)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7860))))
                    (g7859
                     (letrec*
                      ((x-cnd7861
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7861
                        #f
                        (letrec*
                         ((x-cnd7862
                           (letrec*
                            ((x7863
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7863 e)))))
                         (if x-cnd7862
                           l
                           (letrec*
                            ((x7864
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7864)))))))))
                   g7859)))
               (cddddr
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
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7868)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7867)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7866)))))
                   g7865)))
               (cadddr
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
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7872)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7871)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7870)))))
                   g7869)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7873
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7873)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x7876
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7876))))
                    (g7875
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7875)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7878
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7878))))
                   g7877)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7880
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7880)))))
                   g7879)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7882
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7882
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7883)))
                           #f))))
                      (letrec*
                       ((g7884
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7884))))
                   g7881)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7886
                        (letrec*
                         ((x7887
                           (letrec*
                            ((x7888
                              (begin
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7888)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7887)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7886)))))
                   g7885)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x-cnd7890
                        (letrec*
                         ((x7891 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7891 c)))))
                      (if x-cnd7890
                        (letrec*
                         ((x7892 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7892)))
                        #f))))
                   g7889)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7895))))
                    (g7894
                     (letrec*
                      ((x-cnd7896
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7896
                        #f
                        (letrec*
                         ((x-cnd7897
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7898 k)))))
                         (if x-cnd7897
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7899)))))))))
                   g7894)))
               (not (lambda (x) (letrec* ((g7900 (if x #f #t))) g7900)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7901
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7901)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7904
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7904))))
                    (g7903
                     (letrec*
                      ((x-cnd7905
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7905
                        #f
                        (letrec*
                         ((x-cnd7906
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7907 e)))))
                         (if x-cnd7906
                           l
                           (letrec*
                            ((x7908
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7908)))))))))
                   g7903)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7910
                        (letrec*
                         ((x7911
                           (letrec*
                            ((x7912
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7912)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7911)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7910)))))
                   g7909)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7915))))
                    (g7914
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7916
                             (letrec*
                              ((x-cnd7917
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7917
                                0
                                (letrec*
                                 ((x7918
                                   (letrec*
                                    ((x7919
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7919)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7918)))))))
                           g7916))))
                      (letrec*
                       ((g7920
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7920))))
                   g7914)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7924))))
                    (g7922
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7925))))
                    (g7923
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7926
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7926))))
                   g7923)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7928)))))
                   g7927)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7930
                        (letrec*
                         ((x7931
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7931)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7930)))))
                   g7929)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7934))))
                    (g7933
                     (letrec*
                      ((x-cnd7935
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7935
                        #f
                        (letrec*
                         ((x-cnd7936
                           (letrec*
                            ((x7937
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7937 k)))))
                         (if x-cnd7936
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7938
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7938)))))))))
                   g7933)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7940)))))
                   g7939)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7944))))
                    (g7942
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7945))))
                    (g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7946)))))
                   g7943)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7948
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7948))))
                   g7947)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7952))))
                    (g7950
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7953))))
                    (g7951
                     (letrec*
                      ((x-cnd7954
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7954
                        #t
                        (letrec*
                         ((x-cnd7955
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7955
                           (letrec*
                            ((g7956
                              (letrec*
                               ((x7958
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7958))))
                             (g7957
                              (letrec*
                               ((x7959
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7959)))))
                            g7957)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7951)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7962))))
                    (g7961
                     (letrec*
                      ((x-cnd7963
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7963
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7961)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7967))))
                    (g7965
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7968))))
                    (g7966
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7969
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7969))))
                   g7966)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7971
                        (letrec*
                         ((x7972
                           (letrec*
                            ((x7973
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7973)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7972)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7971)))))
                   g7970)))
               (newline (lambda () (letrec* ((g7974 #f)) g7974)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7977
                        (letrec*
                         ((x7978
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7978))))
                       (x7976
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7977 x7976)))))
                   g7975)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7981))))
                    (g7980
                     (letrec*
                      ((x7982
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7982)))))
                   g7980)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x7987
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7987))))
                    (g7984
                     (letrec*
                      ((x7988
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7988))))
                    (g7985
                     (letrec*
                      ((x7989
                        (letrec*
                         ((x7990
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7990)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7989))))
                    (g7986
                     (letrec*
                      ((x-cnd7991
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7991
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7993
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7992
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x7993 x7992)))))))
                   g7986)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x-cnd7995
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7995
                        a
                        (letrec*
                         ((x7996
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x7996)))))))
                   g7994)))
               (f
                (lambda (g)
                  (letrec*
                   ((g7997
                     (lambda (x y)
                       (letrec*
                        ((g7998
                          (letrec*
                           ((x8000
                             (begin
                               (write '(funapp 1664 36))
                               (display "\n")
                               (+ x 1)))
                            (x7999
                             (begin
                               (write '(funapp 1664 52))
                               (display "\n")
                               (+ y 1))))
                           (begin
                             (write '(funapp 1665 28))
                             (display "\n")
                             (g x8000 x7999)))))
                        g7998))))
                   g7997)))
               (unzip
                (lambda (x k)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((x-cnd8002
                        (begin
                          (write '(funapp 1673 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd8002
                        (begin
                          (write '(funapp 1675 25))
                          (display "\n")
                          (k 0 0))
                        (letrec*
                         ((x8004
                           (begin
                             (write '(funapp 1677 34))
                             (display "\n")
                             (- x 1)))
                          (x8003
                           (begin
                             (write '(funapp 1677 50))
                             (display "\n")
                             (f k))))
                         (begin
                           (write '(funapp 1678 26))
                           (display "\n")
                           (unzip x8004 x8003)))))))
                   g8001)))
               (zip
                (lambda (x y)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((x-cnd8006
                        (begin
                          (write '(funapp 1685 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd8006
                        (letrec*
                         ((x-cnd8007
                           (begin
                             (write '(funapp 1687 46))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd8007
                           0
                           (begin
                             (write '(funapp 1687 71))
                             (display "\n")
                             'fail)))
                        (letrec*
                         ((x-cnd8008
                           (begin
                             (write '(funapp 1689 38))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd8008
                           (begin
                             (write '(funapp 1691 27))
                             (display "\n")
                             'fail)
                           (letrec*
                            ((x8009
                              (letrec*
                               ((x8011
                                 (begin
                                   (write '(funapp 1695 40))
                                   (display "\n")
                                   (- x 1)))
                                (x8010
                                 (begin
                                   (write '(funapp 1695 56))
                                   (display "\n")
                                   (- y 1))))
                               (begin
                                 (write '(funapp 1696 32))
                                 (display "\n")
                                 (zip x8011 x8010)))))
                            (begin
                              (write '(funapp 1697 29))
                              (display "\n")
                              (+ 1 x8009)))))))))
                   g8005)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8012
                     (begin
                       (write '(funapp 1699 51))
                       (display "\n")
                       (unzip n zip))))
                   g8012))))
              (letrec*
               ((g8013
                 (begin
                   (write '(funapp 1702 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1703 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8015
                          (letrec*
                           ((xj7394
                             (begin
                               (write '(funapp 1707 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1707 37))
                                  (display "\n")
                                  'module))))
                            (xk7395
                             (begin
                               (write '(funapp 1707 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1707 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8016
                              (begin
                                (write '(funapp 1710 27))
                                (display "\n")
                                ((lambda (j7397 k7398 f7399)
                                   (letrec*
                                    ((g8017
                                      (lambda (g7396)
                                        (letrec*
                                         ((g8018
                                           (letrec*
                                            ((x8019
                                              (letrec*
                                               ((x8020
                                                 (begin
                                                   (write '(funapp 1720 44))
                                                   (display "\n")
                                                   ((lambda (j7407 k7408 f7409)
                                                      (letrec*
                                                       ((g8021
                                                         (lambda (g7405 g7406)
                                                           (letrec*
                                                            ((g8022
                                                              (letrec*
                                                               ((x8023
                                                                 (letrec*
                                                                  ((x8025
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1730
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (integer?/c
                                                                       j7407
                                                                       k7408
                                                                       g7405)))
                                                                   (x8024
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1735
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (integer?/c
                                                                       j7407
                                                                       k7408
                                                                       g7406))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1739
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7409
                                                                     x8025
                                                                     x8024)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1742
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7407
                                                                  k7408
                                                                  x8023)))))
                                                            g8022))))
                                                       g8021))
                                                    j7397
                                                    k7398
                                                    g7396))))
                                               (begin
                                                 (write '(funapp 1751 42))
                                                 (display "\n")
                                                 (f7399 x8020)))))
                                            (begin
                                              (write '(funapp 1752 39))
                                              (display "\n")
                                              ((lambda (j7402 k7403 f7404)
                                                 (letrec*
                                                  ((g8026
                                                    (lambda (g7400 g7401)
                                                      (letrec*
                                                       ((g8027
                                                         (letrec*
                                                          ((x8028
                                                            (letrec*
                                                             ((x8030
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1762
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7402
                                                                  k7403
                                                                  g7400)))
                                                              (x8029
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1767
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7402
                                                                  k7403
                                                                  g7401))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1771
                                                                  54))
                                                               (display "\n")
                                                               (f7404
                                                                x8030
                                                                x8029)))))
                                                          (begin
                                                            (write
                                                             '(funapp 1772 51))
                                                            (display "\n")
                                                            (integer?/c
                                                             j7402
                                                             k7403
                                                             x8028)))))
                                                       g8027))))
                                                  g8026))
                                               j7397
                                               k7398
                                               x8019)))))
                                         g8018))))
                                    g8017))
                                 xj7394
                                 xk7395
                                 f))))
                            g8016)))
                         (x8014 (input)))
                        (begin
                          (write '(funapp 1788 21))
                          (display "\n")
                          (x8015 x8014)))
                       (letrec*
                        ((x8032
                          (letrec*
                           ((xj7410
                             (begin
                               (write '(funapp 1792 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1792 37))
                                  (display "\n")
                                  'module))))
                            (xk7411
                             (begin
                               (write '(funapp 1792 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1792 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8033
                              (begin
                                (write '(funapp 1795 27))
                                (display "\n")
                                ((lambda (j7413 k7414 f7415)
                                   (letrec*
                                    ((g8034
                                      (lambda (g7412)
                                        (letrec*
                                         ((g8035
                                           (letrec*
                                            ((x8036
                                              (letrec*
                                               ((x8037
                                                 (begin
                                                   (write '(funapp 1805 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7413
                                                    k7414
                                                    g7412))))
                                               (begin
                                                 (write '(funapp 1806 42))
                                                 (display "\n")
                                                 (f7415 x8037)))))
                                            (begin
                                              (write '(funapp 1807 39))
                                              (display "\n")
                                              (integer?/c
                                               j7413
                                               k7414
                                               x8036)))))
                                         g8035))))
                                    g8034))
                                 xj7410
                                 xk7411
                                 main))))
                            g8033)))
                         (x8031 (input)))
                        (begin
                          (write '(funapp 1815 21))
                          (display "\n")
                          (x8032 x8031)))))))))
               g8013))))
           g7429))))
       g7427)))
    g7426)))
