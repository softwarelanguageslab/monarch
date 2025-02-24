(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7394 #t)) g7394)))
    (meta (lambda (v) (letrec* ((g7395 v)) g7395)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7396
          (letrec*
           ((g7397
             (letrec*
              ((x-e7398 lst))
              (letrec*
               ((v1742 x-e7398))
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
                   ((x-cnd7399
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7399
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
           g7397)))
        g7396)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7400 (lambda (v) (letrec* ((g7401 v)) g7401)))) g7400)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7402
          (letrec*
           ((x7403 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7403)))))
        g7402))))
   (letrec*
    ((g7404
      (letrec*
       ((g7405
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
           ((g7406 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7407
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7408
                     (lambda (k j lst)
                       (letrec*
                        ((g7409
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7410
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7410))
                             lst))))
                        g7409))))
                   g7408)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7411
                     (letrec*
                      ((x-cnd7412
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7412
                        g7263
                        (begin
                          (write '(blame g7261 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7411)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7413
                     (letrec*
                      ((x-cnd7414
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7414
                        g7266
                        (begin
                          (write '(blame g7264 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7413)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7415
                     (letrec*
                      ((x-cnd7416
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7416
                        g7269
                        (begin
                          (write '(blame g7267 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7415)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7417
                     (letrec*
                      ((x-cnd7418
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7419 #t)) g7419)) g7272))))
                      (if x-cnd7418
                        g7272
                        (begin
                          (write '(blame g7270 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7417)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7420
                     (letrec*
                      ((x-cnd7421
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7422 #t)) g7422)) g7275))))
                      (if x-cnd7421
                        g7275
                        (begin
                          (write '(blame g7273 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7420)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7423
                     (letrec*
                      ((x-cnd7424
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7424
                        g7278
                        (begin
                          (write '(blame g7276 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7423)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7425
                     (letrec*
                      ((x-cnd7426
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7426
                        g7281
                        (begin
                          (write '(blame g7279 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7425)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7427
                     (letrec*
                      ((x-cnd7428
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7428
                        g7284
                        (begin
                          (write '(blame g7282 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7427)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7429
                     (letrec*
                      ((x-cnd7430
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7430
                        g7287
                        (begin
                          (write '(blame g7285 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7429)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7431
                     (lambda (k j v)
                       (letrec*
                        ((g7432
                          (letrec*
                           ((x-cnd7433
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7433
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7432))))
                   g7431)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7434
                     (lambda (k j v)
                       (letrec*
                        ((g7435
                          (letrec*
                           ((x-cnd7436
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7436
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7440
                                (letrec*
                                 ((x7441
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7441))))
                               (x7437
                                (letrec*
                                 ((x7439
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7438
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7439 k j x7438)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7440 x7437)))))))
                        g7435))))
                   g7434)))
               (any? (lambda (v) (letrec* ((g7442 #t)) g7442)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x7444
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7444)))))
                   g7443)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x-cnd7446
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7447
                                (letrec*
                                 ((x7448
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7448)))))
                              g7447))
                           g7290))))
                      (if x-cnd7446
                        g7290
                        (begin
                          (write '(blame g7288 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7445)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7449
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7450
                          (letrec*
                           ((x-cnd7451
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7452
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7452))
                                g7293))))
                           (if x-cnd7451
                             g7293
                             (begin
                               (write '(blame g7291 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7450))))
                   g7449)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7453
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7454
                          (letrec*
                           ((x-cnd7455
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7456
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7456))
                                g7296))))
                           (if x-cnd7455
                             g7296
                             (begin
                               (write '(blame g7294 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7454))))
                   g7453)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7457
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7458
                          (letrec*
                           ((x-cnd7459
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7460
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7460))
                                g7299))))
                           (if x-cnd7459
                             g7299
                             (begin
                               (write '(blame g7297 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7458))))
                   g7457)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7461
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7462
                          (letrec*
                           ((x-cnd7463
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7464
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7464))
                                g7302))))
                           (if x-cnd7463
                             g7302
                             (begin
                               (write '(blame g7300 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7462))))
                   g7461)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7465
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7466
                          (letrec*
                           ((x-cnd7467
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7468
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7468))
                                g7305))))
                           (if x-cnd7467
                             g7305
                             (begin
                               (write '(blame g7303 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7466))))
                   g7465)))
               (meta (lambda (v) (letrec* ((g7469 v)) g7469)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7470
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7472
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7473
                                 (letrec*
                                  ((x7474
                                    (letrec*
                                     ((x7476
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7475
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7312 x7476 x7475)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7474)))))
                               g7473))))
                          g7472))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7471
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7471))))))
                  g7470)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7477
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7479
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7480
                                 (letrec*
                                  ((x7481
                                    (letrec*
                                     ((x7483
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7482
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7319 x7483 x7482)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7481)))))
                               g7480))))
                          g7479))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7478
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7478))))))
                  g7477)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7484
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7486
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7487
                                 (letrec*
                                  ((x7488
                                    (letrec*
                                     ((x7490
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7489
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7326 x7490 x7489)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7488)))))
                               g7487))))
                          g7486))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7485
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7485))))))
                  g7484)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7491
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7493
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7494
                                 (letrec*
                                  ((x7495
                                    (letrec*
                                     ((x7497
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7496
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7333 x7497 x7496)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7495)))))
                               g7494))))
                          g7493))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7492
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7492))))))
                  g7491)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7498
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7500
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7501
                                 (letrec*
                                  ((x7502
                                    (letrec*
                                     ((x7504
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7503
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7340 x7504 x7503)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7502)))))
                               g7501))))
                          g7500))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7499
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7499))))))
                  g7498)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7505
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7507
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7508
                                 (letrec*
                                  ((x7509
                                    (letrec*
                                     ((x7511
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7510
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7347 x7511 x7510)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7509)))))
                               g7508))))
                          g7507))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7506
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7506))))))
                  g7505)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7512
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7514
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7515
                                 (letrec*
                                  ((x7516
                                    (letrec*
                                     ((x7518
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7517
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7354 x7518 x7517)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7516)))))
                               g7515))))
                          g7514))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7513
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7513))))))
                  g7512)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7519
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7521
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7522
                                 (letrec*
                                  ((x7523
                                    (letrec*
                                     ((x7525
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7524
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7361 x7525 x7524)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7523)))))
                               g7522))))
                          g7521))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7520
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7520))))))
                  g7519)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7526
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7528
                            (lambda (g7364)
                              (letrec*
                               ((g7529
                                 (letrec*
                                  ((x7530
                                    (letrec*
                                     ((x7531
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7367 x7531)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7530)))))
                               g7529))))
                          g7528))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7527
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7527))))))
                  g7526)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7532
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7534
                            (lambda (g7370)
                              (letrec*
                               ((g7535
                                 (letrec*
                                  ((x7536
                                    (letrec*
                                     ((x7537
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7373 x7537)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7536)))))
                               g7535))))
                          g7534))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7533
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7533))))))
                  g7532)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7538
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7540
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7541
                                 (letrec*
                                  ((x7542
                                    (letrec*
                                     ((x7544
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7543
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7380 x7544 x7543)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7542)))))
                               g7541))))
                          g7540))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7539
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7539))))))
                  g7538)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7545
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7547
                            (lambda (g7383)
                              (letrec*
                               ((g7548
                                 (letrec*
                                  ((x7549
                                    (letrec*
                                     ((x7550
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7386 x7550)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7549)))))
                               g7548))))
                          g7547))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7546
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7546))))))
                  g7545)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7551
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7553
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7554
                                 (letrec*
                                  ((x7555
                                    (letrec*
                                     ((x7557
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7556
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7393 x7557 x7556)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7555)))))
                               g7554))))
                          g7553))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7552
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7552))))))
                  g7551)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7558
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7558)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7559
                     (letrec*
                      ((x7560
                        (letrec*
                         ((x7561
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7561)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7560)))))
                   g7559)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7562
                     (letrec*
                      ((x7565
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7565))))
                    (g7563
                     (letrec*
                      ((x7566
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7566))))
                    (g7564
                     (letrec*
                      ((x-cnd7567
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7567
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7570
                           (letrec*
                            ((x7571
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7571))))
                          (x7568
                           (letrec*
                            ((x7569
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7569)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7570 x7568)))))))
                   g7564)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7572
                     (letrec*
                      ((x7573
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7573)))))
                   g7572)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7574
                     (letrec*
                      ((x7575
                        (letrec*
                         ((x7576
                           (letrec*
                            ((x7577
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7577)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7576)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7575)))))
                   g7574)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7578
                     (letrec*
                      ((x7579
                        (letrec*
                         ((x7580
                           (letrec*
                            ((x7581
                              (begin
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7581)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7580)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7579)))))
                   g7578)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7582
                     (letrec*
                      ((x7585
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7585))))
                    (g7583
                     (letrec*
                      ((x7586
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7586))))
                    (g7584
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
                       ((g7587
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7588 res))
                       g7588))))
                   g7584)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7589
                     (letrec*
                      ((x7590
                        (letrec*
                         ((x7591
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7591)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7590)))))
                   g7589)))
               (cdaadr
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
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7595)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7594)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7593)))))
                   g7592)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7598))))
                    (g7597
                     (letrec*
                      ((x-cnd7599
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7599
                        #f
                        (letrec*
                         ((x-cnd7600
                           (letrec*
                            ((x7601
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7601 k)))))
                         (if x-cnd7600
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7602
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7602)))))))))
                   g7597)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7604)))))
                   g7603)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7607))))
                    (g7606
                     (letrec*
                      ((x-cnd7608
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7608
                        ""
                        (letrec*
                         ((x7611
                           (letrec*
                            ((x7612
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7612))))
                          (x7609
                           (letrec*
                            ((x7610
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7610)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7611 x7609)))))))
                   g7606)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7616))))
                    (g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7617))))
                    (g7615
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7618
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7618))))
                   g7615)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7620
                        (letrec*
                         ((x7621
                           (letrec*
                            ((x7622
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7622)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7621)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7620)))))
                   g7619)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7627))))
                    (g7625
                     (letrec*
                      ((x-cnd7628
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7628
                        x
                        (letrec*
                         ((x7630
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7629
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7630 x7629)))))))
                   g7625)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7631
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7631)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x-cnd7633
                        (letrec*
                         ((x7634 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7634)))))
                      (if x-cnd7633
                        (letrec*
                         ((x7635 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7635)))
                        #f))))
                   g7632)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7638))))
                    (g7637
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7639
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7640 (if val7245 val7245 #f)))
                             g7640)))))
                       g7639))))
                   g7637)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7642
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7642 9)))))
                      (letrec*
                       ((g7643
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7644
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7644 10)))))
                            (letrec*
                             ((g7645
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7646
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7646 32))))))
                             g7645)))))
                       g7643))))
                   g7641)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7648
                        (letrec*
                         ((x7649
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7649)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7648)))))
                   g7647)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7652))))
                    (g7651
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7651)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7653 #f)) g7653)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7655)))))
                   g7654)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7658))))
                    (g7657
                     (letrec*
                      ((x-cnd7659
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7659
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7657)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7661
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7662
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7662
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7663
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7664
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7664
                                       (letrec*
                                        ((x-cnd7665
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7665
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7666
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7667
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7667
                                             (letrec*
                                              ((x-cnd7668
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7668
                                                (letrec*
                                                 ((x-cnd7669
                                                   (letrec*
                                                    ((x7671
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7670
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7671 x7670)))))
                                                 (if x-cnd7669
                                                   (letrec*
                                                    ((x7673
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7672
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7673 x7672)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7674
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7675
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7675
                                                (letrec*
                                                 ((x-cnd7676
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7676
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7677
                                                       (letrec*
                                                        ((x-cnd7678
                                                          (letrec*
                                                           ((x7679
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
                                                             (= x7679 n)))))
                                                        (if x-cnd7678
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7680
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
                                                                    ((g7681
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7682
                                                                           (letrec*
                                                                            ((x7684
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
                                                                             (x7683
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
                                                                               x7684
                                                                               x7683)))))
                                                                         (if x-cnd7682
                                                                           (letrec*
                                                                            ((x7685
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
                                                                               x7685)))
                                                                           #f)))))
                                                                    g7681))))
                                                                g7680))))
                                                           (letrec*
                                                            ((g7686
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7686))
                                                          #f))))
                                                     g7677))
                                                   #f))
                                                #f)))))
                                         g7674)))))
                                   g7666)))))
                             g7663)))))
                       g7661))))
                   g7660)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x7688
                        (letrec*
                         ((x7689
                           (letrec*
                            ((x7690
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7690)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7689)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7688)))))
                   g7687)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7691
                     (letrec*
                      ((x7692
                        (letrec*
                         ((x7693
                           (letrec*
                            ((x7694
                              (begin
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7694)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7693)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7692)))))
                   g7691)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7695
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7695)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7696
                     (letrec*
                      ((x7698
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7698))))
                    (g7697
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7699
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7700 (if val7254 val7254 #f)))
                             g7700)))))
                       g7699))))
                   g7697)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7701
                     (letrec*
                      ((x7704
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7704))))
                    (g7702
                     (letrec*
                      ((x7705
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7705))))
                    (g7703
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
                       ((g7706
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7707 res))
                       g7707))))
                   g7703)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7708
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7708)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7709
                     (letrec*
                      ((x7712
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7712))))
                    (g7710
                     (letrec*
                      ((x7713
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7713))))
                    (g7711
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7714
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7714))))
                   g7711)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7715
                     (letrec*
                      ((x7716
                        (letrec*
                         ((x7717
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7717)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7716)))))
                   g7715)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7718
                     (letrec*
                      ((x7719
                        (letrec*
                         ((x7720
                           (letrec*
                            ((x7721
                              (begin
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7721)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7720)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7719)))))
                   g7718)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7722
                     (letrec*
                      ((x7723
                        (letrec*
                         ((x7724
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7724)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7723)))))
                   g7722)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7725
                     (letrec*
                      ((x7726
                        (letrec*
                         ((x7727
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7727)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7726)))))
                   g7725)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7731
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7731))))
                    (g7729
                     (letrec*
                      ((x7732
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7732))))
                    (g7730
                     (letrec*
                      ((x7733
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7733)))))
                   g7730)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7735
                        (letrec*
                         ((x7736
                           (letrec*
                            ((x7737
                              (begin
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7737)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7736)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7735)))))
                   g7734)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7740))))
                    (g7739
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7739)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7741
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7741)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (letrec*
                         ((x7744
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7744)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7743)))))
                   g7742)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7745
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7745)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7748))))
                    (g7747
                     (letrec*
                      ((x-cnd7749
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7749
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7752
                           (letrec*
                            ((x7753
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7753))))
                          (x7750
                           (letrec*
                            ((x7751
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7751)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7752 x7750)))))))
                   g7747)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7755
                        (letrec*
                         ((x7756
                           (letrec*
                            ((x7757
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7757)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7756)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7755)))))
                   g7754)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7761)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7760)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7759)))))
                   g7758)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7764))))
                    (g7763
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7765)))))
                   g7763)))
               (caadar
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
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7769)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7768)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7767)))))
                   g7766)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7773))))
                    (g7771
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7774))))
                    (g7772
                     (letrec*
                      ((x-cnd7775
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7775
                        (letrec*
                         ((g7776
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7776)
                        (letrec*
                         ((x-cnd7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7778)))))
                         (if x-cnd7777
                           (letrec*
                            ((g7779
                              (letrec*
                               ((x7780
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7780)))))
                            g7779)
                           (letrec*
                            ((x-cnd7781
                              (letrec*
                               ((x7782
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7782)))))
                            (if x-cnd7781
                              (letrec*
                               ((g7783
                                 (letrec*
                                  ((x7785
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7784
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7785 x7784)))))
                               g7783)
                              (letrec*
                               ((x-cnd7786
                                 (letrec*
                                  ((x7787
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7787)))))
                               (if x-cnd7786
                                 (letrec*
                                  ((g7788
                                    (letrec*
                                     ((x7791
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7790
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7789
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7791 x7790 x7789)))))
                                  g7788)
                                 (letrec*
                                  ((x-cnd7792
                                    (letrec*
                                     ((x7793
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7793)))))
                                  (if x-cnd7792
                                    (letrec*
                                     ((g7794
                                       (letrec*
                                        ((x7798
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7797
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7796
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7795
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7798 x7797 x7796 x7795)))))
                                     g7794)
                                    (letrec*
                                     ((x-cnd7799
                                       (letrec*
                                        ((x7800
                                          (letrec*
                                           ((x7801
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7801)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7800)))))
                                     (if x-cnd7799
                                       (letrec*
                                        ((g7802
                                          (letrec*
                                           ((x7808
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7807
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7806
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7805
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7803
                                             (letrec*
                                              ((x7804
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7804)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7808
                                              x7807
                                              x7806
                                              x7805
                                              x7803)))))
                                        g7802)
                                       (letrec*
                                        ((x-cnd7809
                                          (letrec*
                                           ((x7810
                                             (letrec*
                                              ((x7811
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7811)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7810)))))
                                        (if x-cnd7809
                                          (letrec*
                                           ((g7812
                                             (letrec*
                                              ((x7820
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7819
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7818
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7817
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7815
                                                (letrec*
                                                 ((x7816
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7816))))
                                               (x7813
                                                (letrec*
                                                 ((x7814
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7814)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7820
                                                 x7819
                                                 x7818
                                                 x7817
                                                 x7815
                                                 x7813)))))
                                           g7812)
                                          (letrec*
                                           ((x-cnd7821
                                             (letrec*
                                              ((x7822
                                                (letrec*
                                                 ((x7823
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7823)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7822)))))
                                           (if x-cnd7821
                                             (letrec*
                                              ((g7824
                                                (letrec*
                                                 ((x7834
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7833
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7832
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7831
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7829
                                                   (letrec*
                                                    ((x7830
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7830))))
                                                  (x7827
                                                   (letrec*
                                                    ((x7828
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7828))))
                                                  (x7825
                                                   (letrec*
                                                    ((x7826
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7826)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7834
                                                    x7833
                                                    x7832
                                                    x7831
                                                    x7829
                                                    x7827
                                                    x7825)))))
                                              g7824)
                                             (letrec*
                                              ((g7835
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7835)))))))))))))))))))
                   g7772)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7836
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7838))))
                    (g7837
                     (letrec*
                      ((x-cnd7839
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7839
                        #f
                        (letrec*
                         ((x-cnd7840
                           (letrec*
                            ((x7841
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7841 e)))))
                         (if x-cnd7840
                           l
                           (letrec*
                            ((x7842
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7842)))))))))
                   g7837)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7844
                        (letrec*
                         ((x7845
                           (letrec*
                            ((x7846
                              (begin
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7846)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7845)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7844)))))
                   g7843)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7848
                        (letrec*
                         ((x7849
                           (letrec*
                            ((x7850
                              (begin
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7850)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7849)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7848)))))
                   g7847)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7851
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7851)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7854))))
                    (g7853
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7853)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7856
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7856))))
                   g7855)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7858)))))
                   g7857)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7860
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7860
                           (letrec*
                            ((x7861
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7861)))
                           #f))))
                      (letrec*
                       ((g7862
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7862))))
                   g7859)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((x7864
                        (letrec*
                         ((x7865
                           (letrec*
                            ((x7866
                              (begin
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7866)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7865)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7864)))))
                   g7863)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x-cnd7868
                        (letrec*
                         ((x7869 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7869 c)))))
                      (if x-cnd7868
                        (letrec*
                         ((x7870 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7870)))
                        #f))))
                   g7867)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7873))))
                    (g7872
                     (letrec*
                      ((x-cnd7874
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7874
                        #f
                        (letrec*
                         ((x-cnd7875
                           (letrec*
                            ((x7876
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7876 k)))))
                         (if x-cnd7875
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7877
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7877)))))))))
                   g7872)))
               (not (lambda (x) (letrec* ((g7878 (if x #f #t))) g7878)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7879
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7879)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7882))))
                    (g7881
                     (letrec*
                      ((x-cnd7883
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7883
                        #f
                        (letrec*
                         ((x-cnd7884
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7885 e)))))
                         (if x-cnd7884
                           l
                           (letrec*
                            ((x7886
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7886)))))))))
                   g7881)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x7888
                        (letrec*
                         ((x7889
                           (letrec*
                            ((x7890
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7890)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7889)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7888)))))
                   g7887)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x7893
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7893))))
                    (g7892
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7894
                             (letrec*
                              ((x-cnd7895
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7895
                                0
                                (letrec*
                                 ((x7896
                                   (letrec*
                                    ((x7897
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7897)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7896)))))))
                           g7894))))
                      (letrec*
                       ((g7898
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7898))))
                   g7892)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7902))))
                    (g7900
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7903))))
                    (g7901
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7904
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7904))))
                   g7901)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7906)))))
                   g7905)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7908
                        (letrec*
                         ((x7909
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7909)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7908)))))
                   g7907)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x7912
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7912))))
                    (g7911
                     (letrec*
                      ((x-cnd7913
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7913
                        #f
                        (letrec*
                         ((x-cnd7914
                           (letrec*
                            ((x7915
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7915 k)))))
                         (if x-cnd7914
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7916
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7916)))))))))
                   g7911)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7918)))))
                   g7917)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7922))))
                    (g7920
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7923))))
                    (g7921
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7924)))))
                   g7921)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7926
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7926))))
                   g7925)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7930))))
                    (g7928
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7931))))
                    (g7929
                     (letrec*
                      ((x-cnd7932
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7932
                        #t
                        (letrec*
                         ((x-cnd7933
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7933
                           (letrec*
                            ((g7934
                              (letrec*
                               ((x7936
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7936))))
                             (g7935
                              (letrec*
                               ((x7937
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7937)))))
                            g7935)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7929)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7940))))
                    (g7939
                     (letrec*
                      ((x-cnd7941
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7941
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7939)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7945))))
                    (g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7946))))
                    (g7944
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7947
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7947))))
                   g7944)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7949
                        (letrec*
                         ((x7950
                           (letrec*
                            ((x7951
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7951)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7950)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7949)))))
                   g7948)))
               (newline (lambda () (letrec* ((g7952 #f)) g7952)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7955
                        (letrec*
                         ((x7956
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7956))))
                       (x7954
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7955 x7954)))))
                   g7953)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7959))))
                    (g7958
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7960)))))
                   g7958)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7965))))
                    (g7962
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7966))))
                    (g7963
                     (letrec*
                      ((x7967
                        (letrec*
                         ((x7968
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7968)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7967))))
                    (g7964
                     (letrec*
                      ((x-cnd7969
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7969
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7971
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7970
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x7971 x7970)))))))
                   g7964)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x-cnd7973
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7973
                        a
                        (letrec*
                         ((x7974
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x7974)))))))
                   g7972)))
               (id (lambda (x) (letrec* ((g7975 x)) g7975)))
               (blur (lambda (y) (letrec* ((g7976 y)) g7976)))
               (lp
                (lambda (a)
                  (letrec*
                   ((g7977
                     (lambda (n)
                       (letrec*
                        ((g7978
                          (letrec*
                           ((x-cnd7979
                             (begin
                               (write '(funapp 1666 40))
                               (display "\n")
                               (zero? n))))
                           (if x-cnd7979
                             (begin
                               (write '(funapp 1668 30))
                               (display "\n")
                               (id a))
                             (letrec*
                              ((r
                                (letrec*
                                 ((x7980
                                   (begin
                                     (write '(funapp 1670 52))
                                     (display "\n")
                                     (blur id))))
                                 (begin
                                   (write '(funapp 1670 64))
                                   (display "\n")
                                   (x7980 #t))))
                               (s
                                (letrec*
                                 ((x7981
                                   (begin
                                     (write '(funapp 1671 52))
                                     (display "\n")
                                     (blur id))))
                                 (begin
                                   (write '(funapp 1671 64))
                                   (display "\n")
                                   (x7981 #f)))))
                              (letrec*
                               ((g7982
                                 (letrec*
                                  ((x7983
                                    (letrec*
                                     ((x7985
                                       (letrec*
                                        ((x7986
                                          (begin
                                            (write '(funapp 1678 57))
                                            (display "\n")
                                            (blur lp))))
                                        (begin
                                          (write '(funapp 1678 69))
                                          (display "\n")
                                          (x7986 s))))
                                      (x7984
                                       (begin
                                         (write '(funapp 1679 46))
                                         (display "\n")
                                         (sub1 n))))
                                     (begin
                                       (write '(funapp 1680 38))
                                       (display "\n")
                                       (x7985 x7984)))))
                                  (begin
                                    (write '(funapp 1681 35))
                                    (display "\n")
                                    (not x7983)))))
                               g7982))))))
                        g7978))))
                   g7977))))
              (letrec*
               ((g7987
                 (letrec*
                  ((x7988
                    (begin (write '(funapp 1686 41)) (display "\n") (lp #f))))
                  (begin (write '(funapp 1686 51)) (display "\n") (x7988 2)))))
               g7987))))
           g7407))))
       g7405)))
    g7404)))
