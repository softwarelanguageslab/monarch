(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7399 #t)) g7399)))
    (meta (lambda (v) (letrec* ((g7400 v)) g7400)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7401
          (letrec*
           ((g7402
             (letrec*
              ((x-e7403 lst))
              (letrec*
               ((v1742 x-e7403))
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
                   ((x-cnd7404
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7404
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
           g7402)))
        g7401)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7405 (lambda (v) (letrec* ((g7406 v)) g7406)))) g7405)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7407
          (letrec*
           ((x7408 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7408)))))
        g7407))))
   (letrec*
    ((g7409
      (letrec*
       ((g7410
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
           ((g7411 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7412
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7413
                     (lambda (k j lst)
                       (letrec*
                        ((g7414
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7415
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7415))
                             lst))))
                        g7414))))
                   g7413)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7416
                     (letrec*
                      ((x-cnd7417
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7417
                        g7263
                        (begin
                          (write '(blame g7261 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7416)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7418
                     (letrec*
                      ((x-cnd7419
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7419
                        g7266
                        (begin
                          (write '(blame g7264 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7418)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7420
                     (letrec*
                      ((x-cnd7421
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7421
                        g7269
                        (begin
                          (write '(blame g7267 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7420)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7422
                     (letrec*
                      ((x-cnd7423
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7424 #t)) g7424)) g7272))))
                      (if x-cnd7423
                        g7272
                        (begin
                          (write '(blame g7270 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7422)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7425
                     (letrec*
                      ((x-cnd7426
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7427 #t)) g7427)) g7275))))
                      (if x-cnd7426
                        g7275
                        (begin
                          (write '(blame g7273 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7425)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7428
                     (letrec*
                      ((x-cnd7429
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7429
                        g7278
                        (begin
                          (write '(blame g7276 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7428)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7430
                     (letrec*
                      ((x-cnd7431
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7431
                        g7281
                        (begin
                          (write '(blame g7279 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7430)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7432
                     (letrec*
                      ((x-cnd7433
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7433
                        g7284
                        (begin
                          (write '(blame g7282 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7432)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7434
                     (letrec*
                      ((x-cnd7435
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7435
                        g7287
                        (begin
                          (write '(blame g7285 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7434)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7436
                     (lambda (k j v)
                       (letrec*
                        ((g7437
                          (letrec*
                           ((x-cnd7438
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7438
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7437))))
                   g7436)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7439
                     (lambda (k j v)
                       (letrec*
                        ((g7440
                          (letrec*
                           ((x-cnd7441
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7441
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7445
                                (letrec*
                                 ((x7446
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7446))))
                               (x7442
                                (letrec*
                                 ((x7444
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7443
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7444 k j x7443)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7445 x7442)))))))
                        g7440))))
                   g7439)))
               (any? (lambda (v) (letrec* ((g7447 #t)) g7447)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x7449
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7449)))))
                   g7448)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7452
                                (letrec*
                                 ((x7453
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7453)))))
                              g7452))
                           g7290))))
                      (if x-cnd7451
                        g7290
                        (begin
                          (write '(blame g7288 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7450)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7454
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7455
                          (letrec*
                           ((x-cnd7456
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7457
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7457))
                                g7293))))
                           (if x-cnd7456
                             g7293
                             (begin
                               (write '(blame g7291 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7455))))
                   g7454)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7458
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7459
                          (letrec*
                           ((x-cnd7460
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7461
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7461))
                                g7296))))
                           (if x-cnd7460
                             g7296
                             (begin
                               (write '(blame g7294 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7459))))
                   g7458)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7462
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7463
                          (letrec*
                           ((x-cnd7464
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7465
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7465))
                                g7299))))
                           (if x-cnd7464
                             g7299
                             (begin
                               (write '(blame g7297 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7463))))
                   g7462)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7466
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7467
                          (letrec*
                           ((x-cnd7468
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7469
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7469))
                                g7302))))
                           (if x-cnd7468
                             g7302
                             (begin
                               (write '(blame g7300 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7467))))
                   g7466)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7470
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7471
                          (letrec*
                           ((x-cnd7472
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7473
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7473))
                                g7305))))
                           (if x-cnd7472
                             g7305
                             (begin
                               (write '(blame g7303 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7471))))
                   g7470)))
               (meta (lambda (v) (letrec* ((g7474 v)) g7474)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7475
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7477
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7478
                                 (letrec*
                                  ((x7479
                                    (letrec*
                                     ((x7481
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7480
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7312 x7481 x7480)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7479)))))
                               g7478))))
                          g7477))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7476
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7476))))))
                  g7475)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7482
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7484
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7485
                                 (letrec*
                                  ((x7486
                                    (letrec*
                                     ((x7488
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7487
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7319 x7488 x7487)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7486)))))
                               g7485))))
                          g7484))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7483
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7483))))))
                  g7482)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7489
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7491
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7492
                                 (letrec*
                                  ((x7493
                                    (letrec*
                                     ((x7495
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7494
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7326 x7495 x7494)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7493)))))
                               g7492))))
                          g7491))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7490
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7490))))))
                  g7489)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7496
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7498
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7499
                                 (letrec*
                                  ((x7500
                                    (letrec*
                                     ((x7502
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7501
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7333 x7502 x7501)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7500)))))
                               g7499))))
                          g7498))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7497
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7497))))))
                  g7496)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7503
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7505
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7506
                                 (letrec*
                                  ((x7507
                                    (letrec*
                                     ((x7509
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7508
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7340 x7509 x7508)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7507)))))
                               g7506))))
                          g7505))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7504
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7504))))))
                  g7503)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7510
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7512
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7513
                                 (letrec*
                                  ((x7514
                                    (letrec*
                                     ((x7516
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7515
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7347 x7516 x7515)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7514)))))
                               g7513))))
                          g7512))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7511
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7511))))))
                  g7510)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7517
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7519
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7520
                                 (letrec*
                                  ((x7521
                                    (letrec*
                                     ((x7523
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7522
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7354 x7523 x7522)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7521)))))
                               g7520))))
                          g7519))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7518
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7518))))))
                  g7517)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7524
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7526
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7527
                                 (letrec*
                                  ((x7528
                                    (letrec*
                                     ((x7530
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7529
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7361 x7530 x7529)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7528)))))
                               g7527))))
                          g7526))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7525
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7525))))))
                  g7524)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7531
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7533
                            (lambda (g7364)
                              (letrec*
                               ((g7534
                                 (letrec*
                                  ((x7535
                                    (letrec*
                                     ((x7536
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7367 x7536)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7535)))))
                               g7534))))
                          g7533))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7532
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7532))))))
                  g7531)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7537
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7539
                            (lambda (g7370)
                              (letrec*
                               ((g7540
                                 (letrec*
                                  ((x7541
                                    (letrec*
                                     ((x7542
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7373 x7542)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7541)))))
                               g7540))))
                          g7539))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7538
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7538))))))
                  g7537)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7543
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7545
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7546
                                 (letrec*
                                  ((x7547
                                    (letrec*
                                     ((x7549
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7548
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7380 x7549 x7548)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7547)))))
                               g7546))))
                          g7545))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7544
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7544))))))
                  g7543)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7550
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7552
                            (lambda (g7383)
                              (letrec*
                               ((g7553
                                 (letrec*
                                  ((x7554
                                    (letrec*
                                     ((x7555
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7386 x7555)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7554)))))
                               g7553))))
                          g7552))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7551
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7551))))))
                  g7550)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7556
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7558
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7559
                                 (letrec*
                                  ((x7560
                                    (letrec*
                                     ((x7562
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7561
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7393 x7562 x7561)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7560)))))
                               g7559))))
                          g7558))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7557
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7557))))))
                  g7556)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7563
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7563)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7564
                     (letrec*
                      ((x7565
                        (letrec*
                         ((x7566
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7566)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7565)))))
                   g7564)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7567
                     (letrec*
                      ((x7570
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7570))))
                    (g7568
                     (letrec*
                      ((x7571
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7571))))
                    (g7569
                     (letrec*
                      ((x-cnd7572
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7572
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7575
                           (letrec*
                            ((x7576
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7576))))
                          (x7573
                           (letrec*
                            ((x7574
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7574)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7575 x7573)))))))
                   g7569)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7577
                     (letrec*
                      ((x7578
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7578)))))
                   g7577)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7579
                     (letrec*
                      ((x7580
                        (letrec*
                         ((x7581
                           (letrec*
                            ((x7582
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7582)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7581)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7580)))))
                   g7579)))
               (cdadar
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
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7586)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7585)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7584)))))
                   g7583)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7587
                     (letrec*
                      ((x7590
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7590))))
                    (g7588
                     (letrec*
                      ((x7591
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7591))))
                    (g7589
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
                       ((g7592
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7593 res))
                       g7593))))
                   g7589)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7595
                        (letrec*
                         ((x7596
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7596)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7595)))))
                   g7594)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x7598
                        (letrec*
                         ((x7599
                           (letrec*
                            ((x7600
                              (begin
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7600)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7599)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7598)))))
                   g7597)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7603))))
                    (g7602
                     (letrec*
                      ((x-cnd7604
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7604
                        #f
                        (letrec*
                         ((x-cnd7605
                           (letrec*
                            ((x7606
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7606 k)))))
                         (if x-cnd7605
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7607
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7607)))))))))
                   g7602)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7609
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7609)))))
                   g7608)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7612))))
                    (g7611
                     (letrec*
                      ((x-cnd7613
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7613
                        ""
                        (letrec*
                         ((x7616
                           (letrec*
                            ((x7617
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7617))))
                          (x7614
                           (letrec*
                            ((x7615
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7615)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7616 x7614)))))))
                   g7611)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7621))))
                    (g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7622))))
                    (g7620
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7623
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7623))))
                   g7620)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7625
                        (letrec*
                         ((x7626
                           (letrec*
                            ((x7627
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7627)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7626)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7625)))))
                   g7624)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7631))))
                    (g7629
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7632))))
                    (g7630
                     (letrec*
                      ((x-cnd7633
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7633
                        x
                        (letrec*
                         ((x7635
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7634
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7635 x7634)))))))
                   g7630)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7636
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7636)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x-cnd7638
                        (letrec*
                         ((x7639 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7639)))))
                      (if x-cnd7638
                        (letrec*
                         ((x7640 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7640)))
                        #f))))
                   g7637)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7643))))
                    (g7642
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7644
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7645 (if val7245 val7245 #f)))
                             g7645)))))
                       g7644))))
                   g7642)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7647
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7647 9)))))
                      (letrec*
                       ((g7648
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7649
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7649 10)))))
                            (letrec*
                             ((g7650
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7651
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7651 32))))))
                             g7650)))))
                       g7648))))
                   g7646)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7653
                        (letrec*
                         ((x7654
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7654)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7653)))))
                   g7652)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7657))))
                    (g7656
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7656)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7658 #f)) g7658)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7660)))))
                   g7659)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7663))))
                    (g7662
                     (letrec*
                      ((x-cnd7664
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7664
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7662)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7666
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7667
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7667
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7668
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7669
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7669
                                       (letrec*
                                        ((x-cnd7670
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7670
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7671
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7672
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7672
                                             (letrec*
                                              ((x-cnd7673
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7673
                                                (letrec*
                                                 ((x-cnd7674
                                                   (letrec*
                                                    ((x7676
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7675
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7676 x7675)))))
                                                 (if x-cnd7674
                                                   (letrec*
                                                    ((x7678
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7677
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7678 x7677)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7679
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7680
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7680
                                                (letrec*
                                                 ((x-cnd7681
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7681
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7682
                                                       (letrec*
                                                        ((x-cnd7683
                                                          (letrec*
                                                           ((x7684
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
                                                             (= x7684 n)))))
                                                        (if x-cnd7683
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7685
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
                                                                    ((g7686
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7687
                                                                           (letrec*
                                                                            ((x7689
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
                                                                             (x7688
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
                                                                               x7689
                                                                               x7688)))))
                                                                         (if x-cnd7687
                                                                           (letrec*
                                                                            ((x7690
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
                                                                               x7690)))
                                                                           #f)))))
                                                                    g7686))))
                                                                g7685))))
                                                           (letrec*
                                                            ((g7691
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7691))
                                                          #f))))
                                                     g7682))
                                                   #f))
                                                #f)))))
                                         g7679)))))
                                   g7671)))))
                             g7668)))))
                       g7666))))
                   g7665)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7692
                     (letrec*
                      ((x7693
                        (letrec*
                         ((x7694
                           (letrec*
                            ((x7695
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7695)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7694)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7693)))))
                   g7692)))
               (caaddr
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
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7699)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7698)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7697)))))
                   g7696)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7700
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7700)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7701
                     (letrec*
                      ((x7703
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7703))))
                    (g7702
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7704
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7705 (if val7254 val7254 #f)))
                             g7705)))))
                       g7704))))
                   g7702)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7706
                     (letrec*
                      ((x7709
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7709))))
                    (g7707
                     (letrec*
                      ((x7710
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7710))))
                    (g7708
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
                       ((g7711
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7712 res))
                       g7712))))
                   g7708)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7713
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7713)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7714
                     (letrec*
                      ((x7717
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7717))))
                    (g7715
                     (letrec*
                      ((x7718
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7718))))
                    (g7716
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7719
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7719))))
                   g7716)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x7721
                        (letrec*
                         ((x7722
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7722)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7721)))))
                   g7720)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7723
                     (letrec*
                      ((x7724
                        (letrec*
                         ((x7725
                           (letrec*
                            ((x7726
                              (begin
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7726)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7725)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7724)))))
                   g7723)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((x7728
                        (letrec*
                         ((x7729
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7729)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7728)))))
                   g7727)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7731
                        (letrec*
                         ((x7732
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7732)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7731)))))
                   g7730)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7736
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7736))))
                    (g7734
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7737))))
                    (g7735
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7738)))))
                   g7735)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7742)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7741)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7740)))))
                   g7739)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7745))))
                    (g7744
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7744)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7746
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7746)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (letrec*
                         ((x7749
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7749)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7748)))))
                   g7747)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7750
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7750)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7753))))
                    (g7752
                     (letrec*
                      ((x-cnd7754
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7754
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7758))))
                          (x7755
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7756)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7757 x7755)))))))
                   g7752)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7762)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7761)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7760)))))
                   g7759)))
               (cddadr
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
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7766)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7765)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7764)))))
                   g7763)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7769
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7769))))
                    (g7768
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7770)))))
                   g7768)))
               (caadar
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7774)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7773)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7772)))))
                   g7771)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7778))))
                    (g7776
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7779))))
                    (g7777
                     (letrec*
                      ((x-cnd7780
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7780
                        (letrec*
                         ((g7781
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7781)
                        (letrec*
                         ((x-cnd7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7783)))))
                         (if x-cnd7782
                           (letrec*
                            ((g7784
                              (letrec*
                               ((x7785
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7785)))))
                            g7784)
                           (letrec*
                            ((x-cnd7786
                              (letrec*
                               ((x7787
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7787)))))
                            (if x-cnd7786
                              (letrec*
                               ((g7788
                                 (letrec*
                                  ((x7790
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7789
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7790 x7789)))))
                               g7788)
                              (letrec*
                               ((x-cnd7791
                                 (letrec*
                                  ((x7792
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7792)))))
                               (if x-cnd7791
                                 (letrec*
                                  ((g7793
                                    (letrec*
                                     ((x7796
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7795
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7794
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7796 x7795 x7794)))))
                                  g7793)
                                 (letrec*
                                  ((x-cnd7797
                                    (letrec*
                                     ((x7798
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7798)))))
                                  (if x-cnd7797
                                    (letrec*
                                     ((g7799
                                       (letrec*
                                        ((x7803
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7802
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7801
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7800
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7803 x7802 x7801 x7800)))))
                                     g7799)
                                    (letrec*
                                     ((x-cnd7804
                                       (letrec*
                                        ((x7805
                                          (letrec*
                                           ((x7806
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7806)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7805)))))
                                     (if x-cnd7804
                                       (letrec*
                                        ((g7807
                                          (letrec*
                                           ((x7813
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7812
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7811
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7810
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7808
                                             (letrec*
                                              ((x7809
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7809)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7813
                                              x7812
                                              x7811
                                              x7810
                                              x7808)))))
                                        g7807)
                                       (letrec*
                                        ((x-cnd7814
                                          (letrec*
                                           ((x7815
                                             (letrec*
                                              ((x7816
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7816)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7815)))))
                                        (if x-cnd7814
                                          (letrec*
                                           ((g7817
                                             (letrec*
                                              ((x7825
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7824
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7823
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7822
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7820
                                                (letrec*
                                                 ((x7821
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7821))))
                                               (x7818
                                                (letrec*
                                                 ((x7819
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7819)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7825
                                                 x7824
                                                 x7823
                                                 x7822
                                                 x7820
                                                 x7818)))))
                                           g7817)
                                          (letrec*
                                           ((x-cnd7826
                                             (letrec*
                                              ((x7827
                                                (letrec*
                                                 ((x7828
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7828)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7827)))))
                                           (if x-cnd7826
                                             (letrec*
                                              ((g7829
                                                (letrec*
                                                 ((x7839
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7838
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7837
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7836
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7834
                                                   (letrec*
                                                    ((x7835
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7835))))
                                                  (x7832
                                                   (letrec*
                                                    ((x7833
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7833))))
                                                  (x7830
                                                   (letrec*
                                                    ((x7831
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7831)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7839
                                                    x7838
                                                    x7837
                                                    x7836
                                                    x7834
                                                    x7832
                                                    x7830)))))
                                              g7829)
                                             (letrec*
                                              ((g7840
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7840)))))))))))))))))))
                   g7777)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7843))))
                    (g7842
                     (letrec*
                      ((x-cnd7844
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7844
                        #f
                        (letrec*
                         ((x-cnd7845
                           (letrec*
                            ((x7846
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7846 e)))))
                         (if x-cnd7845
                           l
                           (letrec*
                            ((x7847
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7847)))))))))
                   g7842)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7849
                        (letrec*
                         ((x7850
                           (letrec*
                            ((x7851
                              (begin
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7851)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7850)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7849)))))
                   g7848)))
               (cadddr
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
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7855)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7854)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7853)))))
                   g7852)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7856
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7856)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7859))))
                    (g7858
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7858)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7861
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7861))))
                   g7860)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((x7863
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7863)))))
                   g7862)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7865
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7865
                           (letrec*
                            ((x7866
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7866)))
                           #f))))
                      (letrec*
                       ((g7867
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7867))))
                   g7864)))
               (cddaar
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
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7871)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7870)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7869)))))
                   g7868)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x-cnd7873
                        (letrec*
                         ((x7874 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7874 c)))))
                      (if x-cnd7873
                        (letrec*
                         ((x7875 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7875)))
                        #f))))
                   g7872)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7878))))
                    (g7877
                     (letrec*
                      ((x-cnd7879
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7879
                        #f
                        (letrec*
                         ((x-cnd7880
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7881 k)))))
                         (if x-cnd7880
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7882
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7882)))))))))
                   g7877)))
               (not (lambda (x) (letrec* ((g7883 (if x #f #t))) g7883)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7884
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7884)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7887
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7887))))
                    (g7886
                     (letrec*
                      ((x-cnd7888
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7888
                        #f
                        (letrec*
                         ((x-cnd7889
                           (letrec*
                            ((x7890
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7890 e)))))
                         (if x-cnd7889
                           l
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7891)))))))))
                   g7886)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7893
                        (letrec*
                         ((x7894
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7895)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7894)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7893)))))
                   g7892)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7898
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7898))))
                    (g7897
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7899
                             (letrec*
                              ((x-cnd7900
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7900
                                0
                                (letrec*
                                 ((x7901
                                   (letrec*
                                    ((x7902
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7902)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7901)))))))
                           g7899))))
                      (letrec*
                       ((g7903
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7903))))
                   g7897)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7907))))
                    (g7905
                     (letrec*
                      ((x7908
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7908))))
                    (g7906
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7909
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7909))))
                   g7906)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x7911
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7911)))))
                   g7910)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7913
                        (letrec*
                         ((x7914
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7914)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7913)))))
                   g7912)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7917
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7917))))
                    (g7916
                     (letrec*
                      ((x-cnd7918
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7918
                        #f
                        (letrec*
                         ((x-cnd7919
                           (letrec*
                            ((x7920
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7920 k)))))
                         (if x-cnd7919
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7921
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7921)))))))))
                   g7916)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7923)))))
                   g7922)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7927))))
                    (g7925
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7928))))
                    (g7926
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7929)))))
                   g7926)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7931
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7931))))
                   g7930)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7935))))
                    (g7933
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7936))))
                    (g7934
                     (letrec*
                      ((x-cnd7937
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7937
                        #t
                        (letrec*
                         ((x-cnd7938
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7938
                           (letrec*
                            ((g7939
                              (letrec*
                               ((x7941
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7941))))
                             (g7940
                              (letrec*
                               ((x7942
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7942)))))
                            g7940)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7934)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7945))))
                    (g7944
                     (letrec*
                      ((x-cnd7946
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7946
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7944)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7950))))
                    (g7948
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7951))))
                    (g7949
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7952
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7952))))
                   g7949)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7954
                        (letrec*
                         ((x7955
                           (letrec*
                            ((x7956
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7956)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7955)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7954)))))
                   g7953)))
               (newline (lambda () (letrec* ((g7957 #f)) g7957)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7960
                        (letrec*
                         ((x7961
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7961))))
                       (x7959
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7960 x7959)))))
                   g7958)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7964))))
                    (g7963
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7965)))))
                   g7963)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7970))))
                    (g7967
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7971))))
                    (g7968
                     (letrec*
                      ((x7972
                        (letrec*
                         ((x7973
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7973)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7972))))
                    (g7969
                     (letrec*
                      ((x-cnd7974
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7974
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7976
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7975
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x7976 x7975)))))))
                   g7969)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7977
                     (letrec*
                      ((x-cnd7978
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7978
                        a
                        (letrec*
                         ((x7979
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x7979)))))))
                   g7977)))
               (member
                (lambda (x l)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x-cnd7981
                        (begin
                          (write '(funapp 1661 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7981
                        empty
                        (letrec*
                         ((x-cnd7982
                           (letrec*
                            ((x7983
                              (begin
                                (write '(funapp 1666 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1666 55))
                              (display "\n")
                              (equal? x x7983)))))
                         (if x-cnd7982
                           l
                           (letrec*
                            ((x7984
                              (begin
                                (write '(funapp 1669 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1669 55))
                              (display "\n")
                              (member x x7984)))))))))
                   g7980))))
              (letrec*
               ((g7985
                 (begin
                   (write '(funapp 1673 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1674 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((xj7394
                          (begin
                            (write '(funapp 1676 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1676 34))
                               (display "\n")
                               'module))))
                         (xk7395
                          (begin
                            (write '(funapp 1676 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1676 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g7986
                           (begin
                             (write '(funapp 1679 24))
                             (display "\n")
                             ((lambda (j7396 k7397 f7398)
                                (letrec*
                                 ((g7987
                                   (lambda ()
                                     (letrec*
                                      ((g7988
                                        (letrec*
                                         ((x7990
                                           (letrec*
                                            ((x7992
                                              (begin
                                                (write '(funapp 1688 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x7991
                                              (begin
                                                (write '(funapp 1689 47))
                                                (display "\n")
                                                (listof any/c))))
                                            (begin
                                              (write '(funapp 1690 39))
                                              (display "\n")
                                              (any/c x7992 x7991))))
                                          (x7989
                                           (begin
                                             (write '(funapp 1691 44))
                                             (display "\n")
                                             (f7398))))
                                         (begin
                                           (write '(funapp 1692 36))
                                           (display "\n")
                                           (x7990 j7396 k7397 x7989)))))
                                      g7988))))
                                 g7987))
                              xj7394
                              xk7395
                              member))))
                         g7986))))))))
               g7985))))
           g7412))))
       g7410)))
    g7409)))
