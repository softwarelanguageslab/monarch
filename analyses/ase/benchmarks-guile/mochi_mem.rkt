(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7415 #t)) g7415)))
    (meta (lambda (v) (letrec* ((g7416 v)) g7416)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7417
          (letrec*
           ((g7418
             (letrec*
              ((x-e7419 lst))
              (letrec*
               ((v1742 x-e7419))
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
                   ((x-cnd7420
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7420
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
           g7418)))
        g7417)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7421 (lambda (v) (letrec* ((g7422 v)) g7422)))) g7421)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7423
          (letrec*
           ((x7424 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7424)))))
        g7423))))
   (letrec*
    ((g7425
      (letrec*
       ((g7426
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
           ((g7427 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7428
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7429
                     (lambda (k j lst)
                       (letrec*
                        ((g7430
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7431
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7431))
                             lst))))
                        g7430))))
                   g7429)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7432
                     (letrec*
                      ((x-cnd7433
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7433
                        g7265
                        (begin
                          (write '(blame g7263 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7432)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7434
                     (letrec*
                      ((x-cnd7435
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7435
                        g7268
                        (begin
                          (write '(blame g7266 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7434)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7436
                     (letrec*
                      ((x-cnd7437
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7437
                        g7271
                        (begin
                          (write '(blame g7269 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7436)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7438
                     (letrec*
                      ((x-cnd7439
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7440 #t)) g7440)) g7274))))
                      (if x-cnd7439
                        g7274
                        (begin
                          (write '(blame g7272 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7438)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7441
                     (letrec*
                      ((x-cnd7442
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7443 #t)) g7443)) g7277))))
                      (if x-cnd7442
                        g7277
                        (begin
                          (write '(blame g7275 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7441)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7445
                        g7280
                        (begin
                          (write '(blame g7278 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7444)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7447
                        g7283
                        (begin
                          (write '(blame g7281 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7446)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7449
                        g7286
                        (begin
                          (write '(blame g7284 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7448)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7451
                        g7289
                        (begin
                          (write '(blame g7287 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7450)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7452
                     (lambda (k j v)
                       (letrec*
                        ((g7453
                          (letrec*
                           ((x-cnd7454
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7454
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7453))))
                   g7452)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7455
                     (lambda (k j v)
                       (letrec*
                        ((g7456
                          (letrec*
                           ((x-cnd7457
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7457
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7461
                                (letrec*
                                 ((x7462
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7462))))
                               (x7458
                                (letrec*
                                 ((x7460
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7459
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7460 k j x7459)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7461 x7458)))))))
                        g7456))))
                   g7455)))
               (any? (lambda (v) (letrec* ((g7463 #t)) g7463)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x7465
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7465)))))
                   g7464)))
               (nonzero?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x-cnd7467
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7468
                                (letrec*
                                 ((x7469
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7469)))))
                              g7468))
                           g7292))))
                      (if x-cnd7467
                        g7292
                        (begin
                          (write '(blame g7290 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7466)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7470
                     (lambda (g7293 g7294 g7295)
                       (letrec*
                        ((g7471
                          (letrec*
                           ((x-cnd7472
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7473
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7473))
                                g7295))))
                           (if x-cnd7472
                             g7295
                             (begin
                               (write '(blame g7293 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7293)))))))
                        g7471))))
                   g7470)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7474
                     (lambda (g7296 g7297 g7298)
                       (letrec*
                        ((g7475
                          (letrec*
                           ((x-cnd7476
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7477
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7477))
                                g7298))))
                           (if x-cnd7476
                             g7298
                             (begin
                               (write '(blame g7296 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7296)))))))
                        g7475))))
                   g7474)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7478
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7479
                          (letrec*
                           ((x-cnd7480
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7481
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7481))
                                g7301))))
                           (if x-cnd7480
                             g7301
                             (begin
                               (write '(blame g7299 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7479))))
                   g7478)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7482
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7483
                          (letrec*
                           ((x-cnd7484
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7485
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7485))
                                g7304))))
                           (if x-cnd7484
                             g7304
                             (begin
                               (write '(blame g7302 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7483))))
                   g7482)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7486
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7487
                          (letrec*
                           ((x-cnd7488
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7489
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7489))
                                g7307))))
                           (if x-cnd7488
                             g7307
                             (begin
                               (write '(blame g7305 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7487))))
                   g7486)))
               (meta (lambda (v) (letrec* ((g7490 v)) g7490)))
               (+
                (letrec*
                 ((xj7308
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7309
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7491
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7312 k7313 f7314)
                         (letrec*
                          ((g7493
                            (lambda (g7310 g7311)
                              (letrec*
                               ((g7494
                                 (letrec*
                                  ((x7495
                                    (letrec*
                                     ((x7497
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7312 k7313 g7310)))
                                      (x7496
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7312 k7313 g7311))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7314 x7497 x7496)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7312 k7313 x7495)))))
                               g7494))))
                          g7493))
                       xj7308
                       xk7309
                       (lambda (a b)
                         (letrec*
                          ((g7492
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7492))))))
                  g7491)))
               (-
                (letrec*
                 ((xj7315
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7316
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7498
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7319 k7320 f7321)
                         (letrec*
                          ((g7500
                            (lambda (g7317 g7318)
                              (letrec*
                               ((g7501
                                 (letrec*
                                  ((x7502
                                    (letrec*
                                     ((x7504
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7319 k7320 g7317)))
                                      (x7503
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7319 k7320 g7318))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7321 x7504 x7503)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7319 k7320 x7502)))))
                               g7501))))
                          g7500))
                       xj7315
                       xk7316
                       (lambda (a b)
                         (letrec*
                          ((g7499
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7499))))))
                  g7498)))
               (*
                (letrec*
                 ((xj7322
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7323
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7505
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7507
                            (lambda (g7324 g7325)
                              (letrec*
                               ((g7508
                                 (letrec*
                                  ((x7509
                                    (letrec*
                                     ((x7511
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7326 k7327 g7324)))
                                      (x7510
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7328 x7511 x7510)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7326 k7327 x7509)))))
                               g7508))))
                          g7507))
                       xj7322
                       xk7323
                       (lambda (a b)
                         (letrec*
                          ((g7506
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7506))))))
                  g7505)))
               (<
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7512
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7514
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7515
                                 (letrec*
                                  ((x7516
                                    (letrec*
                                     ((x7518
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7333 k7334 g7331)))
                                      (x7517
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7335 x7518 x7517)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7333 k7334 x7516)))))
                               g7515))))
                          g7514))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7513
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7513))))))
                  g7512)))
               (>
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7519
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7340 k7341 f7342)
                         (letrec*
                          ((g7521
                            (lambda (g7338 g7339)
                              (letrec*
                               ((g7522
                                 (letrec*
                                  ((x7523
                                    (letrec*
                                     ((x7525
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7340 k7341 g7338)))
                                      (x7524
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7340 k7341 g7339))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7342 x7525 x7524)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7340 k7341 x7523)))))
                               g7522))))
                          g7521))
                       xj7336
                       xk7337
                       (lambda (a b)
                         (letrec*
                          ((g7520
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7520))))))
                  g7519)))
               (<=
                (letrec*
                 ((xj7343
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7344
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7526
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7347 k7348 f7349)
                         (letrec*
                          ((g7528
                            (lambda (g7345 g7346)
                              (letrec*
                               ((g7529
                                 (letrec*
                                  ((x7530
                                    (letrec*
                                     ((x7532
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7347 k7348 g7345)))
                                      (x7531
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7347 k7348 g7346))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7349 x7532 x7531)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7347 k7348 x7530)))))
                               g7529))))
                          g7528))
                       xj7343
                       xk7344
                       (lambda (a b)
                         (letrec*
                          ((g7527
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7527))))))
                  g7526)))
               (>=
                (letrec*
                 ((xj7350
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7351
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7533
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7354 k7355 f7356)
                         (letrec*
                          ((g7535
                            (lambda (g7352 g7353)
                              (letrec*
                               ((g7536
                                 (letrec*
                                  ((x7537
                                    (letrec*
                                     ((x7539
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7354 k7355 g7352)))
                                      (x7538
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7354 k7355 g7353))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7356 x7539 x7538)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7354 k7355 x7537)))))
                               g7536))))
                          g7535))
                       xj7350
                       xk7351
                       (lambda (a b)
                         (letrec*
                          ((g7534
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7534))))))
                  g7533)))
               (/
                (letrec*
                 ((xj7357
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7358
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7540
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7361 k7362 f7363)
                         (letrec*
                          ((g7542
                            (lambda (g7359 g7360)
                              (letrec*
                               ((g7543
                                 (letrec*
                                  ((x7544
                                    (letrec*
                                     ((x7546
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7361 k7362 g7359)))
                                      (x7545
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7361 k7362 g7360))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7363 x7546 x7545)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7361 k7362 x7544)))))
                               g7543))))
                          g7542))
                       xj7357
                       xk7358
                       (lambda (a b)
                         (letrec*
                          ((g7541
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7541))))))
                  g7540)))
               (car
                (letrec*
                 ((xj7364
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7365
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7547
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7549
                            (lambda (g7366)
                              (letrec*
                               ((g7550
                                 (letrec*
                                  ((x7551
                                    (letrec*
                                     ((x7552
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7369 x7552)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7367 k7368 x7551)))))
                               g7550))))
                          g7549))
                       xj7364
                       xk7365
                       (lambda (p)
                         (letrec*
                          ((g7548
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7548))))))
                  g7547)))
               (cdr
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7553
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7555
                            (lambda (g7372)
                              (letrec*
                               ((g7556
                                 (letrec*
                                  ((x7557
                                    (letrec*
                                     ((x7558
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7375 x7558)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7557)))))
                               g7556))))
                          g7555))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7554
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7554))))))
                  g7553)))
               (cons
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7559
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7380 k7381 f7382)
                         (letrec*
                          ((g7561
                            (lambda (g7378 g7379)
                              (letrec*
                               ((g7562
                                 (letrec*
                                  ((x7563
                                    (letrec*
                                     ((x7565
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7380 k7381 g7378)))
                                      (x7564
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7380 k7381 g7379))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7382 x7565 x7564)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7380 k7381 x7563)))))
                               g7562))))
                          g7561))
                       xj7376
                       xk7377
                       (lambda (a b)
                         (letrec*
                          ((g7560
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7560))))))
                  g7559)))
               (vector-ref
                (letrec*
                 ((xj7383
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7384
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7566
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7568
                            (lambda (g7385)
                              (letrec*
                               ((g7569
                                 (letrec*
                                  ((x7570
                                    (letrec*
                                     ((x7571
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7388 x7571)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7386 k7387 x7570)))))
                               g7569))))
                          g7568))
                       xj7383
                       xk7384
                       (lambda (v i)
                         (letrec*
                          ((g7567
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7567))))))
                  g7566)))
               (vector-set!
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7572
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7393 k7394 f7395)
                         (letrec*
                          ((g7574
                            (lambda (g7391 g7392)
                              (letrec*
                               ((g7575
                                 (letrec*
                                  ((x7576
                                    (letrec*
                                     ((x7578
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7393 k7394 g7391)))
                                      (x7577
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7393 k7394 g7392))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7395 x7578 x7577)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7393 k7394 x7576)))))
                               g7575))))
                          g7574))
                       xj7389
                       xk7390
                       (lambda (vec i v)
                         (letrec*
                          ((g7573
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7573))))))
                  g7572)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7579
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7579)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7580
                     (letrec*
                      ((x7581
                        (letrec*
                         ((x7582
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7582)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7581)))))
                   g7580)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7583
                     (letrec*
                      ((x7586
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7586))))
                    (g7584
                     (letrec*
                      ((x7587
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7587))))
                    (g7585
                     (letrec*
                      ((x-cnd7588
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7588
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7591
                           (letrec*
                            ((x7592
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7592))))
                          (x7589
                           (letrec*
                            ((x7590
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7590)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7591 x7589)))))))
                   g7585)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7593
                     (letrec*
                      ((x7594
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7594)))))
                   g7593)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x7596
                        (letrec*
                         ((x7597
                           (letrec*
                            ((x7598
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7598)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7597)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7596)))))
                   g7595)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7600
                        (letrec*
                         ((x7601
                           (letrec*
                            ((x7602
                              (begin
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7602)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7601)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7600)))))
                   g7599)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7606
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7606))))
                    (g7604
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7607))))
                    (g7605
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
                       ((g7608
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7609 res))
                       g7609))))
                   g7605)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7611
                        (letrec*
                         ((x7612
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7612)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7611)))))
                   g7610)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (letrec*
                         ((x7615
                           (letrec*
                            ((x7616
                              (begin
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7616)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7615)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7614)))))
                   g7613)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7619))))
                    (g7618
                     (letrec*
                      ((x-cnd7620
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7620
                        #f
                        (letrec*
                         ((x-cnd7621
                           (letrec*
                            ((x7622
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7622 k)))))
                         (if x-cnd7621
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7623)))))))))
                   g7618)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7625)))))
                   g7624)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7628))))
                    (g7627
                     (letrec*
                      ((x-cnd7629
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7629
                        ""
                        (letrec*
                         ((x7632
                           (letrec*
                            ((x7633
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7633))))
                          (x7630
                           (letrec*
                            ((x7631
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7631)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7632 x7630)))))))
                   g7627)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7637
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7637))))
                    (g7635
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7638))))
                    (g7636
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7639
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7639))))
                   g7636)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7641
                        (letrec*
                         ((x7642
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7643)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7642)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7641)))))
                   g7640)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7647))))
                    (g7645
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7648))))
                    (g7646
                     (letrec*
                      ((x-cnd7649
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7649
                        x
                        (letrec*
                         ((x7651
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7650
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7651 x7650)))))))
                   g7646)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7652
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7652)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x-cnd7654
                        (letrec*
                         ((x7655 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7655)))))
                      (if x-cnd7654
                        (letrec*
                         ((x7656 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7656)))
                        #f))))
                   g7653)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7659))))
                    (g7658
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7660
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7661 (if val7245 val7245 #f)))
                             g7661)))))
                       g7660))))
                   g7658)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7663
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7663 9)))))
                      (letrec*
                       ((g7664
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7665
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7665 10)))))
                            (letrec*
                             ((g7666
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7667
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7667 32))))))
                             g7666)))))
                       g7664))))
                   g7662)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x7669
                        (letrec*
                         ((x7670
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7670)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7669)))))
                   g7668)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7673))))
                    (g7672
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7672)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7674 #f)) g7674)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7676)))))
                   g7675)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7679))))
                    (g7678
                     (letrec*
                      ((x-cnd7680
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7680
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7678)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7682
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7683
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7683
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7684
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7685
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7685
                                       (letrec*
                                        ((x-cnd7686
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7686
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7687
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7688
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7688
                                             (letrec*
                                              ((x-cnd7689
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7689
                                                (letrec*
                                                 ((x-cnd7690
                                                   (letrec*
                                                    ((x7692
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7691
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7692 x7691)))))
                                                 (if x-cnd7690
                                                   (letrec*
                                                    ((x7694
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7693
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7694 x7693)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7695
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7696
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7696
                                                (letrec*
                                                 ((x-cnd7697
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7697
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7698
                                                       (letrec*
                                                        ((x-cnd7699
                                                          (letrec*
                                                           ((x7700
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
                                                             (= x7700 n)))))
                                                        (if x-cnd7699
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7701
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
                                                                    ((g7702
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7703
                                                                           (letrec*
                                                                            ((x7705
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
                                                                             (x7704
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
                                                                               x7705
                                                                               x7704)))))
                                                                         (if x-cnd7703
                                                                           (letrec*
                                                                            ((x7706
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
                                                                               x7706)))
                                                                           #f)))))
                                                                    g7702))))
                                                                g7701))))
                                                           (letrec*
                                                            ((g7707
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7707))
                                                          #f))))
                                                     g7698))
                                                   #f))
                                                #f)))))
                                         g7695)))))
                                   g7687)))))
                             g7684)))))
                       g7682))))
                   g7681)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7708
                     (letrec*
                      ((x7709
                        (letrec*
                         ((x7710
                           (letrec*
                            ((x7711
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7711)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7710)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7709)))))
                   g7708)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7712
                     (letrec*
                      ((x7713
                        (letrec*
                         ((x7714
                           (letrec*
                            ((x7715
                              (begin
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7715)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7714)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7713)))))
                   g7712)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7716
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7716)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7717
                     (letrec*
                      ((x7719
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7719))))
                    (g7718
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7720
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7721 (if val7254 val7254 #f)))
                             g7721)))))
                       g7720))))
                   g7718)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7722
                     (letrec*
                      ((x7725
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7725))))
                    (g7723
                     (letrec*
                      ((x7726
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7726))))
                    (g7724
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
                       ((g7727
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7728 res))
                       g7728))))
                   g7724)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7729
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7729)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7733
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7733))))
                    (g7731
                     (letrec*
                      ((x7734
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7734))))
                    (g7732
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7735
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7735))))
                   g7732)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7737
                        (letrec*
                         ((x7738
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7738)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7737)))))
                   g7736)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7740
                        (letrec*
                         ((x7741
                           (letrec*
                            ((x7742
                              (begin
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7742)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7741)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7740)))))
                   g7739)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7745)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7744)))))
                   g7743)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (letrec*
                         ((x7748
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7748)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7747)))))
                   g7746)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7752))))
                    (g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7753))))
                    (g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7754)))))
                   g7751)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7758)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7757)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7756)))))
                   g7755)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7761))))
                    (g7760
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7760)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7762
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7762)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7764
                        (letrec*
                         ((x7765
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7765)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7764)))))
                   g7763)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7766
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7766)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7769
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7769))))
                    (g7768
                     (letrec*
                      ((x-cnd7770
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7770
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7774))))
                          (x7771
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7772)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7773 x7771)))))))
                   g7768)))
               (caaadr
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
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7778)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7777)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (cddadr
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
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7782)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7781)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7780)))))
                   g7779)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7785))))
                    (g7784
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7786)))))
                   g7784)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7788
                        (letrec*
                         ((x7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7790)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7789)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7788)))))
                   g7787)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7794))))
                    (g7792
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7795))))
                    (g7793
                     (letrec*
                      ((x-cnd7796
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7796
                        (letrec*
                         ((g7797
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7797)
                        (letrec*
                         ((x-cnd7798
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7799)))))
                         (if x-cnd7798
                           (letrec*
                            ((g7800
                              (letrec*
                               ((x7801
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7801)))))
                            g7800)
                           (letrec*
                            ((x-cnd7802
                              (letrec*
                               ((x7803
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7803)))))
                            (if x-cnd7802
                              (letrec*
                               ((g7804
                                 (letrec*
                                  ((x7806
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7805
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7806 x7805)))))
                               g7804)
                              (letrec*
                               ((x-cnd7807
                                 (letrec*
                                  ((x7808
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7808)))))
                               (if x-cnd7807
                                 (letrec*
                                  ((g7809
                                    (letrec*
                                     ((x7812
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7811
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7810
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7812 x7811 x7810)))))
                                  g7809)
                                 (letrec*
                                  ((x-cnd7813
                                    (letrec*
                                     ((x7814
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7814)))))
                                  (if x-cnd7813
                                    (letrec*
                                     ((g7815
                                       (letrec*
                                        ((x7819
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7818
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7817
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7816
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7819 x7818 x7817 x7816)))))
                                     g7815)
                                    (letrec*
                                     ((x-cnd7820
                                       (letrec*
                                        ((x7821
                                          (letrec*
                                           ((x7822
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7822)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7821)))))
                                     (if x-cnd7820
                                       (letrec*
                                        ((g7823
                                          (letrec*
                                           ((x7829
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7828
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7827
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7826
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7824
                                             (letrec*
                                              ((x7825
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7825)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7829
                                              x7828
                                              x7827
                                              x7826
                                              x7824)))))
                                        g7823)
                                       (letrec*
                                        ((x-cnd7830
                                          (letrec*
                                           ((x7831
                                             (letrec*
                                              ((x7832
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7832)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7831)))))
                                        (if x-cnd7830
                                          (letrec*
                                           ((g7833
                                             (letrec*
                                              ((x7841
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7840
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7839
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7838
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7836
                                                (letrec*
                                                 ((x7837
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7837))))
                                               (x7834
                                                (letrec*
                                                 ((x7835
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7835)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7841
                                                 x7840
                                                 x7839
                                                 x7838
                                                 x7836
                                                 x7834)))))
                                           g7833)
                                          (letrec*
                                           ((x-cnd7842
                                             (letrec*
                                              ((x7843
                                                (letrec*
                                                 ((x7844
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7844)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7843)))))
                                           (if x-cnd7842
                                             (letrec*
                                              ((g7845
                                                (letrec*
                                                 ((x7855
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7854
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7853
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7852
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7850
                                                   (letrec*
                                                    ((x7851
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7851))))
                                                  (x7848
                                                   (letrec*
                                                    ((x7849
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7849))))
                                                  (x7846
                                                   (letrec*
                                                    ((x7847
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7847)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7855
                                                    x7854
                                                    x7853
                                                    x7852
                                                    x7850
                                                    x7848
                                                    x7846)))))
                                              g7845)
                                             (letrec*
                                              ((g7856
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7856)))))))))))))))))))
                   g7793)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7859))))
                    (g7858
                     (letrec*
                      ((x-cnd7860
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7860
                        #f
                        (letrec*
                         ((x-cnd7861
                           (letrec*
                            ((x7862
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7862 e)))))
                         (if x-cnd7861
                           l
                           (letrec*
                            ((x7863
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7863)))))))))
                   g7858)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7865
                        (letrec*
                         ((x7866
                           (letrec*
                            ((x7867
                              (begin
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7867)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7866)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7865)))))
                   g7864)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7869
                        (letrec*
                         ((x7870
                           (letrec*
                            ((x7871
                              (begin
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7871)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7870)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7869)))))
                   g7868)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7872
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7872)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7875
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7875))))
                    (g7874
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7874)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7877
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7877))))
                   g7876)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7879)))))
                   g7878)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7881
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7881
                           (letrec*
                            ((x7882
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7882)))
                           #f))))
                      (letrec*
                       ((g7883
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7883))))
                   g7880)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7885
                        (letrec*
                         ((x7886
                           (letrec*
                            ((x7887
                              (begin
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7887)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7886)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7885)))))
                   g7884)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x-cnd7889
                        (letrec*
                         ((x7890 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7890 c)))))
                      (if x-cnd7889
                        (letrec*
                         ((x7891 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7891)))
                        #f))))
                   g7888)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7894))))
                    (g7893
                     (letrec*
                      ((x-cnd7895
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7895
                        #f
                        (letrec*
                         ((x-cnd7896
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7897 k)))))
                         (if x-cnd7896
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7898)))))))))
                   g7893)))
               (not (lambda (x) (letrec* ((g7899 (if x #f #t))) g7899)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7900
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7900)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7903))))
                    (g7902
                     (letrec*
                      ((x-cnd7904
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7904
                        #f
                        (letrec*
                         ((x-cnd7905
                           (letrec*
                            ((x7906
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7906 e)))))
                         (if x-cnd7905
                           l
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7907)))))))))
                   g7902)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7909
                        (letrec*
                         ((x7910
                           (letrec*
                            ((x7911
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7911)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7910)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7909)))))
                   g7908)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7914))))
                    (g7913
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7915
                             (letrec*
                              ((x-cnd7916
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7916
                                0
                                (letrec*
                                 ((x7917
                                   (letrec*
                                    ((x7918
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7918)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7917)))))))
                           g7915))))
                      (letrec*
                       ((g7919
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7919))))
                   g7913)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7923))))
                    (g7921
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7924))))
                    (g7922
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7925
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7925))))
                   g7922)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7927)))))
                   g7926)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7929
                        (letrec*
                         ((x7930
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7930)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7929)))))
                   g7928)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7933))))
                    (g7932
                     (letrec*
                      ((x-cnd7934
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7934
                        #f
                        (letrec*
                         ((x-cnd7935
                           (letrec*
                            ((x7936
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7936 k)))))
                         (if x-cnd7935
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7937
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7937)))))))))
                   g7932)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7939)))))
                   g7938)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7944))))
                    (g7942
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7945)))))
                   g7942)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7947
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7947))))
                   g7946)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7951))))
                    (g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7952))))
                    (g7950
                     (letrec*
                      ((x-cnd7953
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7953
                        #t
                        (letrec*
                         ((x-cnd7954
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7954
                           (letrec*
                            ((g7955
                              (letrec*
                               ((x7957
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7957))))
                             (g7956
                              (letrec*
                               ((x7958
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7958)))))
                            g7956)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7950)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7961))))
                    (g7960
                     (letrec*
                      ((x-cnd7962
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7962
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7960)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7966))))
                    (g7964
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7967))))
                    (g7965
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7968
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7968))))
                   g7965)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7970
                        (letrec*
                         ((x7971
                           (letrec*
                            ((x7972
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7972)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7971)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7970)))))
                   g7969)))
               (newline (lambda () (letrec* ((g7973 #f)) g7973)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x7976
                        (letrec*
                         ((x7977
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7977))))
                       (x7975
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7976 x7975)))))
                   g7974)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7978
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7980))))
                    (g7979
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7981)))))
                   g7979)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7982
                     (letrec*
                      ((x7986
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7986))))
                    (g7983
                     (letrec*
                      ((x7987
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7987))))
                    (g7984
                     (letrec*
                      ((x7988
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7989)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7988))))
                    (g7985
                     (letrec*
                      ((x-cnd7990
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7990
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7991
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x7992 x7991)))))))
                   g7985)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x-cnd7994
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7994
                        a
                        (letrec*
                         ((x7995
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x7995)))))))
                   g7993)))
               (mk-list
                (lambda (n x)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x-cnd7997
                        (begin
                          (write '(funapp 1661 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd7997
                        empty
                        (letrec*
                         ((x7998
                           (letrec*
                            ((x7999
                              (begin
                                (write '(funapp 1666 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1666 55))
                              (display "\n")
                              (mk-list x7999 x)))))
                         (begin
                           (write '(funapp 1667 26))
                           (display "\n")
                           (cons x x7998)))))))
                   g7996)))
               (mem
                (lambda (x xs)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((x-cnd8001
                        (begin
                          (write '(funapp 1674 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8001
                        #f
                        (letrec*
                         ((val7261
                           (letrec*
                            ((x8002
                              (begin
                                (write '(funapp 1678 53))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1678 64))
                              (display "\n")
                              (= x x8002)))))
                         (letrec*
                          ((g8003
                            (if val7261
                              val7261
                              (letrec*
                               ((x8004
                                 (begin
                                   (write '(funapp 1683 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1683 59))
                                 (display "\n")
                                 (mem x x8004))))))
                          g8003))))))
                   g8000))))
              (letrec*
               ((g8005
                 (begin
                   (write '(funapp 1688 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1689 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((xj7396
                          (begin
                            (write '(funapp 1691 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1691 34))
                               (display "\n")
                               'module))))
                         (xk7397
                          (begin
                            (write '(funapp 1691 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1691 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8006
                           (begin
                             (write '(funapp 1694 24))
                             (display "\n")
                             ((lambda (j7400 k7401 f7402)
                                (letrec*
                                 ((g8007
                                   (lambda (g7398 g7399)
                                     (letrec*
                                      ((g8008
                                        (letrec*
                                         ((x7403
                                           (begin
                                             (write '(funapp 1701 44))
                                             (display "\n")
                                             (integer?/c j7400 k7401 g7398)))
                                          (x7404
                                           (begin
                                             (write '(funapp 1702 44))
                                             (display "\n")
                                             (integer?/c j7400 k7401 g7399))))
                                         (letrec*
                                          ((g8009
                                            (letrec*
                                             ((x8011
                                               (begin
                                                 (write '(funapp 1707 42))
                                                 (display "\n")
                                                 ((lambda (_ x)
                                                    (letrec*
                                                     ((g8012
                                                       (letrec*
                                                        ((x8017
                                                          (begin
                                                            (write
                                                             '(funapp 1711 57))
                                                            (display "\n")
                                                            (listof
                                                             integer?/c))))
                                                        (begin
                                                          (write
                                                           '(funapp 1712 49))
                                                          (display "\n")
                                                          (and/c
                                                           x8017
                                                           (lambda (g7405
                                                                    g7406
                                                                    g7407)
                                                             (letrec*
                                                              ((g8013
                                                                (letrec*
                                                                 ((x-cnd8014
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        1719
                                                                        58))
                                                                     (display
                                                                      "\n")
                                                                     ((lambda (l)
                                                                        (letrec*
                                                                         ((g8015
                                                                           (letrec*
                                                                            ((val7262
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1724
                                                                                   67))
                                                                                (display
                                                                                 "\n")
                                                                                (empty?
                                                                                 l))))
                                                                            (letrec*
                                                                             ((g8016
                                                                               (if val7262
                                                                                 val7262
                                                                                 (begin
                                                                                   (write
                                                                                    '(funapp
                                                                                      1729
                                                                                      70))
                                                                                   (display
                                                                                    "\n")
                                                                                   (member
                                                                                    x
                                                                                    l)))))
                                                                             g8016))))
                                                                         g8015))
                                                                      g7407))))
                                                                 (if x-cnd8014
                                                                   g7407
                                                                   (begin
                                                                     (write
                                                                      '(blame
                                                                        g7405
                                                                        1737
                                                                        57))
                                                                     (display
                                                                      "\n")
                                                                     (error
                                                                      (format
                                                                       "contract violation, blaming ~a~%"
                                                                       g7405)))))))
                                                              g8013)))))))
                                                     g8012))
                                                  x7403
                                                  x7404)))
                                              (x8010
                                               (begin
                                                 (write '(funapp 1752 48))
                                                 (display "\n")
                                                 (f7402 x7403 x7404))))
                                             (begin
                                               (write '(funapp 1753 40))
                                               (display "\n")
                                               (x8011 j7400 k7401 x8010)))))
                                          g8009))))
                                      g8008))))
                                 g8007))
                              xj7396
                              xk7397
                              mk-list))))
                         g8006))
                       (letrec*
                        ((x8020
                          (letrec*
                           ((xj7408
                             (begin
                               (write '(funapp 1764 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1764 37))
                                  (display "\n")
                                  'module))))
                            (xk7409
                             (begin
                               (write '(funapp 1764 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1764 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8021
                              (begin
                                (write '(funapp 1767 27))
                                (display "\n")
                                ((lambda (j7412 k7413 f7414)
                                   (letrec*
                                    ((g8022
                                      (lambda (g7410 g7411)
                                        (letrec*
                                         ((g8023
                                           (letrec*
                                            ((x8024
                                              (letrec*
                                               ((x8027
                                                 (begin
                                                   (write '(funapp 1777 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7412
                                                    k7413
                                                    g7410)))
                                                (x8025
                                                 (letrec*
                                                  ((x8026
                                                    (begin
                                                      (write '(funapp 1780 53))
                                                      (display "\n")
                                                      (listof integer?/c))))
                                                  (begin
                                                    (write '(funapp 1781 45))
                                                    (display "\n")
                                                    (x8026
                                                     j7412
                                                     k7413
                                                     g7411)))))
                                               (begin
                                                 (write '(funapp 1782 42))
                                                 (display "\n")
                                                 (f7414 x8027 x8025)))))
                                            (begin
                                              (write '(funapp 1783 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7412
                                               k7413
                                               x8024)))))
                                         g8023))))
                                    g8022))
                                 xj7408
                                 xk7409
                                 mem))))
                            g8021)))
                         (x8019 (input))
                         (x8018 (input)))
                        (begin
                          (write '(funapp 1792 21))
                          (display "\n")
                          (x8020 x8019 x8018)))))))))
               g8005))))
           g7428))))
       g7426)))
    g7425)))
