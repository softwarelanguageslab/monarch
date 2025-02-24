(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7401 #t)) g7401)))
    (meta (lambda (v) (letrec* ((g7402 v)) g7402)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7403
          (letrec*
           ((g7404
             (letrec*
              ((x-e7405 lst))
              (letrec*
               ((v1742 x-e7405))
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
                   ((x-cnd7406
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7406
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
           g7404)))
        g7403)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7407 (lambda (v) (letrec* ((g7408 v)) g7408)))) g7407)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7409
          (letrec*
           ((x7410 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7410)))))
        g7409))))
   (letrec*
    ((g7411
      (letrec*
       ((g7412
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
           ((g7413 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7414
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7415
                     (lambda (k j lst)
                       (letrec*
                        ((g7416
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7417
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7417))
                             lst))))
                        g7416))))
                   g7415)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7418
                     (letrec*
                      ((x-cnd7419
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7419
                        g7263
                        (begin
                          (write '(blame g7261 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7418)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7420
                     (letrec*
                      ((x-cnd7421
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7421
                        g7266
                        (begin
                          (write '(blame g7264 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7420)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7422
                     (letrec*
                      ((x-cnd7423
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7423
                        g7269
                        (begin
                          (write '(blame g7267 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7422)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7424
                     (letrec*
                      ((x-cnd7425
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7426 #t)) g7426)) g7272))))
                      (if x-cnd7425
                        g7272
                        (begin
                          (write '(blame g7270 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7424)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7427
                     (letrec*
                      ((x-cnd7428
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7429 #t)) g7429)) g7275))))
                      (if x-cnd7428
                        g7275
                        (begin
                          (write '(blame g7273 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7427)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7430
                     (letrec*
                      ((x-cnd7431
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7431
                        g7278
                        (begin
                          (write '(blame g7276 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7430)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7432
                     (letrec*
                      ((x-cnd7433
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7433
                        g7281
                        (begin
                          (write '(blame g7279 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7432)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7434
                     (letrec*
                      ((x-cnd7435
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7435
                        g7284
                        (begin
                          (write '(blame g7282 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7434)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7436
                     (letrec*
                      ((x-cnd7437
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7437
                        g7287
                        (begin
                          (write '(blame g7285 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7436)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7438
                     (lambda (k j v)
                       (letrec*
                        ((g7439
                          (letrec*
                           ((x-cnd7440
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7440
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7439))))
                   g7438)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7441
                     (lambda (k j v)
                       (letrec*
                        ((g7442
                          (letrec*
                           ((x-cnd7443
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7443
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7447
                                (letrec*
                                 ((x7448
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7448))))
                               (x7444
                                (letrec*
                                 ((x7446
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7445
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7446 k j x7445)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7447 x7444)))))))
                        g7442))))
                   g7441)))
               (any? (lambda (v) (letrec* ((g7449 #t)) g7449)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x7451
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7451)))))
                   g7450)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7454
                                (letrec*
                                 ((x7455
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7455)))))
                              g7454))
                           g7290))))
                      (if x-cnd7453
                        g7290
                        (begin
                          (write '(blame g7288 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7452)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7456
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7457
                          (letrec*
                           ((x-cnd7458
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7459
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7459))
                                g7293))))
                           (if x-cnd7458
                             g7293
                             (begin
                               (write '(blame g7291 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7457))))
                   g7456)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7460
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7461
                          (letrec*
                           ((x-cnd7462
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7463
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7463))
                                g7296))))
                           (if x-cnd7462
                             g7296
                             (begin
                               (write '(blame g7294 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7461))))
                   g7460)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7464
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7465
                          (letrec*
                           ((x-cnd7466
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7467
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7467))
                                g7299))))
                           (if x-cnd7466
                             g7299
                             (begin
                               (write '(blame g7297 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7465))))
                   g7464)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7468
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7469
                          (letrec*
                           ((x-cnd7470
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7471
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7471))
                                g7302))))
                           (if x-cnd7470
                             g7302
                             (begin
                               (write '(blame g7300 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7469))))
                   g7468)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7472
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7473
                          (letrec*
                           ((x-cnd7474
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7475
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7475))
                                g7305))))
                           (if x-cnd7474
                             g7305
                             (begin
                               (write '(blame g7303 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7473))))
                   g7472)))
               (meta (lambda (v) (letrec* ((g7476 v)) g7476)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7477
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7479
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7480
                                 (letrec*
                                  ((x7481
                                    (letrec*
                                     ((x7483
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7482
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7312 x7483 x7482)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7481)))))
                               g7480))))
                          g7479))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7478
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7478))))))
                  g7477)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7484
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7486
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7487
                                 (letrec*
                                  ((x7488
                                    (letrec*
                                     ((x7490
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7489
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7319 x7490 x7489)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7488)))))
                               g7487))))
                          g7486))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7485
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7485))))))
                  g7484)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7491
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7493
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7494
                                 (letrec*
                                  ((x7495
                                    (letrec*
                                     ((x7497
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7496
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7326 x7497 x7496)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7495)))))
                               g7494))))
                          g7493))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7492
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7492))))))
                  g7491)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7498
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7500
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7501
                                 (letrec*
                                  ((x7502
                                    (letrec*
                                     ((x7504
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7503
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7333 x7504 x7503)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7502)))))
                               g7501))))
                          g7500))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7499
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7499))))))
                  g7498)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7505
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7507
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7508
                                 (letrec*
                                  ((x7509
                                    (letrec*
                                     ((x7511
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7510
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7340 x7511 x7510)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7509)))))
                               g7508))))
                          g7507))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7506
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7506))))))
                  g7505)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7512
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7514
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7515
                                 (letrec*
                                  ((x7516
                                    (letrec*
                                     ((x7518
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7517
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7347 x7518 x7517)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7516)))))
                               g7515))))
                          g7514))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7513
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7513))))))
                  g7512)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7519
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7521
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7522
                                 (letrec*
                                  ((x7523
                                    (letrec*
                                     ((x7525
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7524
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7354 x7525 x7524)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7523)))))
                               g7522))))
                          g7521))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7520
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7520))))))
                  g7519)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7526
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7528
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7529
                                 (letrec*
                                  ((x7530
                                    (letrec*
                                     ((x7532
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7531
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7361 x7532 x7531)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7530)))))
                               g7529))))
                          g7528))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7527
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7527))))))
                  g7526)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7533
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7535
                            (lambda (g7364)
                              (letrec*
                               ((g7536
                                 (letrec*
                                  ((x7537
                                    (letrec*
                                     ((x7538
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7367 x7538)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7537)))))
                               g7536))))
                          g7535))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7534
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7534))))))
                  g7533)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7539
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7541
                            (lambda (g7370)
                              (letrec*
                               ((g7542
                                 (letrec*
                                  ((x7543
                                    (letrec*
                                     ((x7544
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7373 x7544)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7543)))))
                               g7542))))
                          g7541))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7540
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7540))))))
                  g7539)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7545
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7547
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7548
                                 (letrec*
                                  ((x7549
                                    (letrec*
                                     ((x7551
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7550
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7380 x7551 x7550)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7549)))))
                               g7548))))
                          g7547))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7546
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7546))))))
                  g7545)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7552
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7554
                            (lambda (g7383)
                              (letrec*
                               ((g7555
                                 (letrec*
                                  ((x7556
                                    (letrec*
                                     ((x7557
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7386 x7557)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7556)))))
                               g7555))))
                          g7554))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7553
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7553))))))
                  g7552)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7558
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7560
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7561
                                 (letrec*
                                  ((x7562
                                    (letrec*
                                     ((x7564
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7563
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7393 x7564 x7563)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7562)))))
                               g7561))))
                          g7560))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7559
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7559))))))
                  g7558)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7565
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7565)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7566
                     (letrec*
                      ((x7567
                        (letrec*
                         ((x7568
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7568)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7567)))))
                   g7566)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7569
                     (letrec*
                      ((x7572
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7572))))
                    (g7570
                     (letrec*
                      ((x7573
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7573))))
                    (g7571
                     (letrec*
                      ((x-cnd7574
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7574
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7577
                           (letrec*
                            ((x7578
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7578))))
                          (x7575
                           (letrec*
                            ((x7576
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7576)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7577 x7575)))))))
                   g7571)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7579
                     (letrec*
                      ((x7580
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7580)))))
                   g7579)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7581
                     (letrec*
                      ((x7582
                        (letrec*
                         ((x7583
                           (letrec*
                            ((x7584
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7584)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7583)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7582)))))
                   g7581)))
               (cdadar
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
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7588)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7587)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7586)))))
                   g7585)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7589
                     (letrec*
                      ((x7592
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7592))))
                    (g7590
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7593))))
                    (g7591
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
                       ((g7594
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7595 res))
                       g7595))))
                   g7591)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7597
                        (letrec*
                         ((x7598
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7598)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7597)))))
                   g7596)))
               (cdaadr
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
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7602)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7601)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7600)))))
                   g7599)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7605
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7605))))
                    (g7604
                     (letrec*
                      ((x-cnd7606
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7606
                        #f
                        (letrec*
                         ((x-cnd7607
                           (letrec*
                            ((x7608
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7608 k)))))
                         (if x-cnd7607
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7609
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7609)))))))))
                   g7604)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7611)))))
                   g7610)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7614))))
                    (g7613
                     (letrec*
                      ((x-cnd7615
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7615
                        ""
                        (letrec*
                         ((x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7619))))
                          (x7616
                           (letrec*
                            ((x7617
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7617)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7618 x7616)))))))
                   g7613)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7624))))
                    (g7622
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7625
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7625))))
                   g7622)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7627
                        (letrec*
                         ((x7628
                           (letrec*
                            ((x7629
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7629)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7628)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7627)))))
                   g7626)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7633))))
                    (g7631
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7634))))
                    (g7632
                     (letrec*
                      ((x-cnd7635
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7635
                        x
                        (letrec*
                         ((x7637
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7636
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7637 x7636)))))))
                   g7632)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7638
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7638)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x-cnd7640
                        (letrec*
                         ((x7641 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7641)))))
                      (if x-cnd7640
                        (letrec*
                         ((x7642 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7642)))
                        #f))))
                   g7639)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7645))))
                    (g7644
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7646
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7647 (if val7245 val7245 #f)))
                             g7647)))))
                       g7646))))
                   g7644)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7649
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7649 9)))))
                      (letrec*
                       ((g7650
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7651
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7651 10)))))
                            (letrec*
                             ((g7652
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7653
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7653 32))))))
                             g7652)))))
                       g7650))))
                   g7648)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7655
                        (letrec*
                         ((x7656
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7656)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7655)))))
                   g7654)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7659))))
                    (g7658
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7658)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7660 #f)) g7660)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7662)))))
                   g7661)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7665))))
                    (g7664
                     (letrec*
                      ((x-cnd7666
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7666
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7664)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7668
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7669
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7669
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7670
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7671
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7671
                                       (letrec*
                                        ((x-cnd7672
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7672
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7673
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7674
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7674
                                             (letrec*
                                              ((x-cnd7675
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7675
                                                (letrec*
                                                 ((x-cnd7676
                                                   (letrec*
                                                    ((x7678
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7677
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7678 x7677)))))
                                                 (if x-cnd7676
                                                   (letrec*
                                                    ((x7680
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7679
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7680 x7679)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7681
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7682
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7682
                                                (letrec*
                                                 ((x-cnd7683
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7683
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7684
                                                       (letrec*
                                                        ((x-cnd7685
                                                          (letrec*
                                                           ((x7686
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
                                                             (= x7686 n)))))
                                                        (if x-cnd7685
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7687
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
                                                                    ((g7688
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7689
                                                                           (letrec*
                                                                            ((x7691
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
                                                                             (x7690
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
                                                                               x7691
                                                                               x7690)))))
                                                                         (if x-cnd7689
                                                                           (letrec*
                                                                            ((x7692
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
                                                                               x7692)))
                                                                           #f)))))
                                                                    g7688))))
                                                                g7687))))
                                                           (letrec*
                                                            ((g7693
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7693))
                                                          #f))))
                                                     g7684))
                                                   #f))
                                                #f)))))
                                         g7681)))))
                                   g7673)))))
                             g7670)))))
                       g7668))))
                   g7667)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7694
                     (letrec*
                      ((x7695
                        (letrec*
                         ((x7696
                           (letrec*
                            ((x7697
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7697)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7696)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7695)))))
                   g7694)))
               (caaddr
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
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7701)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7700)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7699)))))
                   g7698)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7702
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7702)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7703
                     (letrec*
                      ((x7705
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7705))))
                    (g7704
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7706
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7707 (if val7254 val7254 #f)))
                             g7707)))))
                       g7706))))
                   g7704)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7708
                     (letrec*
                      ((x7711
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7711))))
                    (g7709
                     (letrec*
                      ((x7712
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7712))))
                    (g7710
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
                       ((g7713
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7714 res))
                       g7714))))
                   g7710)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7715
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7715)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7716
                     (letrec*
                      ((x7719
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7719))))
                    (g7717
                     (letrec*
                      ((x7720
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7720))))
                    (g7718
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7721
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7721))))
                   g7718)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7722
                     (letrec*
                      ((x7723
                        (letrec*
                         ((x7724
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7724)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7723)))))
                   g7722)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7725
                     (letrec*
                      ((x7726
                        (letrec*
                         ((x7727
                           (letrec*
                            ((x7728
                              (begin
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7728)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7727)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7726)))))
                   g7725)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7730
                        (letrec*
                         ((x7731
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7731)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7730)))))
                   g7729)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7732
                     (letrec*
                      ((x7733
                        (letrec*
                         ((x7734
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7734)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7733)))))
                   g7732)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7738))))
                    (g7736
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7739))))
                    (g7737
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7740)))))
                   g7737)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7742
                        (letrec*
                         ((x7743
                           (letrec*
                            ((x7744
                              (begin
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7744)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7743)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7742)))))
                   g7741)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7747))))
                    (g7746
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7746)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7748
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7748)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (letrec*
                         ((x7751
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7751)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7750)))))
                   g7749)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7752
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7752)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7755))))
                    (g7754
                     (letrec*
                      ((x-cnd7756
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7756
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7759
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7760))))
                          (x7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7758)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7759 x7757)))))))
                   g7754)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7762
                        (letrec*
                         ((x7763
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7764)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7763)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7762)))))
                   g7761)))
               (cddadr
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
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7768)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7767)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7766)))))
                   g7765)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7771))))
                    (g7770
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7772)))))
                   g7770)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7774
                        (letrec*
                         ((x7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7776)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7775)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7774)))))
                   g7773)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7780))))
                    (g7778
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7781))))
                    (g7779
                     (letrec*
                      ((x-cnd7782
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7782
                        (letrec*
                         ((g7783
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7783)
                        (letrec*
                         ((x-cnd7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7785)))))
                         (if x-cnd7784
                           (letrec*
                            ((g7786
                              (letrec*
                               ((x7787
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7787)))))
                            g7786)
                           (letrec*
                            ((x-cnd7788
                              (letrec*
                               ((x7789
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7789)))))
                            (if x-cnd7788
                              (letrec*
                               ((g7790
                                 (letrec*
                                  ((x7792
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7791
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7792 x7791)))))
                               g7790)
                              (letrec*
                               ((x-cnd7793
                                 (letrec*
                                  ((x7794
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7794)))))
                               (if x-cnd7793
                                 (letrec*
                                  ((g7795
                                    (letrec*
                                     ((x7798
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7797
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7796
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7798 x7797 x7796)))))
                                  g7795)
                                 (letrec*
                                  ((x-cnd7799
                                    (letrec*
                                     ((x7800
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7800)))))
                                  (if x-cnd7799
                                    (letrec*
                                     ((g7801
                                       (letrec*
                                        ((x7805
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7804
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7803
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7802
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7805 x7804 x7803 x7802)))))
                                     g7801)
                                    (letrec*
                                     ((x-cnd7806
                                       (letrec*
                                        ((x7807
                                          (letrec*
                                           ((x7808
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7808)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7807)))))
                                     (if x-cnd7806
                                       (letrec*
                                        ((g7809
                                          (letrec*
                                           ((x7815
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7814
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7813
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7812
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7810
                                             (letrec*
                                              ((x7811
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7811)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7815
                                              x7814
                                              x7813
                                              x7812
                                              x7810)))))
                                        g7809)
                                       (letrec*
                                        ((x-cnd7816
                                          (letrec*
                                           ((x7817
                                             (letrec*
                                              ((x7818
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7818)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7817)))))
                                        (if x-cnd7816
                                          (letrec*
                                           ((g7819
                                             (letrec*
                                              ((x7827
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7826
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7825
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7824
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7822
                                                (letrec*
                                                 ((x7823
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7823))))
                                               (x7820
                                                (letrec*
                                                 ((x7821
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7821)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7827
                                                 x7826
                                                 x7825
                                                 x7824
                                                 x7822
                                                 x7820)))))
                                           g7819)
                                          (letrec*
                                           ((x-cnd7828
                                             (letrec*
                                              ((x7829
                                                (letrec*
                                                 ((x7830
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7830)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7829)))))
                                           (if x-cnd7828
                                             (letrec*
                                              ((g7831
                                                (letrec*
                                                 ((x7841
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7840
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7839
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7838
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7836
                                                   (letrec*
                                                    ((x7837
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7837))))
                                                  (x7834
                                                   (letrec*
                                                    ((x7835
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7835))))
                                                  (x7832
                                                   (letrec*
                                                    ((x7833
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7833)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7841
                                                    x7840
                                                    x7839
                                                    x7838
                                                    x7836
                                                    x7834
                                                    x7832)))))
                                              g7831)
                                             (letrec*
                                              ((g7842
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7842)))))))))))))))))))
                   g7779)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7845))))
                    (g7844
                     (letrec*
                      ((x-cnd7846
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7846
                        #f
                        (letrec*
                         ((x-cnd7847
                           (letrec*
                            ((x7848
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7848 e)))))
                         (if x-cnd7847
                           l
                           (letrec*
                            ((x7849
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7849)))))))))
                   g7844)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((x7851
                        (letrec*
                         ((x7852
                           (letrec*
                            ((x7853
                              (begin
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7853)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7852)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7851)))))
                   g7850)))
               (cadddr
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
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7857)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7856)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7855)))))
                   g7854)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7858
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7858)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((x7861
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7861))))
                    (g7860
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7860)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7863
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7863))))
                   g7862)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7865
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7865)))))
                   g7864)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7867
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7867
                           (letrec*
                            ((x7868
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7868)))
                           #f))))
                      (letrec*
                       ((g7869
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7869))))
                   g7866)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x7871
                        (letrec*
                         ((x7872
                           (letrec*
                            ((x7873
                              (begin
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7873)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7872)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7871)))))
                   g7870)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x-cnd7875
                        (letrec*
                         ((x7876 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7876 c)))))
                      (if x-cnd7875
                        (letrec*
                         ((x7877 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7877)))
                        #f))))
                   g7874)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x7880
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7880))))
                    (g7879
                     (letrec*
                      ((x-cnd7881
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7881
                        #f
                        (letrec*
                         ((x-cnd7882
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7883 k)))))
                         (if x-cnd7882
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7884
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7884)))))))))
                   g7879)))
               (not (lambda (x) (letrec* ((g7885 (if x #f #t))) g7885)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7886
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7886)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x7889
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7889))))
                    (g7888
                     (letrec*
                      ((x-cnd7890
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7890
                        #f
                        (letrec*
                         ((x-cnd7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7892 e)))))
                         (if x-cnd7891
                           l
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7893)))))))))
                   g7888)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x7895
                        (letrec*
                         ((x7896
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7897)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7896)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7895)))))
                   g7894)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7900
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7900))))
                    (g7899
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7901
                             (letrec*
                              ((x-cnd7902
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7902
                                0
                                (letrec*
                                 ((x7903
                                   (letrec*
                                    ((x7904
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7904)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7903)))))))
                           g7901))))
                      (letrec*
                       ((g7905
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7905))))
                   g7899)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7909
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7909))))
                    (g7907
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7910))))
                    (g7908
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7911
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7911))))
                   g7908)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7913
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7913)))))
                   g7912)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7915
                        (letrec*
                         ((x7916
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7916)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7915)))))
                   g7914)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7919))))
                    (g7918
                     (letrec*
                      ((x-cnd7920
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7920
                        #f
                        (letrec*
                         ((x-cnd7921
                           (letrec*
                            ((x7922
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7922 k)))))
                         (if x-cnd7921
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7923
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7923)))))))))
                   g7918)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7925)))))
                   g7924)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7929))))
                    (g7927
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7930))))
                    (g7928
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7931)))))
                   g7928)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7933
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7933))))
                   g7932)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7937))))
                    (g7935
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7938))))
                    (g7936
                     (letrec*
                      ((x-cnd7939
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7939
                        #t
                        (letrec*
                         ((x-cnd7940
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7940
                           (letrec*
                            ((g7941
                              (letrec*
                               ((x7943
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7943))))
                             (g7942
                              (letrec*
                               ((x7944
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7944)))))
                            g7942)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7936)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7947))))
                    (g7946
                     (letrec*
                      ((x-cnd7948
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7948
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7946)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7952))))
                    (g7950
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7953))))
                    (g7951
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7954
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7954))))
                   g7951)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7956
                        (letrec*
                         ((x7957
                           (letrec*
                            ((x7958
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7958)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7957)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7956)))))
                   g7955)))
               (newline (lambda () (letrec* ((g7959 #f)) g7959)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7962
                        (letrec*
                         ((x7963
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7963))))
                       (x7961
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7962 x7961)))))
                   g7960)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7966))))
                    (g7965
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7967)))))
                   g7965)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7972))))
                    (g7969
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7973))))
                    (g7970
                     (letrec*
                      ((x7974
                        (letrec*
                         ((x7975
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7975)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7974))))
                    (g7971
                     (letrec*
                      ((x-cnd7976
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7976
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7978
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7977
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x7978 x7977)))))))
                   g7971)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x-cnd7980
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7980
                        a
                        (letrec*
                         ((x7981
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x7981)))))))
                   g7979)))
               (sum
                (lambda (n)
                  (letrec*
                   ((g7982
                     (letrec*
                      ((x-cnd7983
                        (begin
                          (write '(funapp 1661 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd7983
                        0
                        (letrec*
                         ((x7984
                           (letrec*
                            ((x7985
                              (begin
                                (write '(funapp 1665 51))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1665 61))
                              (display "\n")
                              (sum x7985)))))
                         (begin
                           (write '(funapp 1666 26))
                           (display "\n")
                           (+ n x7984)))))))
                   g7982))))
              (letrec*
               ((g7986
                 (begin
                   (write '(funapp 1670 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1671 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((xj7394
                          (begin
                            (write '(funapp 1673 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1673 34))
                               (display "\n")
                               'module))))
                         (xk7395
                          (begin
                            (write '(funapp 1673 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1673 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g7987
                           (begin
                             (write '(funapp 1676 24))
                             (display "\n")
                             ((lambda (j7397 k7398 f7399)
                                (letrec*
                                 ((g7988
                                   (lambda (g7396)
                                     (letrec*
                                      ((g7989
                                        (letrec*
                                         ((x7400
                                           (begin
                                             (write '(funapp 1683 44))
                                             (display "\n")
                                             (integer?/c j7397 k7398 g7396))))
                                         (letrec*
                                          ((g7990
                                            (letrec*
                                             ((x7992
                                               (begin
                                                 (write '(funapp 1688 42))
                                                 (display "\n")
                                                 ((lambda (n)
                                                    (letrec*
                                                     ((g7993
                                                       (letrec*
                                                        ((x7994
                                                          (begin
                                                            (write
                                                             '(funapp 1692 57))
                                                            (display "\n")
                                                            (>=/c n))))
                                                        (begin
                                                          (write
                                                           '(funapp 1693 49))
                                                          (display "\n")
                                                          (and/c
                                                           integer?/c
                                                           x7994)))))
                                                     g7993))
                                                  x7400)))
                                              (x7991
                                               (begin
                                                 (write '(funapp 1696 48))
                                                 (display "\n")
                                                 (f7399 x7400))))
                                             (begin
                                               (write '(funapp 1697 40))
                                               (display "\n")
                                               (x7992 j7397 k7398 x7991)))))
                                          g7990))))
                                      g7989))))
                                 g7988))
                              xj7394
                              xk7395
                              sum))))
                         g7987))))))))
               g7986))))
           g7414))))
       g7412)))
    g7411)))
