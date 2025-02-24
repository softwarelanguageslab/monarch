(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7406 #t)) g7406)))
    (meta (lambda (v) (letrec* ((g7407 v)) g7407)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7408
          (letrec*
           ((g7409
             (letrec*
              ((x-e7410 lst))
              (letrec*
               ((v1742 x-e7410))
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
                   ((x-cnd7411
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7411
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
           g7409)))
        g7408)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7412 (lambda (v) (letrec* ((g7413 v)) g7413)))) g7412)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7414
          (letrec*
           ((x7415 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7415)))))
        g7414))))
   (letrec*
    ((g7416
      (letrec*
       ((g7417
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
           ((g7418 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7419
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7420
                     (lambda (k j lst)
                       (letrec*
                        ((g7421
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7422
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7422))
                             lst))))
                        g7421))))
                   g7420)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7423
                     (letrec*
                      ((x-cnd7424
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7424
                        g7263
                        (begin
                          (write '(blame g7261 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7423)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7425
                     (letrec*
                      ((x-cnd7426
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7426
                        g7266
                        (begin
                          (write '(blame g7264 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7425)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7427
                     (letrec*
                      ((x-cnd7428
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7428
                        g7269
                        (begin
                          (write '(blame g7267 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7427)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7429
                     (letrec*
                      ((x-cnd7430
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7431 #t)) g7431)) g7272))))
                      (if x-cnd7430
                        g7272
                        (begin
                          (write '(blame g7270 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7429)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7432
                     (letrec*
                      ((x-cnd7433
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7434 #t)) g7434)) g7275))))
                      (if x-cnd7433
                        g7275
                        (begin
                          (write '(blame g7273 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7432)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7435
                     (letrec*
                      ((x-cnd7436
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7436
                        g7278
                        (begin
                          (write '(blame g7276 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7435)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7437
                     (letrec*
                      ((x-cnd7438
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7438
                        g7281
                        (begin
                          (write '(blame g7279 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7437)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x-cnd7440
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7440
                        g7284
                        (begin
                          (write '(blame g7282 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7439)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7441
                     (letrec*
                      ((x-cnd7442
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7442
                        g7287
                        (begin
                          (write '(blame g7285 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7441)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7443
                     (lambda (k j v)
                       (letrec*
                        ((g7444
                          (letrec*
                           ((x-cnd7445
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7445
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7444))))
                   g7443)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7446
                     (lambda (k j v)
                       (letrec*
                        ((g7447
                          (letrec*
                           ((x-cnd7448
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7448
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7452
                                (letrec*
                                 ((x7453
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7453))))
                               (x7449
                                (letrec*
                                 ((x7451
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7450
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7451 k j x7450)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7452 x7449)))))))
                        g7447))))
                   g7446)))
               (any? (lambda (v) (letrec* ((g7454 #t)) g7454)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x7456
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7456)))))
                   g7455)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7459
                                (letrec*
                                 ((x7460
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7460)))))
                              g7459))
                           g7290))))
                      (if x-cnd7458
                        g7290
                        (begin
                          (write '(blame g7288 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7457)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7461
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7462
                          (letrec*
                           ((x-cnd7463
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7464
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7464))
                                g7293))))
                           (if x-cnd7463
                             g7293
                             (begin
                               (write '(blame g7291 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7462))))
                   g7461)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7465
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7466
                          (letrec*
                           ((x-cnd7467
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7468
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7468))
                                g7296))))
                           (if x-cnd7467
                             g7296
                             (begin
                               (write '(blame g7294 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7466))))
                   g7465)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7469
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7470
                          (letrec*
                           ((x-cnd7471
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7472
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7472))
                                g7299))))
                           (if x-cnd7471
                             g7299
                             (begin
                               (write '(blame g7297 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7470))))
                   g7469)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7473
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7474
                          (letrec*
                           ((x-cnd7475
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7476
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7476))
                                g7302))))
                           (if x-cnd7475
                             g7302
                             (begin
                               (write '(blame g7300 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7474))))
                   g7473)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7477
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7478
                          (letrec*
                           ((x-cnd7479
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7480
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7480))
                                g7305))))
                           (if x-cnd7479
                             g7305
                             (begin
                               (write '(blame g7303 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7478))))
                   g7477)))
               (meta (lambda (v) (letrec* ((g7481 v)) g7481)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7482
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7484
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7485
                                 (letrec*
                                  ((x7486
                                    (letrec*
                                     ((x7488
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7487
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7312 x7488 x7487)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7486)))))
                               g7485))))
                          g7484))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7483
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7483))))))
                  g7482)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7489
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7491
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7492
                                 (letrec*
                                  ((x7493
                                    (letrec*
                                     ((x7495
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7494
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7319 x7495 x7494)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7493)))))
                               g7492))))
                          g7491))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7490
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7490))))))
                  g7489)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7496
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7498
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7499
                                 (letrec*
                                  ((x7500
                                    (letrec*
                                     ((x7502
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7501
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7326 x7502 x7501)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7500)))))
                               g7499))))
                          g7498))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7497
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7497))))))
                  g7496)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7503
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7505
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7506
                                 (letrec*
                                  ((x7507
                                    (letrec*
                                     ((x7509
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7508
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7333 x7509 x7508)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7507)))))
                               g7506))))
                          g7505))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7504
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7504))))))
                  g7503)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7510
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7512
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7513
                                 (letrec*
                                  ((x7514
                                    (letrec*
                                     ((x7516
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7515
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7340 x7516 x7515)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7514)))))
                               g7513))))
                          g7512))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7511
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7511))))))
                  g7510)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7517
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7519
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7520
                                 (letrec*
                                  ((x7521
                                    (letrec*
                                     ((x7523
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7522
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7347 x7523 x7522)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7521)))))
                               g7520))))
                          g7519))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7518
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7518))))))
                  g7517)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7524
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7526
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7527
                                 (letrec*
                                  ((x7528
                                    (letrec*
                                     ((x7530
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7529
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7354 x7530 x7529)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7528)))))
                               g7527))))
                          g7526))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7525
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7525))))))
                  g7524)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7531
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7533
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7534
                                 (letrec*
                                  ((x7535
                                    (letrec*
                                     ((x7537
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7536
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7361 x7537 x7536)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7535)))))
                               g7534))))
                          g7533))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7532
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7532))))))
                  g7531)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7538
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7540
                            (lambda (g7364)
                              (letrec*
                               ((g7541
                                 (letrec*
                                  ((x7542
                                    (letrec*
                                     ((x7543
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7367 x7543)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7542)))))
                               g7541))))
                          g7540))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7539
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7539))))))
                  g7538)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7544
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7546
                            (lambda (g7370)
                              (letrec*
                               ((g7547
                                 (letrec*
                                  ((x7548
                                    (letrec*
                                     ((x7549
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7373 x7549)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7548)))))
                               g7547))))
                          g7546))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7545
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7545))))))
                  g7544)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7550
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7552
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7553
                                 (letrec*
                                  ((x7554
                                    (letrec*
                                     ((x7556
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7555
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7380 x7556 x7555)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7554)))))
                               g7553))))
                          g7552))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7551
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7551))))))
                  g7550)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7557
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7559
                            (lambda (g7383)
                              (letrec*
                               ((g7560
                                 (letrec*
                                  ((x7561
                                    (letrec*
                                     ((x7562
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7386 x7562)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7561)))))
                               g7560))))
                          g7559))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7558
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7558))))))
                  g7557)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7563
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7565
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7566
                                 (letrec*
                                  ((x7567
                                    (letrec*
                                     ((x7569
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7568
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7393 x7569 x7568)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7567)))))
                               g7566))))
                          g7565))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7564
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7564))))))
                  g7563)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7570
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7570)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7571
                     (letrec*
                      ((x7572
                        (letrec*
                         ((x7573
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7573)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7572)))))
                   g7571)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7574
                     (letrec*
                      ((x7577
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7577))))
                    (g7575
                     (letrec*
                      ((x7578
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7578))))
                    (g7576
                     (letrec*
                      ((x-cnd7579
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7579
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7582
                           (letrec*
                            ((x7583
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7583))))
                          (x7580
                           (letrec*
                            ((x7581
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7581)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7582 x7580)))))))
                   g7576)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7584
                     (letrec*
                      ((x7585
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7585)))))
                   g7584)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7586
                     (letrec*
                      ((x7587
                        (letrec*
                         ((x7588
                           (letrec*
                            ((x7589
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7589)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7588)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7587)))))
                   g7586)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7590
                     (letrec*
                      ((x7591
                        (letrec*
                         ((x7592
                           (letrec*
                            ((x7593
                              (begin
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7593)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7592)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7591)))))
                   g7590)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7597))))
                    (g7595
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7598))))
                    (g7596
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
                       ((g7599
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7600 res))
                       g7600))))
                   g7596)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7602
                        (letrec*
                         ((x7603
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7603)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7602)))))
                   g7601)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7605
                        (letrec*
                         ((x7606
                           (letrec*
                            ((x7607
                              (begin
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7607)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7606)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7605)))))
                   g7604)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7610
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7610))))
                    (g7609
                     (letrec*
                      ((x-cnd7611
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7611
                        #f
                        (letrec*
                         ((x-cnd7612
                           (letrec*
                            ((x7613
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7613 k)))))
                         (if x-cnd7612
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7614
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7614)))))))))
                   g7609)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7616)))))
                   g7615)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7619))))
                    (g7618
                     (letrec*
                      ((x-cnd7620
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7620
                        ""
                        (letrec*
                         ((x7623
                           (letrec*
                            ((x7624
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7624))))
                          (x7621
                           (letrec*
                            ((x7622
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7622)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7623 x7621)))))))
                   g7618)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7628))))
                    (g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7629))))
                    (g7627
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7630
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7630))))
                   g7627)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7632
                        (letrec*
                         ((x7633
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7634)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7633)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7632)))))
                   g7631)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7638))))
                    (g7636
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7639))))
                    (g7637
                     (letrec*
                      ((x-cnd7640
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7640
                        x
                        (letrec*
                         ((x7642
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7641
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7642 x7641)))))))
                   g7637)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7643
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7643)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x-cnd7645
                        (letrec*
                         ((x7646 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7646)))))
                      (if x-cnd7645
                        (letrec*
                         ((x7647 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7647)))
                        #f))))
                   g7644)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7650))))
                    (g7649
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7651
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7652 (if val7245 val7245 #f)))
                             g7652)))))
                       g7651))))
                   g7649)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7654
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7654 9)))))
                      (letrec*
                       ((g7655
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7656
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7656 10)))))
                            (letrec*
                             ((g7657
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7658
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7658 32))))))
                             g7657)))))
                       g7655))))
                   g7653)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7660
                        (letrec*
                         ((x7661
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7661)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7660)))))
                   g7659)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7664))))
                    (g7663
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7663)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7665 #f)) g7665)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7667)))))
                   g7666)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7670))))
                    (g7669
                     (letrec*
                      ((x-cnd7671
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7671
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7669)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7673
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7674
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7674
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7675
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7676
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7676
                                       (letrec*
                                        ((x-cnd7677
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7677
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7678
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7679
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7679
                                             (letrec*
                                              ((x-cnd7680
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7680
                                                (letrec*
                                                 ((x-cnd7681
                                                   (letrec*
                                                    ((x7683
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7682
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7683 x7682)))))
                                                 (if x-cnd7681
                                                   (letrec*
                                                    ((x7685
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7684
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7685 x7684)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7686
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7687
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7687
                                                (letrec*
                                                 ((x-cnd7688
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7688
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7689
                                                       (letrec*
                                                        ((x-cnd7690
                                                          (letrec*
                                                           ((x7691
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
                                                             (= x7691 n)))))
                                                        (if x-cnd7690
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7692
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
                                                                    ((g7693
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7694
                                                                           (letrec*
                                                                            ((x7696
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
                                                                             (x7695
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
                                                                               x7696
                                                                               x7695)))))
                                                                         (if x-cnd7694
                                                                           (letrec*
                                                                            ((x7697
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
                                                                               x7697)))
                                                                           #f)))))
                                                                    g7693))))
                                                                g7692))))
                                                           (letrec*
                                                            ((g7698
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7698))
                                                          #f))))
                                                     g7689))
                                                   #f))
                                                #f)))))
                                         g7686)))))
                                   g7678)))))
                             g7675)))))
                       g7673))))
                   g7672)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7699
                     (letrec*
                      ((x7700
                        (letrec*
                         ((x7701
                           (letrec*
                            ((x7702
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7702)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7701)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7700)))))
                   g7699)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7703
                     (letrec*
                      ((x7704
                        (letrec*
                         ((x7705
                           (letrec*
                            ((x7706
                              (begin
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7706)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7705)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7704)))))
                   g7703)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7707
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7707)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7708
                     (letrec*
                      ((x7710
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7710))))
                    (g7709
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7711
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7712 (if val7254 val7254 #f)))
                             g7712)))))
                       g7711))))
                   g7709)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7713
                     (letrec*
                      ((x7716
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7716))))
                    (g7714
                     (letrec*
                      ((x7717
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7717))))
                    (g7715
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
                       ((g7718
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7719 res))
                       g7719))))
                   g7715)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7720
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7720)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7721
                     (letrec*
                      ((x7724
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7724))))
                    (g7722
                     (letrec*
                      ((x7725
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7725))))
                    (g7723
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7726
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7726))))
                   g7723)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((x7728
                        (letrec*
                         ((x7729
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7729)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7728)))))
                   g7727)))
               (cdaddr
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
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7733)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7732)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7731)))))
                   g7730)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7735
                        (letrec*
                         ((x7736
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7736)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7735)))))
                   g7734)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7738
                        (letrec*
                         ((x7739
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7739)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7738)))))
                   g7737)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7743))))
                    (g7741
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7744))))
                    (g7742
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7745)))))
                   g7742)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7749)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7748)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7747)))))
                   g7746)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7752))))
                    (g7751
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7751)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7753
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7753)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7755
                        (letrec*
                         ((x7756
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7756)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7755)))))
                   g7754)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7757
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7757)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7760))))
                    (g7759
                     (letrec*
                      ((x-cnd7761
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7761
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7765))))
                          (x7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7763)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7764 x7762)))))))
                   g7759)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7767
                        (letrec*
                         ((x7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7769)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7768)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7767)))))
                   g7766)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7773)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7772)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7771)))))
                   g7770)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7776))))
                    (g7775
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7777)))))
                   g7775)))
               (caadar
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7781)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7780)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7779)))))
                   g7778)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7785))))
                    (g7783
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7786))))
                    (g7784
                     (letrec*
                      ((x-cnd7787
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7787
                        (letrec*
                         ((g7788
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7788)
                        (letrec*
                         ((x-cnd7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7790)))))
                         (if x-cnd7789
                           (letrec*
                            ((g7791
                              (letrec*
                               ((x7792
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7792)))))
                            g7791)
                           (letrec*
                            ((x-cnd7793
                              (letrec*
                               ((x7794
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7794)))))
                            (if x-cnd7793
                              (letrec*
                               ((g7795
                                 (letrec*
                                  ((x7797
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7796
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7797 x7796)))))
                               g7795)
                              (letrec*
                               ((x-cnd7798
                                 (letrec*
                                  ((x7799
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7799)))))
                               (if x-cnd7798
                                 (letrec*
                                  ((g7800
                                    (letrec*
                                     ((x7803
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7802
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7801
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7803 x7802 x7801)))))
                                  g7800)
                                 (letrec*
                                  ((x-cnd7804
                                    (letrec*
                                     ((x7805
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7805)))))
                                  (if x-cnd7804
                                    (letrec*
                                     ((g7806
                                       (letrec*
                                        ((x7810
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7809
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7808
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7807
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7810 x7809 x7808 x7807)))))
                                     g7806)
                                    (letrec*
                                     ((x-cnd7811
                                       (letrec*
                                        ((x7812
                                          (letrec*
                                           ((x7813
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7813)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7812)))))
                                     (if x-cnd7811
                                       (letrec*
                                        ((g7814
                                          (letrec*
                                           ((x7820
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7819
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7818
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7817
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7815
                                             (letrec*
                                              ((x7816
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7816)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7820
                                              x7819
                                              x7818
                                              x7817
                                              x7815)))))
                                        g7814)
                                       (letrec*
                                        ((x-cnd7821
                                          (letrec*
                                           ((x7822
                                             (letrec*
                                              ((x7823
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7823)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7822)))))
                                        (if x-cnd7821
                                          (letrec*
                                           ((g7824
                                             (letrec*
                                              ((x7832
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7831
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7830
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7829
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7827
                                                (letrec*
                                                 ((x7828
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7828))))
                                               (x7825
                                                (letrec*
                                                 ((x7826
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7826)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7832
                                                 x7831
                                                 x7830
                                                 x7829
                                                 x7827
                                                 x7825)))))
                                           g7824)
                                          (letrec*
                                           ((x-cnd7833
                                             (letrec*
                                              ((x7834
                                                (letrec*
                                                 ((x7835
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7835)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7834)))))
                                           (if x-cnd7833
                                             (letrec*
                                              ((g7836
                                                (letrec*
                                                 ((x7846
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7845
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7844
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7843
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7841
                                                   (letrec*
                                                    ((x7842
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7842))))
                                                  (x7839
                                                   (letrec*
                                                    ((x7840
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7840))))
                                                  (x7837
                                                   (letrec*
                                                    ((x7838
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7838)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7846
                                                    x7845
                                                    x7844
                                                    x7843
                                                    x7841
                                                    x7839
                                                    x7837)))))
                                              g7836)
                                             (letrec*
                                              ((g7847
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7847)))))))))))))))))))
                   g7784)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7850))))
                    (g7849
                     (letrec*
                      ((x-cnd7851
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7851
                        #f
                        (letrec*
                         ((x-cnd7852
                           (letrec*
                            ((x7853
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7853 e)))))
                         (if x-cnd7852
                           l
                           (letrec*
                            ((x7854
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7854)))))))))
                   g7849)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x7856
                        (letrec*
                         ((x7857
                           (letrec*
                            ((x7858
                              (begin
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7858)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7857)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7856)))))
                   g7855)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((x7860
                        (letrec*
                         ((x7861
                           (letrec*
                            ((x7862
                              (begin
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7862)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7861)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7860)))))
                   g7859)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7863
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7863)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7866
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7866))))
                    (g7865
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7865)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7868
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7868))))
                   g7867)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7870
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7870)))))
                   g7869)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7872
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7872
                           (letrec*
                            ((x7873
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7873)))
                           #f))))
                      (letrec*
                       ((g7874
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7874))))
                   g7871)))
               (cddaar
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
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7878)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7877)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7876)))))
                   g7875)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x-cnd7880
                        (letrec*
                         ((x7881 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7881 c)))))
                      (if x-cnd7880
                        (letrec*
                         ((x7882 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7882)))
                        #f))))
                   g7879)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((x7885
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7885))))
                    (g7884
                     (letrec*
                      ((x-cnd7886
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7886
                        #f
                        (letrec*
                         ((x-cnd7887
                           (letrec*
                            ((x7888
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7888 k)))))
                         (if x-cnd7887
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7889)))))))))
                   g7884)))
               (not (lambda (x) (letrec* ((g7890 (if x #f #t))) g7890)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7891
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7891)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7894))))
                    (g7893
                     (letrec*
                      ((x-cnd7895
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7895
                        #f
                        (letrec*
                         ((x-cnd7896
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7897 e)))))
                         (if x-cnd7896
                           l
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7898)))))))))
                   g7893)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7900
                        (letrec*
                         ((x7901
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7902)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7901)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7900)))))
                   g7899)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7905
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7905))))
                    (g7904
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7906
                             (letrec*
                              ((x-cnd7907
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7907
                                0
                                (letrec*
                                 ((x7908
                                   (letrec*
                                    ((x7909
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7909)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7908)))))))
                           g7906))))
                      (letrec*
                       ((g7910
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7910))))
                   g7904)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7914))))
                    (g7912
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7915))))
                    (g7913
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7916
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7916))))
                   g7913)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7918)))))
                   g7917)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7920
                        (letrec*
                         ((x7921
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7921)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7920)))))
                   g7919)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7924))))
                    (g7923
                     (letrec*
                      ((x-cnd7925
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7925
                        #f
                        (letrec*
                         ((x-cnd7926
                           (letrec*
                            ((x7927
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7927 k)))))
                         (if x-cnd7926
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7928
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7928)))))))))
                   g7923)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7930)))))
                   g7929)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7934))))
                    (g7932
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7935))))
                    (g7933
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7936)))))
                   g7933)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7938
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7938))))
                   g7937)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((x-cnd7944
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7944
                        #t
                        (letrec*
                         ((x-cnd7945
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7945
                           (letrec*
                            ((g7946
                              (letrec*
                               ((x7948
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7948))))
                             (g7947
                              (letrec*
                               ((x7949
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7949)))))
                            g7947)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7941)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7952))))
                    (g7951
                     (letrec*
                      ((x-cnd7953
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7953
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7951)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7957))))
                    (g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7958))))
                    (g7956
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7959
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7959))))
                   g7956)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7961
                        (letrec*
                         ((x7962
                           (letrec*
                            ((x7963
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7963)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7962)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7961)))))
                   g7960)))
               (newline (lambda () (letrec* ((g7964 #f)) g7964)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7967
                        (letrec*
                         ((x7968
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7968))))
                       (x7966
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7967 x7966)))))
                   g7965)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7971))))
                    (g7970
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7972)))))
                   g7970)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7977))))
                    (g7974
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7978))))
                    (g7975
                     (letrec*
                      ((x7979
                        (letrec*
                         ((x7980
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7980)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7979))))
                    (g7976
                     (letrec*
                      ((x-cnd7981
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7981
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7983
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7982
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x7983 x7982)))))))
                   g7976)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x-cnd7985
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7985
                        a
                        (letrec*
                         ((x7986
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x7986)))))))
                   g7984)))
               (zip
                (lambda (xs ys)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x-cnd7988
                        (letrec*
                         ((x7990
                           (begin
                             (write '(funapp 1663 34))
                             (display "\n")
                             (empty? xs)))
                          (x7989
                           (begin
                             (write '(funapp 1663 54))
                             (display "\n")
                             (empty? ys))))
                         (begin
                           (write '(funapp 1664 26))
                           (display "\n")
                           (and x7990 x7989)))))
                      (if x-cnd7988
                        (letrec* ((g7991 empty)) g7991)
                        (letrec*
                         ((x-cnd7992
                           (letrec*
                            ((x7994
                              (begin
                                (write '(funapp 1670 37))
                                (display "\n")
                                (cons? xs)))
                             (x7993
                              (begin
                                (write '(funapp 1670 56))
                                (display "\n")
                                (cons? ys))))
                            (begin
                              (write '(funapp 1671 29))
                              (display "\n")
                              (and x7994 x7993)))))
                         (if x-cnd7992
                           (letrec*
                            ((g7995
                              (letrec*
                               ((x7999
                                 (letrec*
                                  ((x8001
                                    (begin
                                      (write '(funapp 1678 43))
                                      (display "\n")
                                      (car xs)))
                                   (x8000
                                    (begin
                                      (write '(funapp 1678 60))
                                      (display "\n")
                                      (car ys))))
                                  (begin
                                    (write '(funapp 1679 35))
                                    (display "\n")
                                    (cons x8001 x8000))))
                                (x7996
                                 (letrec*
                                  ((x7998
                                    (begin
                                      (write '(funapp 1682 43))
                                      (display "\n")
                                      (cdr xs)))
                                   (x7997
                                    (begin
                                      (write '(funapp 1682 60))
                                      (display "\n")
                                      (cdr ys))))
                                  (begin
                                    (write '(funapp 1683 35))
                                    (display "\n")
                                    (zip x7998 x7997)))))
                               (begin
                                 (write '(funapp 1684 32))
                                 (display "\n")
                                 (cons x7999 x7996)))))
                            g7995)
                           (letrec*
                            ((g8002
                              (begin
                                (write '(funapp 1686 44))
                                (display "\n")
                                'fail)))
                            g8002)))))))
                   g7987)))
               (mk-list
                (lambda (n)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x-cnd8004
                        (begin
                          (write '(funapp 1693 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd8004
                        empty
                        (letrec*
                         ((x8005
                           (letrec*
                            ((x8006
                              (begin
                                (write '(funapp 1697 51))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1697 61))
                              (display "\n")
                              (mk-list x8006)))))
                         (begin
                           (write '(funapp 1698 26))
                           (display "\n")
                           (cons n x8005)))))))
                   g8003)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((xs
                        (begin
                          (write '(funapp 1705 28))
                          (display "\n")
                          (mk-list n))))
                      (letrec*
                       ((g8008
                         (begin
                           (write '(funapp 1706 40))
                           (display "\n")
                           (zip xs xs))))
                       g8008))))
                   g8007))))
              (letrec*
               ((g8009
                 (begin
                   (write '(funapp 1710 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1711 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8011
                          (letrec*
                           ((xj7394
                             (begin
                               (write '(funapp 1715 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1715 37))
                                  (display "\n")
                                  'module))))
                            (xk7395
                             (begin
                               (write '(funapp 1715 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1715 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8012
                              (begin
                                (write '(funapp 1718 27))
                                (display "\n")
                                ((lambda (j7397 k7398 f7399)
                                   (letrec*
                                    ((g8013
                                      (lambda (g7396)
                                        (letrec*
                                         ((g8014
                                           (letrec*
                                            ((x8017
                                              (begin
                                                (write '(funapp 1725 47))
                                                (display "\n")
                                                (listof integer?/c)))
                                             (x8015
                                              (letrec*
                                               ((x8016
                                                 (begin
                                                   (write '(funapp 1729 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7397
                                                    k7398
                                                    g7396))))
                                               (begin
                                                 (write '(funapp 1730 42))
                                                 (display "\n")
                                                 (f7399 x8016)))))
                                            (begin
                                              (write '(funapp 1731 39))
                                              (display "\n")
                                              (x8017 j7397 k7398 x8015)))))
                                         g8014))))
                                    g8013))
                                 xj7394
                                 xk7395
                                 mk-list))))
                            g8012)))
                         (x8010 (input)))
                        (begin
                          (write '(funapp 1739 21))
                          (display "\n")
                          (x8011 x8010)))
                       (letrec*
                        ((x8019
                          (letrec*
                           ((xj7400
                             (begin
                               (write '(funapp 1743 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1743 37))
                                  (display "\n")
                                  'module))))
                            (xk7401
                             (begin
                               (write '(funapp 1743 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1743 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8020
                              (begin
                                (write '(funapp 1746 27))
                                (display "\n")
                                ((lambda (j7403 k7404 f7405)
                                   (letrec*
                                    ((g8021
                                      (lambda (g7402)
                                        (letrec*
                                         ((g8022
                                           (letrec*
                                            ((x8025
                                              (letrec*
                                               ((x8026
                                                 (begin
                                                   (write '(funapp 1756 44))
                                                   (display "\n")
                                                   (cons/c
                                                    integer?/c
                                                    integer?/c))))
                                               (begin
                                                 (write '(funapp 1757 42))
                                                 (display "\n")
                                                 (listof x8026))))
                                             (x8023
                                              (letrec*
                                               ((x8024
                                                 (begin
                                                   (write '(funapp 1761 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7403
                                                    k7404
                                                    g7402))))
                                               (begin
                                                 (write '(funapp 1762 42))
                                                 (display "\n")
                                                 (f7405 x8024)))))
                                            (begin
                                              (write '(funapp 1763 39))
                                              (display "\n")
                                              (x8025 j7403 k7404 x8023)))))
                                         g8022))))
                                    g8021))
                                 xj7400
                                 xk7401
                                 main))))
                            g8020)))
                         (x8018 (input)))
                        (begin
                          (write '(funapp 1771 21))
                          (display "\n")
                          (x8019 x8018)))))))))
               g8009))))
           g7419))))
       g7417)))
    g7416)))
