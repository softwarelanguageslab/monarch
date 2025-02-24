(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7407 #t)) g7407)))
    (meta (lambda (v) (letrec* ((g7408 v)) g7408)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7409
          (letrec*
           ((g7410
             (letrec*
              ((x-e7411 lst))
              (letrec*
               ((v1742 x-e7411))
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
                   ((x-cnd7412
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7412
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
           g7410)))
        g7409)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7413 (lambda (v) (letrec* ((g7414 v)) g7414)))) g7413)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7415
          (letrec*
           ((x7416 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7416)))))
        g7415))))
   (letrec*
    ((g7417
      (letrec*
       ((g7418
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
           ((g7419 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7420
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7421
                     (lambda (k j lst)
                       (letrec*
                        ((g7422
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7423
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7423))
                             lst))))
                        g7422))))
                   g7421)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7424
                     (letrec*
                      ((x-cnd7425
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7425
                        g7263
                        (begin
                          (write '(blame g7261 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7424)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7426
                     (letrec*
                      ((x-cnd7427
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7427
                        g7266
                        (begin
                          (write '(blame g7264 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7426)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7428
                     (letrec*
                      ((x-cnd7429
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7429
                        g7269
                        (begin
                          (write '(blame g7267 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7428)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7430
                     (letrec*
                      ((x-cnd7431
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7432 #t)) g7432)) g7272))))
                      (if x-cnd7431
                        g7272
                        (begin
                          (write '(blame g7270 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7430)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7433
                     (letrec*
                      ((x-cnd7434
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7435 #t)) g7435)) g7275))))
                      (if x-cnd7434
                        g7275
                        (begin
                          (write '(blame g7273 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7433)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7436
                     (letrec*
                      ((x-cnd7437
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7437
                        g7278
                        (begin
                          (write '(blame g7276 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7436)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7438
                     (letrec*
                      ((x-cnd7439
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7439
                        g7281
                        (begin
                          (write '(blame g7279 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7438)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x-cnd7441
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7441
                        g7284
                        (begin
                          (write '(blame g7282 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7440)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7443
                        g7287
                        (begin
                          (write '(blame g7285 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7442)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7444
                     (lambda (k j v)
                       (letrec*
                        ((g7445
                          (letrec*
                           ((x-cnd7446
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7446
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7445))))
                   g7444)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7447
                     (lambda (k j v)
                       (letrec*
                        ((g7448
                          (letrec*
                           ((x-cnd7449
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7449
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7453
                                (letrec*
                                 ((x7454
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7454))))
                               (x7450
                                (letrec*
                                 ((x7452
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7451
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7452 k j x7451)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7453 x7450)))))))
                        g7448))))
                   g7447)))
               (any? (lambda (v) (letrec* ((g7455 #t)) g7455)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x7457
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7457)))))
                   g7456)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7460
                                (letrec*
                                 ((x7461
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7461)))))
                              g7460))
                           g7290))))
                      (if x-cnd7459
                        g7290
                        (begin
                          (write '(blame g7288 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7458)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7462
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7463
                          (letrec*
                           ((x-cnd7464
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7465
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7465))
                                g7293))))
                           (if x-cnd7464
                             g7293
                             (begin
                               (write '(blame g7291 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7463))))
                   g7462)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7466
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7467
                          (letrec*
                           ((x-cnd7468
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7469
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7469))
                                g7296))))
                           (if x-cnd7468
                             g7296
                             (begin
                               (write '(blame g7294 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7467))))
                   g7466)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7470
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7471
                          (letrec*
                           ((x-cnd7472
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7473
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7473))
                                g7299))))
                           (if x-cnd7472
                             g7299
                             (begin
                               (write '(blame g7297 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7471))))
                   g7470)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7474
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7475
                          (letrec*
                           ((x-cnd7476
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7477
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7477))
                                g7302))))
                           (if x-cnd7476
                             g7302
                             (begin
                               (write '(blame g7300 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7475))))
                   g7474)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7478
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7479
                          (letrec*
                           ((x-cnd7480
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7481
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7481))
                                g7305))))
                           (if x-cnd7480
                             g7305
                             (begin
                               (write '(blame g7303 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7479))))
                   g7478)))
               (meta (lambda (v) (letrec* ((g7482 v)) g7482)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7483
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7485
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7486
                                 (letrec*
                                  ((x7487
                                    (letrec*
                                     ((x7489
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7488
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7312 x7489 x7488)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7487)))))
                               g7486))))
                          g7485))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7484
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7484))))))
                  g7483)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7490
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7492
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7493
                                 (letrec*
                                  ((x7494
                                    (letrec*
                                     ((x7496
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7495
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7319 x7496 x7495)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7494)))))
                               g7493))))
                          g7492))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7491
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7491))))))
                  g7490)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7497
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7499
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7500
                                 (letrec*
                                  ((x7501
                                    (letrec*
                                     ((x7503
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7502
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7326 x7503 x7502)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7501)))))
                               g7500))))
                          g7499))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7498
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7498))))))
                  g7497)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7504
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7506
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7507
                                 (letrec*
                                  ((x7508
                                    (letrec*
                                     ((x7510
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7509
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7333 x7510 x7509)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7508)))))
                               g7507))))
                          g7506))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7505
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7505))))))
                  g7504)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7511
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7513
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7514
                                 (letrec*
                                  ((x7515
                                    (letrec*
                                     ((x7517
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7516
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7340 x7517 x7516)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7515)))))
                               g7514))))
                          g7513))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7512
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7512))))))
                  g7511)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7518
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7520
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7521
                                 (letrec*
                                  ((x7522
                                    (letrec*
                                     ((x7524
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7523
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7347 x7524 x7523)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7522)))))
                               g7521))))
                          g7520))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7519
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7519))))))
                  g7518)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7525
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7527
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7528
                                 (letrec*
                                  ((x7529
                                    (letrec*
                                     ((x7531
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7530
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7354 x7531 x7530)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7529)))))
                               g7528))))
                          g7527))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7526
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7526))))))
                  g7525)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7532
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7534
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7535
                                 (letrec*
                                  ((x7536
                                    (letrec*
                                     ((x7538
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7537
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7361 x7538 x7537)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7536)))))
                               g7535))))
                          g7534))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7533
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7533))))))
                  g7532)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7539
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7541
                            (lambda (g7364)
                              (letrec*
                               ((g7542
                                 (letrec*
                                  ((x7543
                                    (letrec*
                                     ((x7544
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7367 x7544)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7543)))))
                               g7542))))
                          g7541))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7540
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7540))))))
                  g7539)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7545
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7547
                            (lambda (g7370)
                              (letrec*
                               ((g7548
                                 (letrec*
                                  ((x7549
                                    (letrec*
                                     ((x7550
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7373 x7550)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7549)))))
                               g7548))))
                          g7547))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7546
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7546))))))
                  g7545)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7551
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7553
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7554
                                 (letrec*
                                  ((x7555
                                    (letrec*
                                     ((x7557
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7556
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7380 x7557 x7556)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7555)))))
                               g7554))))
                          g7553))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7552
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7552))))))
                  g7551)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7558
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7560
                            (lambda (g7383)
                              (letrec*
                               ((g7561
                                 (letrec*
                                  ((x7562
                                    (letrec*
                                     ((x7563
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7386 x7563)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7562)))))
                               g7561))))
                          g7560))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7559
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7559))))))
                  g7558)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7564
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7566
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7567
                                 (letrec*
                                  ((x7568
                                    (letrec*
                                     ((x7570
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7569
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7393 x7570 x7569)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7568)))))
                               g7567))))
                          g7566))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7565
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7565))))))
                  g7564)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7571
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7571)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7572
                     (letrec*
                      ((x7573
                        (letrec*
                         ((x7574
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7574)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7573)))))
                   g7572)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7575
                     (letrec*
                      ((x7578
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7578))))
                    (g7576
                     (letrec*
                      ((x7579
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7579))))
                    (g7577
                     (letrec*
                      ((x-cnd7580
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7580
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7583
                           (letrec*
                            ((x7584
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7584))))
                          (x7581
                           (letrec*
                            ((x7582
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7582)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7583 x7581)))))))
                   g7577)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7585
                     (letrec*
                      ((x7586
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7586)))))
                   g7585)))
               (cadadr
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
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7590)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7589)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7588)))))
                   g7587)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7591
                     (letrec*
                      ((x7592
                        (letrec*
                         ((x7593
                           (letrec*
                            ((x7594
                              (begin
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7594)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7593)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7592)))))
                   g7591)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7598))))
                    (g7596
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7599))))
                    (g7597
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
                       ((g7600
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7601 res))
                       g7601))))
                   g7597)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7603
                        (letrec*
                         ((x7604
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7604)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7603)))))
                   g7602)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (letrec*
                         ((x7607
                           (letrec*
                            ((x7608
                              (begin
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7608)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7607)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7606)))))
                   g7605)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7611))))
                    (g7610
                     (letrec*
                      ((x-cnd7612
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7612
                        #f
                        (letrec*
                         ((x-cnd7613
                           (letrec*
                            ((x7614
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7614 k)))))
                         (if x-cnd7613
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7615
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7615)))))))))
                   g7610)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7617)))))
                   g7616)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7620))))
                    (g7619
                     (letrec*
                      ((x-cnd7621
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7621
                        ""
                        (letrec*
                         ((x7624
                           (letrec*
                            ((x7625
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7625))))
                          (x7622
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7623)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7624 x7622)))))))
                   g7619)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7629))))
                    (g7627
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7630))))
                    (g7628
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7631
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7631))))
                   g7628)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7633
                        (letrec*
                         ((x7634
                           (letrec*
                            ((x7635
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7635)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7634)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7633)))))
                   g7632)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7639))))
                    (g7637
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7640))))
                    (g7638
                     (letrec*
                      ((x-cnd7641
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7641
                        x
                        (letrec*
                         ((x7643
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7642
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7643 x7642)))))))
                   g7638)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7644
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7644)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x-cnd7646
                        (letrec*
                         ((x7647 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7647)))))
                      (if x-cnd7646
                        (letrec*
                         ((x7648 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7648)))
                        #f))))
                   g7645)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7651))))
                    (g7650
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7652
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7653 (if val7245 val7245 #f)))
                             g7653)))))
                       g7652))))
                   g7650)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7655
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7655 9)))))
                      (letrec*
                       ((g7656
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7657
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7657 10)))))
                            (letrec*
                             ((g7658
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7659
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7659 32))))))
                             g7658)))))
                       g7656))))
                   g7654)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7661
                        (letrec*
                         ((x7662
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7662)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7661)))))
                   g7660)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7665))))
                    (g7664
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7664)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7666 #f)) g7666)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7668)))))
                   g7667)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7671
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7671))))
                    (g7670
                     (letrec*
                      ((x-cnd7672
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7672
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7670)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7674
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7675
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7675
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7676
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7677
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7677
                                       (letrec*
                                        ((x-cnd7678
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7678
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7679
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7680
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7680
                                             (letrec*
                                              ((x-cnd7681
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7681
                                                (letrec*
                                                 ((x-cnd7682
                                                   (letrec*
                                                    ((x7684
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7683
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7684 x7683)))))
                                                 (if x-cnd7682
                                                   (letrec*
                                                    ((x7686
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7685
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7686 x7685)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7687
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7688
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7688
                                                (letrec*
                                                 ((x-cnd7689
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7689
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7690
                                                       (letrec*
                                                        ((x-cnd7691
                                                          (letrec*
                                                           ((x7692
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
                                                             (= x7692 n)))))
                                                        (if x-cnd7691
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7693
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
                                                                    ((g7694
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7695
                                                                           (letrec*
                                                                            ((x7697
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
                                                                             (x7696
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
                                                                               x7697
                                                                               x7696)))))
                                                                         (if x-cnd7695
                                                                           (letrec*
                                                                            ((x7698
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
                                                                               x7698)))
                                                                           #f)))))
                                                                    g7694))))
                                                                g7693))))
                                                           (letrec*
                                                            ((g7699
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7699))
                                                          #f))))
                                                     g7690))
                                                   #f))
                                                #f)))))
                                         g7687)))))
                                   g7679)))))
                             g7676)))))
                       g7674))))
                   g7673)))
               (cdaaar
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
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7703)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7702)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7701)))))
                   g7700)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7704
                     (letrec*
                      ((x7705
                        (letrec*
                         ((x7706
                           (letrec*
                            ((x7707
                              (begin
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7707)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7706)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7705)))))
                   g7704)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7708
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7708)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7709
                     (letrec*
                      ((x7711
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7711))))
                    (g7710
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7712
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7713 (if val7254 val7254 #f)))
                             g7713)))))
                       g7712))))
                   g7710)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7714
                     (letrec*
                      ((x7717
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7717))))
                    (g7715
                     (letrec*
                      ((x7718
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7718))))
                    (g7716
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
                       ((g7719
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7720 res))
                       g7720))))
                   g7716)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7721
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7721)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7722
                     (letrec*
                      ((x7725
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7725))))
                    (g7723
                     (letrec*
                      ((x7726
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7726))))
                    (g7724
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7727
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7727))))
                   g7724)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7729
                        (letrec*
                         ((x7730
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7730)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7729)))))
                   g7728)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7732
                        (letrec*
                         ((x7733
                           (letrec*
                            ((x7734
                              (begin
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7734)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7733)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7732)))))
                   g7731)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7736
                        (letrec*
                         ((x7737
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7737)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7736)))))
                   g7735)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7739
                        (letrec*
                         ((x7740
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7740)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7739)))))
                   g7738)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7744))))
                    (g7742
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7745))))
                    (g7743
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7746)))))
                   g7743)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (letrec*
                         ((x7749
                           (letrec*
                            ((x7750
                              (begin
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7750)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7749)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7748)))))
                   g7747)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7753))))
                    (g7752
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7752)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7754
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7754)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7757)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7756)))))
                   g7755)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7758
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7758)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7761))))
                    (g7760
                     (letrec*
                      ((x-cnd7762
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7762
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7765
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7766))))
                          (x7763
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7764)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7765 x7763)))))))
                   g7760)))
               (caaadr
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
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7770)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7769)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7768)))))
                   g7767)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7772
                        (letrec*
                         ((x7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7774)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7773)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7772)))))
                   g7771)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7777))))
                    (g7776
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7778)))))
                   g7776)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7780
                        (letrec*
                         ((x7781
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7782)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7781)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7780)))))
                   g7779)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7786))))
                    (g7784
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7787))))
                    (g7785
                     (letrec*
                      ((x-cnd7788
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7788
                        (letrec*
                         ((g7789
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7789)
                        (letrec*
                         ((x-cnd7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7791)))))
                         (if x-cnd7790
                           (letrec*
                            ((g7792
                              (letrec*
                               ((x7793
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7793)))))
                            g7792)
                           (letrec*
                            ((x-cnd7794
                              (letrec*
                               ((x7795
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7795)))))
                            (if x-cnd7794
                              (letrec*
                               ((g7796
                                 (letrec*
                                  ((x7798
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7797
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7798 x7797)))))
                               g7796)
                              (letrec*
                               ((x-cnd7799
                                 (letrec*
                                  ((x7800
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7800)))))
                               (if x-cnd7799
                                 (letrec*
                                  ((g7801
                                    (letrec*
                                     ((x7804
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7803
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7802
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7804 x7803 x7802)))))
                                  g7801)
                                 (letrec*
                                  ((x-cnd7805
                                    (letrec*
                                     ((x7806
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7806)))))
                                  (if x-cnd7805
                                    (letrec*
                                     ((g7807
                                       (letrec*
                                        ((x7811
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7810
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7809
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7808
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7811 x7810 x7809 x7808)))))
                                     g7807)
                                    (letrec*
                                     ((x-cnd7812
                                       (letrec*
                                        ((x7813
                                          (letrec*
                                           ((x7814
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7814)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7813)))))
                                     (if x-cnd7812
                                       (letrec*
                                        ((g7815
                                          (letrec*
                                           ((x7821
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7820
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7819
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7818
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7816
                                             (letrec*
                                              ((x7817
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7817)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7821
                                              x7820
                                              x7819
                                              x7818
                                              x7816)))))
                                        g7815)
                                       (letrec*
                                        ((x-cnd7822
                                          (letrec*
                                           ((x7823
                                             (letrec*
                                              ((x7824
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7824)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7823)))))
                                        (if x-cnd7822
                                          (letrec*
                                           ((g7825
                                             (letrec*
                                              ((x7833
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7832
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7831
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7830
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7828
                                                (letrec*
                                                 ((x7829
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7829))))
                                               (x7826
                                                (letrec*
                                                 ((x7827
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7827)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7833
                                                 x7832
                                                 x7831
                                                 x7830
                                                 x7828
                                                 x7826)))))
                                           g7825)
                                          (letrec*
                                           ((x-cnd7834
                                             (letrec*
                                              ((x7835
                                                (letrec*
                                                 ((x7836
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7836)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7835)))))
                                           (if x-cnd7834
                                             (letrec*
                                              ((g7837
                                                (letrec*
                                                 ((x7847
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7846
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7845
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7844
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7842
                                                   (letrec*
                                                    ((x7843
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7843))))
                                                  (x7840
                                                   (letrec*
                                                    ((x7841
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7841))))
                                                  (x7838
                                                   (letrec*
                                                    ((x7839
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7839)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7847
                                                    x7846
                                                    x7845
                                                    x7844
                                                    x7842
                                                    x7840
                                                    x7838)))))
                                              g7837)
                                             (letrec*
                                              ((g7848
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7848)))))))))))))))))))
                   g7785)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7851))))
                    (g7850
                     (letrec*
                      ((x-cnd7852
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7852
                        #f
                        (letrec*
                         ((x-cnd7853
                           (letrec*
                            ((x7854
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7854 e)))))
                         (if x-cnd7853
                           l
                           (letrec*
                            ((x7855
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7855)))))))))
                   g7850)))
               (cddddr
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
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7859)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7858)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7857)))))
                   g7856)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x7861
                        (letrec*
                         ((x7862
                           (letrec*
                            ((x7863
                              (begin
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7863)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7862)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7861)))))
                   g7860)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7864
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7864)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x7867
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7867))))
                    (g7866
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7866)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7869
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7869))))
                   g7868)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x7871
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7871)))))
                   g7870)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7873
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7873
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7874)))
                           #f))))
                      (letrec*
                       ((g7875
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7875))))
                   g7872)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x7877
                        (letrec*
                         ((x7878
                           (letrec*
                            ((x7879
                              (begin
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7879)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7878)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7877)))))
                   g7876)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x-cnd7881
                        (letrec*
                         ((x7882 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7882 c)))))
                      (if x-cnd7881
                        (letrec*
                         ((x7883 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7883)))
                        #f))))
                   g7880)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7886))))
                    (g7885
                     (letrec*
                      ((x-cnd7887
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7887
                        #f
                        (letrec*
                         ((x-cnd7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7889 k)))))
                         (if x-cnd7888
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7890
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7890)))))))))
                   g7885)))
               (not (lambda (x) (letrec* ((g7891 (if x #f #t))) g7891)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7892
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7892)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7895))))
                    (g7894
                     (letrec*
                      ((x-cnd7896
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7896
                        #f
                        (letrec*
                         ((x-cnd7897
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7898 e)))))
                         (if x-cnd7897
                           l
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7899)))))))))
                   g7894)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7901
                        (letrec*
                         ((x7902
                           (letrec*
                            ((x7903
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7903)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7902)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7901)))))
                   g7900)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7906))))
                    (g7905
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7907
                             (letrec*
                              ((x-cnd7908
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7908
                                0
                                (letrec*
                                 ((x7909
                                   (letrec*
                                    ((x7910
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7910)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7909)))))))
                           g7907))))
                      (letrec*
                       ((g7911
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7911))))
                   g7905)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7915))))
                    (g7913
                     (letrec*
                      ((x7916
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7916))))
                    (g7914
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7917
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7917))))
                   g7914)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7919)))))
                   g7918)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7921
                        (letrec*
                         ((x7922
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7922)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7921)))))
                   g7920)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7925))))
                    (g7924
                     (letrec*
                      ((x-cnd7926
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7926
                        #f
                        (letrec*
                         ((x-cnd7927
                           (letrec*
                            ((x7928
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7928 k)))))
                         (if x-cnd7927
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7929
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7929)))))))))
                   g7924)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7931)))))
                   g7930)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7935))))
                    (g7933
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7936))))
                    (g7934
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7937)))))
                   g7934)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7939
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7939))))
                   g7938)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7944))))
                    (g7942
                     (letrec*
                      ((x-cnd7945
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7945
                        #t
                        (letrec*
                         ((x-cnd7946
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7946
                           (letrec*
                            ((g7947
                              (letrec*
                               ((x7949
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7949))))
                             (g7948
                              (letrec*
                               ((x7950
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7950)))))
                            g7948)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7942)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7953))))
                    (g7952
                     (letrec*
                      ((x-cnd7954
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7954
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7952)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7958))))
                    (g7956
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7959))))
                    (g7957
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7960
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7960))))
                   g7957)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7962
                        (letrec*
                         ((x7963
                           (letrec*
                            ((x7964
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7964)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7963)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7962)))))
                   g7961)))
               (newline (lambda () (letrec* ((g7965 #f)) g7965)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7968
                        (letrec*
                         ((x7969
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7969))))
                       (x7967
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7968 x7967)))))
                   g7966)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7972))))
                    (g7971
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7973)))))
                   g7971)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7978))))
                    (g7975
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7979))))
                    (g7976
                     (letrec*
                      ((x7980
                        (letrec*
                         ((x7981
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7981)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7980))))
                    (g7977
                     (letrec*
                      ((x-cnd7982
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7982
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7984
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7983
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x7984 x7983)))))))
                   g7977)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x-cnd7986
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7986
                        a
                        (letrec*
                         ((x7987
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x7987)))))))
                   g7985)))
               (STATE/C
                (lambda (g7397 g7398 g7399)
                  (letrec*
                   ((g7988
                     (letrec*
                      ((x-cnd7989
                        (begin
                          (write '(funapp 1662 25))
                          (display "\n")
                          ((lambda (v7396)
                             (letrec*
                              ((g7990
                                (letrec*
                                 ((x-cnd7991
                                   (begin
                                     (write '(funapp 1666 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1666 48))
                                        (display "\n")
                                        'init)
                                      v7396))))
                                 (if x-cnd7991
                                   #t
                                   (letrec*
                                    ((x-cnd7992
                                      (begin
                                        (write '(funapp 1670 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1670 51))
                                           (display "\n")
                                           'opened)
                                         v7396))))
                                    (if x-cnd7992
                                      #t
                                      (letrec*
                                       ((x-cnd7993
                                         (begin
                                           (write '(funapp 1674 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1674 54))
                                              (display "\n")
                                              'closed)
                                            v7396))))
                                       (if x-cnd7993
                                         #t
                                         (begin
                                           (write '(funapp 1677 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1677 44))
                                              (display "\n")
                                              'ignore)
                                            v7396))))))))))
                              g7990))
                           g7399))))
                      (if x-cnd7989
                        g7399
                        (begin
                          (write '(blame g7397 1682 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7397)))))))
                   g7988)))
               (loop
                (lambda ()
                  (letrec*
                   ((g7994
                     (begin (write '(funapp 1693 50)) (display "\n") (loop))))
                   g7994)))
               (readit
                (lambda (st)
                  (letrec*
                   ((g7995
                     (letrec*
                      ((x-cnd7996
                        (begin
                          (write '(funapp 1699 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1699 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd7996
                        (begin
                          (write '(funapp 1700 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1700 44))
                          (display "\n")
                          'ignore)))))
                   g7995)))
               (read_
                (lambda (x st)
                  (letrec*
                   ((g7997
                     (if x
                       (begin
                         (write '(funapp 1704 42))
                         (display "\n")
                         (readit st))
                       st)))
                   g7997)))
               (closeit
                (lambda (st)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x-cnd7999
                        (begin
                          (write '(funapp 1710 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1710 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd7999
                        (letrec*
                         ((g8000
                           (begin
                             (write '(funapp 1712 41))
                             (display "\n")
                             'closed)))
                         g8000)
                        (letrec*
                         ((x-cnd8001
                           (begin
                             (write '(funapp 1714 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1714 45))
                                (display "\n")
                                'ignore)
                              st))))
                         (if x-cnd8001
                           (letrec*
                            ((g8002
                              (begin
                                (write '(funapp 1716 44))
                                (display "\n")
                                'ignore)))
                            g8002)
                           (letrec*
                            ((g8003
                              (begin
                                (write '(funapp 1717 45))
                                (display "\n")
                                (loop)))
                             (g8004 0))
                            g8004)))))))
                   g7998)))
               (close_
                (lambda (x st)
                  (letrec*
                   ((g8005
                     (if x
                       (begin
                         (write '(funapp 1721 42))
                         (display "\n")
                         (closeit st))
                       st)))
                   g8005)))
               (f
                (lambda (x y st)
                  (letrec*
                   ((g8006
                     (letrec*
                      ((x8008
                        (begin
                          (write '(funapp 1725 45))
                          (display "\n")
                          (close_ x st))))
                      (begin
                        (write '(funapp 1725 61))
                        (display "\n")
                        (close_ y x8008))))
                    (g8007
                     (letrec*
                      ((x8009
                        (letrec*
                         ((x8010
                           (begin
                             (write '(funapp 1729 42))
                             (display "\n")
                             (read_ x st))))
                         (begin
                           (write '(funapp 1729 57))
                           (display "\n")
                           (read_ y x8010)))))
                      (begin
                        (write '(funapp 1730 23))
                        (display "\n")
                        (f x y x8009)))))
                   g8007)))
               (next
                (lambda (st)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x-cnd8012
                        (begin
                          (write '(funapp 1737 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1737 42))
                             (display "\n")
                             'init)
                           st))))
                      (if x-cnd8012
                        (begin
                          (write '(funapp 1738 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1738 44))
                          (display "\n")
                          'ignore)))))
                   g8011)))
               (g
                (lambda (b3 x st)
                  (letrec*
                   ((g8013
                     (letrec*
                      ((x-cnd8014
                        (begin
                          (write '(funapp 1745 35))
                          (display "\n")
                          (> b3 0))))
                      (if x-cnd8014
                        (letrec*
                         ((x8015
                           (begin
                             (write '(funapp 1747 42))
                             (display "\n")
                             (next st))))
                         (begin
                           (write '(funapp 1747 54))
                           (display "\n")
                           (f x #t x8015)))
                        (begin
                          (write '(funapp 1748 25))
                          (display "\n")
                          (f x #f st))))))
                   g8013)))
               (main
                (lambda (b2 b3)
                  (letrec*
                   ((g8016
                     (letrec*
                      ((x-cnd8018
                        (begin
                          (write '(funapp 1755 35))
                          (display "\n")
                          (> b2 0))))
                      (if x-cnd8018
                        (begin
                          (write '(funapp 1756 37))
                          (display "\n")
                          (g
                           b3
                           #t
                           (begin
                             (write '(funapp 1756 45))
                             (display "\n")
                             'opened)))
                        (begin
                          (write '(funapp 1756 55))
                          (display "\n")
                          (g
                           b3
                           #f
                           (begin
                             (write '(funapp 1756 63))
                             (display "\n")
                             'init))))))
                    (g8017
                     (begin (write '(funapp 1757 27)) (display "\n") 'unit)))
                   g8017))))
              (letrec*
               ((g8019
                 (begin
                   (write '(funapp 1761 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1762 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8022
                          (letrec*
                           ((xj7400
                             (begin
                               (write '(funapp 1766 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1766 37))
                                  (display "\n")
                                  'module))))
                            (xk7401
                             (begin
                               (write '(funapp 1766 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1766 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8023
                              (begin
                                (write '(funapp 1769 27))
                                (display "\n")
                                ((lambda (j7404 k7405 f7406)
                                   (letrec*
                                    ((g8024
                                      (lambda (g7402 g7403)
                                        (letrec*
                                         ((g8025
                                           (letrec*
                                            ((x8026
                                              (letrec*
                                               ((x8028
                                                 (begin
                                                   (write '(funapp 1779 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7404
                                                    k7405
                                                    g7402)))
                                                (x8027
                                                 (begin
                                                   (write '(funapp 1781 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7404
                                                    k7405
                                                    g7403))))
                                               (begin
                                                 (write '(funapp 1782 42))
                                                 (display "\n")
                                                 (f7406 x8028 x8027)))))
                                            (begin
                                              (write '(funapp 1783 39))
                                              (display "\n")
                                              (any/c j7404 k7405 x8026)))))
                                         g8025))))
                                    g8024))
                                 xj7400
                                 xk7401
                                 main))))
                            g8023)))
                         (x8021 (input))
                         (x8020 (input)))
                        (begin
                          (write '(funapp 1792 21))
                          (display "\n")
                          (x8022 x8021 x8020)))))))))
               g8019))))
           g7420))))
       g7418)))
    g7417)))
