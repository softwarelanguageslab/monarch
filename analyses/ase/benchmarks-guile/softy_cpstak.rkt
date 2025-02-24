(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7402 #t)) g7402)))
    (meta (lambda (v) (letrec* ((g7403 v)) g7403)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7404
          (letrec*
           ((g7405
             (letrec*
              ((x-e7406 lst))
              (letrec*
               ((v1742 x-e7406))
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
                   ((x-cnd7407
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7407
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
           g7405)))
        g7404)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7408 (lambda (v) (letrec* ((g7409 v)) g7409)))) g7408)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7410
          (letrec*
           ((x7411 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7411)))))
        g7410))))
   (letrec*
    ((g7412
      (letrec*
       ((g7413
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
           ((g7414 (begin (write '(funapp 58 19)) (display "\n") '()))
            (g7415
             (letrec*
              ((empty (begin (write '(funapp 61 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7416
                     (lambda (k j lst)
                       (letrec*
                        ((g7417
                          (begin
                            (write '(funapp 69 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7418
                                  (begin
                                    (write '(funapp 71 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7418))
                             lst))))
                        g7417))))
                   g7416)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7419
                     (letrec*
                      ((x-cnd7420
                        (begin
                          (write '(funapp 80 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7420
                        g7263
                        (begin
                          (write '(blame g7261 81 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7419)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7421
                     (letrec*
                      ((x-cnd7422
                        (begin
                          (write '(funapp 88 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7422
                        g7266
                        (begin
                          (write '(blame g7264 89 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7421)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7423
                     (letrec*
                      ((x-cnd7424
                        (begin
                          (write '(funapp 96 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7424
                        g7269
                        (begin
                          (write '(blame g7267 97 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7423)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7425
                     (letrec*
                      ((x-cnd7426
                        (begin
                          (write '(funapp 105 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7427 #t)) g7427)) g7272))))
                      (if x-cnd7426
                        g7272
                        (begin
                          (write '(blame g7270 106 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7425)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7428
                     (letrec*
                      ((x-cnd7429
                        (begin
                          (write '(funapp 114 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7430 #t)) g7430)) g7275))))
                      (if x-cnd7429
                        g7275
                        (begin
                          (write '(blame g7273 115 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7428)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7431
                     (letrec*
                      ((x-cnd7432
                        (begin
                          (write '(funapp 122 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7432
                        g7278
                        (begin
                          (write '(blame g7276 123 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7431)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7433
                     (letrec*
                      ((x-cnd7434
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7434
                        g7281
                        (begin
                          (write '(blame g7279 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7433)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7435
                     (letrec*
                      ((x-cnd7436
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7436
                        g7284
                        (begin
                          (write '(blame g7282 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7435)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7437
                     (letrec*
                      ((x-cnd7438
                        (begin
                          (write '(funapp 147 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7438
                        g7287
                        (begin
                          (write '(blame g7285 148 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7437)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7439
                     (lambda (k j v)
                       (letrec*
                        ((g7440
                          (letrec*
                           ((x-cnd7441
                             (begin
                               (write '(funapp 158 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7441
                             (begin
                               (write '(funapp 159 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7440))))
                   g7439)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7442
                     (lambda (k j v)
                       (letrec*
                        ((g7443
                          (letrec*
                           ((x-cnd7444
                             (begin
                               (write '(funapp 170 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7444
                             (begin
                               (write '(funapp 172 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7448
                                (letrec*
                                 ((x7449
                                   (begin
                                     (write '(funapp 176 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 177 34))
                                   (display "\n")
                                   (contract k j x7449))))
                               (x7445
                                (letrec*
                                 ((x7447
                                   (begin
                                     (write '(funapp 180 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7446
                                   (begin
                                     (write '(funapp 180 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 181 34))
                                   (display "\n")
                                   (x7447 k j x7446)))))
                              (begin
                                (write '(funapp 182 31))
                                (display "\n")
                                (orig-cons x7448 x7445)))))))
                        g7443))))
                   g7442)))
               (any? (lambda (v) (letrec* ((g7450 #t)) g7450)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x7452
                        (begin
                          (write '(funapp 189 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 189 55))
                        (display "\n")
                        (not x7452)))))
                   g7451)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 197 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7455
                                (letrec*
                                 ((x7456
                                   (begin
                                     (write '(funapp 199 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 199 64))
                                   (display "\n")
                                   (not x7456)))))
                              g7455))
                           g7290))))
                      (if x-cnd7454
                        g7290
                        (begin
                          (write '(blame g7288 204 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7453)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7457
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7458
                          (letrec*
                           ((x-cnd7459
                             (begin
                               (write '(funapp 215 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7460
                                     (begin
                                       (write '(funapp 216 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7460))
                                g7293))))
                           (if x-cnd7459
                             g7293
                             (begin
                               (write '(blame g7291 220 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7458))))
                   g7457)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7461
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7462
                          (letrec*
                           ((x-cnd7463
                             (begin
                               (write '(funapp 232 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7464
                                     (begin
                                       (write '(funapp 233 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7464))
                                g7296))))
                           (if x-cnd7463
                             g7296
                             (begin
                               (write '(blame g7294 237 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7462))))
                   g7461)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7465
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7466
                          (letrec*
                           ((x-cnd7467
                             (begin
                               (write '(funapp 249 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7468
                                     (begin
                                       (write '(funapp 250 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7468))
                                g7299))))
                           (if x-cnd7467
                             g7299
                             (begin
                               (write '(blame g7297 254 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7466))))
                   g7465)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7469
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7470
                          (letrec*
                           ((x-cnd7471
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7472
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7472))
                                g7302))))
                           (if x-cnd7471
                             g7302
                             (begin
                               (write '(blame g7300 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7470))))
                   g7469)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7473
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7474
                          (letrec*
                           ((x-cnd7475
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7476
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7476))
                                g7305))))
                           (if x-cnd7475
                             g7305
                             (begin
                               (write '(blame g7303 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7474))))
                   g7473)))
               (meta (lambda (v) (letrec* ((g7477 v)) g7477)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 294 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 294 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7478
                    (begin
                      (write '(funapp 297 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7480
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7481
                                 (letrec*
                                  ((x7482
                                    (letrec*
                                     ((x7484
                                       (begin
                                         (write '(funapp 306 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7483
                                       (begin
                                         (write '(funapp 307 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 308 36))
                                       (display "\n")
                                       (f7312 x7484 x7483)))))
                                  (begin
                                    (write '(funapp 309 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7482)))))
                               g7481))))
                          g7480))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7479
                            (begin
                              (write '(funapp 314 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7479))))))
                  g7478)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 318 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 318 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7485
                    (begin
                      (write '(funapp 321 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7487
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7488
                                 (letrec*
                                  ((x7489
                                    (letrec*
                                     ((x7491
                                       (begin
                                         (write '(funapp 330 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7490
                                       (begin
                                         (write '(funapp 331 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 332 36))
                                       (display "\n")
                                       (f7319 x7491 x7490)))))
                                  (begin
                                    (write '(funapp 333 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7489)))))
                               g7488))))
                          g7487))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7486
                            (begin
                              (write '(funapp 338 53))
                              (display "\n")
                              (orig-- a b))))
                          g7486))))))
                  g7485)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 342 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 342 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7492
                    (begin
                      (write '(funapp 345 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7494
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7495
                                 (letrec*
                                  ((x7496
                                    (letrec*
                                     ((x7498
                                       (begin
                                         (write '(funapp 354 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7497
                                       (begin
                                         (write '(funapp 355 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 356 36))
                                       (display "\n")
                                       (f7326 x7498 x7497)))))
                                  (begin
                                    (write '(funapp 357 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7496)))))
                               g7495))))
                          g7494))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7493
                            (begin
                              (write '(funapp 362 53))
                              (display "\n")
                              (orig-* a b))))
                          g7493))))))
                  g7492)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 366 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 366 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7499
                    (begin
                      (write '(funapp 369 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7501
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7502
                                 (letrec*
                                  ((x7503
                                    (letrec*
                                     ((x7505
                                       (begin
                                         (write '(funapp 378 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7504
                                       (begin
                                         (write '(funapp 379 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 380 36))
                                       (display "\n")
                                       (f7333 x7505 x7504)))))
                                  (begin
                                    (write '(funapp 381 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7503)))))
                               g7502))))
                          g7501))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7500
                            (begin
                              (write '(funapp 386 53))
                              (display "\n")
                              (orig-< a b))))
                          g7500))))))
                  g7499)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 390 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 390 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7506
                    (begin
                      (write '(funapp 393 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7508
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7509
                                 (letrec*
                                  ((x7510
                                    (letrec*
                                     ((x7512
                                       (begin
                                         (write '(funapp 402 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7511
                                       (begin
                                         (write '(funapp 403 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 404 36))
                                       (display "\n")
                                       (f7340 x7512 x7511)))))
                                  (begin
                                    (write '(funapp 405 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7510)))))
                               g7509))))
                          g7508))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7507
                            (begin
                              (write '(funapp 410 53))
                              (display "\n")
                              (orig-> a b))))
                          g7507))))))
                  g7506)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 414 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 414 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7513
                    (begin
                      (write '(funapp 417 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7515
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7516
                                 (letrec*
                                  ((x7517
                                    (letrec*
                                     ((x7519
                                       (begin
                                         (write '(funapp 426 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7518
                                       (begin
                                         (write '(funapp 427 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 428 36))
                                       (display "\n")
                                       (f7347 x7519 x7518)))))
                                  (begin
                                    (write '(funapp 429 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7517)))))
                               g7516))))
                          g7515))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7514
                            (begin
                              (write '(funapp 434 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7514))))))
                  g7513)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 438 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 438 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7520
                    (begin
                      (write '(funapp 441 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7522
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7523
                                 (letrec*
                                  ((x7524
                                    (letrec*
                                     ((x7526
                                       (begin
                                         (write '(funapp 450 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7525
                                       (begin
                                         (write '(funapp 451 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 452 36))
                                       (display "\n")
                                       (f7354 x7526 x7525)))))
                                  (begin
                                    (write '(funapp 453 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7524)))))
                               g7523))))
                          g7522))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7521
                            (begin
                              (write '(funapp 458 53))
                              (display "\n")
                              (orig->= a b))))
                          g7521))))))
                  g7520)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 462 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 462 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7527
                    (begin
                      (write '(funapp 465 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7529
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7530
                                 (letrec*
                                  ((x7531
                                    (letrec*
                                     ((x7533
                                       (begin
                                         (write '(funapp 474 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7532
                                       (begin
                                         (write '(funapp 475 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 476 36))
                                       (display "\n")
                                       (f7361 x7533 x7532)))))
                                  (begin
                                    (write '(funapp 477 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7531)))))
                               g7530))))
                          g7529))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7528
                            (begin
                              (write '(funapp 482 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7528))))))
                  g7527)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 486 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 486 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7534
                    (begin
                      (write '(funapp 489 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7536
                            (lambda (g7364)
                              (letrec*
                               ((g7537
                                 (letrec*
                                  ((x7538
                                    (letrec*
                                     ((x7539
                                       (begin
                                         (write '(funapp 498 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 499 36))
                                       (display "\n")
                                       (f7367 x7539)))))
                                  (begin
                                    (write '(funapp 500 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7538)))))
                               g7537))))
                          g7536))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7535
                            (begin
                              (write '(funapp 505 51))
                              (display "\n")
                              (orig-car p))))
                          g7535))))))
                  g7534)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 509 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 509 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7540
                    (begin
                      (write '(funapp 512 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7542
                            (lambda (g7370)
                              (letrec*
                               ((g7543
                                 (letrec*
                                  ((x7544
                                    (letrec*
                                     ((x7545
                                       (begin
                                         (write '(funapp 521 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 522 36))
                                       (display "\n")
                                       (f7373 x7545)))))
                                  (begin
                                    (write '(funapp 523 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7544)))))
                               g7543))))
                          g7542))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7541
                            (begin
                              (write '(funapp 528 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7541))))))
                  g7540)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 532 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 532 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7546
                    (begin
                      (write '(funapp 535 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7548
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7549
                                 (letrec*
                                  ((x7550
                                    (letrec*
                                     ((x7552
                                       (begin
                                         (write '(funapp 544 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7551
                                       (begin
                                         (write '(funapp 545 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 546 36))
                                       (display "\n")
                                       (f7380 x7552 x7551)))))
                                  (begin
                                    (write '(funapp 547 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7550)))))
                               g7549))))
                          g7548))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7547
                            (begin
                              (write '(funapp 553 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7547))))))
                  g7546)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 557 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 557 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7553
                    (begin
                      (write '(funapp 560 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7555
                            (lambda (g7383)
                              (letrec*
                               ((g7556
                                 (letrec*
                                  ((x7557
                                    (letrec*
                                     ((x7558
                                       (begin
                                         (write '(funapp 569 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 570 36))
                                       (display "\n")
                                       (f7386 x7558)))))
                                  (begin
                                    (write '(funapp 571 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7557)))))
                               g7556))))
                          g7555))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7554
                            (begin
                              (write '(funapp 577 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7554))))))
                  g7553)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 581 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 581 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7559
                    (begin
                      (write '(funapp 584 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7561
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7562
                                 (letrec*
                                  ((x7563
                                    (letrec*
                                     ((x7565
                                       (begin
                                         (write '(funapp 593 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7564
                                       (begin
                                         (write '(funapp 594 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 595 36))
                                       (display "\n")
                                       (f7393 x7565 x7564)))))
                                  (begin
                                    (write '(funapp 596 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7563)))))
                               g7562))))
                          g7561))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7560
                            (begin
                              (write '(funapp 602 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7560))))))
                  g7559)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7566
                     (if cnd
                       (begin (write '(funapp 607 35)) (display "\n") '())
                       (begin
                         (write '(funapp 607 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7566)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7567
                     (letrec*
                      ((x7568
                        (letrec*
                         ((x7569
                           (begin
                             (write '(funapp 614 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 614 58))
                           (display "\n")
                           (cdr x7569)))))
                      (begin
                        (write '(funapp 615 23))
                        (display "\n")
                        (cdr x7568)))))
                   g7567)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7570
                     (letrec*
                      ((x7573
                        (begin
                          (write '(funapp 621 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 621 62))
                        (display "\n")
                        (assert x7573))))
                    (g7571
                     (letrec*
                      ((x7574
                        (begin
                          (write '(funapp 622 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 622 57))
                        (display "\n")
                        (assert x7574))))
                    (g7572
                     (letrec*
                      ((x-cnd7575
                        (begin
                          (write '(funapp 625 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7575
                        (begin (write '(funapp 627 24)) (display "\n") '())
                        (letrec*
                         ((x7578
                           (letrec*
                            ((x7579
                              (begin
                                (write '(funapp 629 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 629 61))
                              (display "\n")
                              (f x7579))))
                          (x7576
                           (letrec*
                            ((x7577
                              (begin
                                (write '(funapp 630 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 630 61))
                              (display "\n")
                              (map f x7577)))))
                         (begin
                           (write '(funapp 631 26))
                           (display "\n")
                           (cons x7578 x7576)))))))
                   g7572)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7580
                     (letrec*
                      ((x7581
                        (begin
                          (write '(funapp 636 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 636 55))
                        (display "\n")
                        (cdr x7581)))))
                   g7580)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7582
                     (letrec*
                      ((x7583
                        (letrec*
                         ((x7584
                           (letrec*
                            ((x7585
                              (begin
                                (write '(funapp 645 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 645 61))
                              (display "\n")
                              (car x7585)))))
                         (begin
                           (write '(funapp 646 26))
                           (display "\n")
                           (cdr x7584)))))
                      (begin
                        (write '(funapp 647 23))
                        (display "\n")
                        (car x7583)))))
                   g7582)))
               (cdadar
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
                                (write '(funapp 656 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 656 61))
                              (display "\n")
                              (cdr x7589)))))
                         (begin
                           (write '(funapp 657 26))
                           (display "\n")
                           (car x7588)))))
                      (begin
                        (write '(funapp 658 23))
                        (display "\n")
                        (cdr x7587)))))
                   g7586)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7590
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 664 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 664 60))
                        (display "\n")
                        (assert x7593))))
                    (g7591
                     (letrec*
                      ((x7594
                        (begin
                          (write '(funapp 666 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 666 59))
                        (display "\n")
                        (assert x7594))))
                    (g7592
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
                       ((g7595
                         (begin
                           (write '(funapp 672 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7596 res))
                       g7596))))
                   g7592)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x7598
                        (letrec*
                         ((x7599
                           (begin
                             (write '(funapp 680 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 680 58))
                           (display "\n")
                           (cdr x7599)))))
                      (begin
                        (write '(funapp 681 23))
                        (display "\n")
                        (car x7598)))))
                   g7597)))
               (cdaadr
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
                                (write '(funapp 690 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 690 61))
                              (display "\n")
                              (car x7603)))))
                         (begin
                           (write '(funapp 691 26))
                           (display "\n")
                           (car x7602)))))
                      (begin
                        (write '(funapp 692 23))
                        (display "\n")
                        (cdr x7601)))))
                   g7600)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7606
                        (begin
                          (write '(funapp 697 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 697 57))
                        (display "\n")
                        (assert x7606))))
                    (g7605
                     (letrec*
                      ((x-cnd7607
                        (begin
                          (write '(funapp 700 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7607
                        #f
                        (letrec*
                         ((x-cnd7608
                           (letrec*
                            ((x7609
                              (begin
                                (write '(funapp 705 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 705 56))
                              (display "\n")
                              (eq? x7609 k)))))
                         (if x-cnd7608
                           (begin
                             (write '(funapp 707 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7610
                              (begin
                                (write '(funapp 708 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 708 55))
                              (display "\n")
                              (assq k x7610)))))))))
                   g7605)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 713 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 713 60))
                        (display "\n")
                        (= 0 x7612)))))
                   g7611)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 718 57))
                        (display "\n")
                        (assert x7615))))
                    (g7614
                     (letrec*
                      ((x-cnd7616
                        (begin
                          (write '(funapp 721 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7616
                        ""
                        (letrec*
                         ((x7619
                           (letrec*
                            ((x7620
                              (begin
                                (write '(funapp 726 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 726 55))
                              (display "\n")
                              (char->string x7620))))
                          (x7617
                           (letrec*
                            ((x7618
                              (begin
                                (write '(funapp 728 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 728 55))
                              (display "\n")
                              (list->string x7618)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (string-append x7619 x7617)))))))
                   g7614)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 734 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 734 58))
                        (display "\n")
                        (assert x7624))))
                    (g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 735 58))
                        (display "\n")
                        (assert x7625))))
                    (g7623
                     (letrec*
                      ((val7243
                        (begin
                          (write '(funapp 738 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7626
                         (if val7243
                           val7243
                           (begin
                             (write '(funapp 740 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7626))))
                   g7623)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7628
                        (letrec*
                         ((x7629
                           (letrec*
                            ((x7630
                              (begin
                                (write '(funapp 750 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 750 61))
                              (display "\n")
                              (cdr x7630)))))
                         (begin
                           (write '(funapp 751 26))
                           (display "\n")
                           (cdr x7629)))))
                      (begin
                        (write '(funapp 752 23))
                        (display "\n")
                        (cdr x7628)))))
                   g7627)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 757 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 757 57))
                        (display "\n")
                        (assert x7634))))
                    (g7632
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 758 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 758 57))
                        (display "\n")
                        (assert x7635))))
                    (g7633
                     (letrec*
                      ((x-cnd7636
                        (begin
                          (write '(funapp 761 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7636
                        x
                        (letrec*
                         ((x7638
                           (begin
                             (write '(funapp 765 34))
                             (display "\n")
                             (cdr x)))
                          (x7637
                           (begin
                             (write '(funapp 765 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 766 26))
                           (display "\n")
                           (list-tail x7638 x7637)))))))
                   g7633)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7639
                     (begin (write '(funapp 768 49)) (display "\n") '())))
                   g7639)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x-cnd7641
                        (letrec*
                         ((x7642 #\a))
                         (begin
                           (write '(funapp 775 48))
                           (display "\n")
                           (char-ci>=? c x7642)))))
                      (if x-cnd7641
                        (letrec*
                         ((x7643 #\z))
                         (begin
                           (write '(funapp 777 48))
                           (display "\n")
                           (char-ci<=? c x7643)))
                        #f))))
                   g7640)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 783 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 783 59))
                        (display "\n")
                        (assert x7646))))
                    (g7645
                     (letrec*
                      ((val7244
                        (begin
                          (write '(funapp 786 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7647
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (begin
                                (write '(funapp 792 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7648 (if val7245 val7245 #f)))
                             g7648)))))
                       g7647))))
                   g7645)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((val7246
                        (letrec*
                         ((x7650
                           (begin
                             (write '(funapp 804 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 804 62))
                           (display "\n")
                           (= x7650 9)))))
                      (letrec*
                       ((g7651
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7652
                                 (begin
                                   (write '(funapp 812 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 813 32))
                                 (display "\n")
                                 (= x7652 10)))))
                            (letrec*
                             ((g7653
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((x7654
                                    (begin
                                      (write '(funapp 819 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 820 35))
                                    (display "\n")
                                    (= x7654 32))))))
                             g7653)))))
                       g7651))))
                   g7649)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7656
                        (letrec*
                         ((x7657
                           (begin
                             (write '(funapp 829 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 829 58))
                           (display "\n")
                           (cdr x7657)))))
                      (begin
                        (write '(funapp 830 23))
                        (display "\n")
                        (cdr x7656)))))
                   g7655)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 835 59))
                        (display "\n")
                        (assert x7660))))
                    (g7659
                     (begin (write '(funapp 836 28)) (display "\n") (> x 0))))
                   g7659)))
               ($pc (begin (write '(funapp 838 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7661 #f)) g7661)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 844 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 844 55))
                        (display "\n")
                        (cdr x7663)))))
                   g7662)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 849 59))
                        (display "\n")
                        (assert x7666))))
                    (g7665
                     (letrec*
                      ((x-cnd7667
                        (begin
                          (write '(funapp 852 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7667
                        (begin
                          (write '(funapp 853 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 853 49))
                          (display "\n")
                          (floor x))))))
                   g7665)))
               ($cmp (begin (write '(funapp 855 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 861 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7669
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x-cnd7670
                                 (begin
                                   (write '(funapp 869 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7670
                                 (begin
                                   (write '(funapp 870 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7671
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((val7250
                                    (letrec*
                                     ((x-cnd7672
                                       (begin
                                         (write '(funapp 878 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7672
                                       (letrec*
                                        ((x-cnd7673
                                          (begin
                                            (write '(funapp 881 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7673
                                          (begin
                                            (write '(funapp 882 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7674
                                     (if val7250
                                       val7250
                                       (letrec*
                                        ((val7251
                                          (letrec*
                                           ((x-cnd7675
                                             (begin
                                               (write '(funapp 891 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7675
                                             (letrec*
                                              ((x-cnd7676
                                                (begin
                                                  (write '(funapp 894 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7676
                                                (letrec*
                                                 ((x-cnd7677
                                                   (letrec*
                                                    ((x7679
                                                      (begin
                                                        (write
                                                         '(funapp 899 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7678
                                                      (begin
                                                        (write
                                                         '(funapp 900 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 901 53))
                                                      (display "\n")
                                                      (equal? x7679 x7678)))))
                                                 (if x-cnd7677
                                                   (letrec*
                                                    ((x7681
                                                      (begin
                                                        (write
                                                         '(funapp 904 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7680
                                                      (begin
                                                        (write
                                                         '(funapp 905 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 906 53))
                                                      (display "\n")
                                                      (equal? x7681 x7680)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7682
                                           (if val7251
                                             val7251
                                             (letrec*
                                              ((x-cnd7683
                                                (begin
                                                  (write '(funapp 915 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7683
                                                (letrec*
                                                 ((x-cnd7684
                                                   (begin
                                                     (write '(funapp 918 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7684
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 921 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7685
                                                       (letrec*
                                                        ((x-cnd7686
                                                          (letrec*
                                                           ((x7687
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
                                                             (= x7687 n)))))
                                                        (if x-cnd7686
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7688
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
                                                                    ((g7689
                                                                      (if val7252
                                                                        val7252
                                                                        (letrec*
                                                                         ((x-cnd7690
                                                                           (letrec*
                                                                            ((x7692
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
                                                                             (x7691
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
                                                                               x7692
                                                                               x7691)))))
                                                                         (if x-cnd7690
                                                                           (letrec*
                                                                            ((x7693
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
                                                                               x7693)))
                                                                           #f)))))
                                                                    g7689))))
                                                                g7688))))
                                                           (letrec*
                                                            ((g7694
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   970
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7694))
                                                          #f))))
                                                     g7685))
                                                   #f))
                                                #f)))))
                                         g7682)))))
                                   g7674)))))
                             g7671)))))
                       g7669))))
                   g7668)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7695
                     (letrec*
                      ((x7696
                        (letrec*
                         ((x7697
                           (letrec*
                            ((x7698
                              (begin
                                (write '(funapp 988 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 988 61))
                              (display "\n")
                              (car x7698)))))
                         (begin
                           (write '(funapp 989 26))
                           (display "\n")
                           (car x7697)))))
                      (begin
                        (write '(funapp 990 23))
                        (display "\n")
                        (cdr x7696)))))
                   g7695)))
               (caaddr
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
                                (write '(funapp 999 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 999 61))
                              (display "\n")
                              (cdr x7702)))))
                         (begin
                           (write '(funapp 1000 26))
                           (display "\n")
                           (car x7701)))))
                      (begin
                        (write '(funapp 1001 23))
                        (display "\n")
                        (car x7700)))))
                   g7699)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7703
                     (begin
                       (write '(funapp 1003 53))
                       (display "\n")
                       (eq? x y))))
                   g7703)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7704
                     (letrec*
                      ((x7706
                        (begin
                          (write '(funapp 1007 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1007 59))
                        (display "\n")
                        (assert x7706))))
                    (g7705
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1010 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7707
                         (if val7253
                           val7253
                           (letrec*
                            ((val7254
                              (begin
                                (write '(funapp 1016 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7708 (if val7254 val7254 #f)))
                             g7708)))))
                       g7707))))
                   g7705)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7709
                     (letrec*
                      ((x7712
                        (begin
                          (write '(funapp 1026 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1026 60))
                        (display "\n")
                        (assert x7712))))
                    (g7710
                     (letrec*
                      ((x7713
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1028 59))
                        (display "\n")
                        (assert x7713))))
                    (g7711
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
                       ((g7714
                         (begin
                           (write '(funapp 1034 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7715 res))
                       g7715))))
                   g7711)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7716
                     (begin
                       (write '(funapp 1037 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1037 57))
                          (display "\n")
                          '())))))
                   g7716)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7717
                     (letrec*
                      ((x7720
                        (begin
                          (write '(funapp 1041 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1041 58))
                        (display "\n")
                        (assert x7720))))
                    (g7718
                     (letrec*
                      ((x7721
                        (begin
                          (write '(funapp 1042 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1042 58))
                        (display "\n")
                        (assert x7721))))
                    (g7719
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1045 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7722
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1047 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7722))))
                   g7719)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7723
                     (letrec*
                      ((x7724
                        (letrec*
                         ((x7725
                           (begin
                             (write '(funapp 1055 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1055 58))
                           (display "\n")
                           (car x7725)))))
                      (begin
                        (write '(funapp 1056 23))
                        (display "\n")
                        (cdr x7724)))))
                   g7723)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x7727
                        (letrec*
                         ((x7728
                           (letrec*
                            ((x7729
                              (begin
                                (write '(funapp 1065 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1065 61))
                              (display "\n")
                              (cdr x7729)))))
                         (begin
                           (write '(funapp 1066 26))
                           (display "\n")
                           (car x7728)))))
                      (begin
                        (write '(funapp 1067 23))
                        (display "\n")
                        (cdr x7727)))))
                   g7726)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7731
                        (letrec*
                         ((x7732
                           (begin
                             (write '(funapp 1075 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1075 58))
                           (display "\n")
                           (cdr x7732)))))
                      (begin
                        (write '(funapp 1076 23))
                        (display "\n")
                        (car x7731)))))
                   g7730)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7734
                        (letrec*
                         ((x7735
                           (begin
                             (write '(funapp 1083 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1083 58))
                           (display "\n")
                           (car x7735)))))
                      (begin
                        (write '(funapp 1084 23))
                        (display "\n")
                        (car x7734)))))
                   g7733)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7739))))
                    (g7737
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1090 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1090 58))
                        (display "\n")
                        (assert x7740))))
                    (g7738
                     (letrec*
                      ((x7741
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1091 66))
                        (display "\n")
                        (not x7741)))))
                   g7738)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (letrec*
                         ((x7744
                           (letrec*
                            ((x7745
                              (begin
                                (write '(funapp 1101 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1101 61))
                              (display "\n")
                              (car x7745)))))
                         (begin
                           (write '(funapp 1102 26))
                           (display "\n")
                           (car x7744)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (car x7743)))))
                   g7742)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1108 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1108 59))
                        (display "\n")
                        (assert x7748))))
                    (g7747
                     (begin (write '(funapp 1109 28)) (display "\n") (< x 0))))
                   g7747)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7749
                     (begin
                       (write '(funapp 1111 53))
                       (display "\n")
                       (memq e l))))
                   g7749)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7751
                        (letrec*
                         ((x7752
                           (begin
                             (write '(funapp 1117 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1117 58))
                           (display "\n")
                           (car x7752)))))
                      (begin
                        (write '(funapp 1118 23))
                        (display "\n")
                        (car x7751)))))
                   g7750)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7753
                     (begin (write '(funapp 1120 51)) (display "\n") '())))
                   g7753)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1124 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1124 57))
                        (display "\n")
                        (assert x7756))))
                    (g7755
                     (letrec*
                      ((x-cnd7757
                        (begin
                          (write '(funapp 1127 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7757
                        (begin (write '(funapp 1129 24)) (display "\n") '())
                        (letrec*
                         ((x7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1131 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1131 61))
                              (display "\n")
                              (reverse x7761))))
                          (x7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1132 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1132 61))
                              (display "\n")
                              (list x7759)))))
                         (begin
                           (write '(funapp 1133 26))
                           (display "\n")
                           (append x7760 x7758)))))))
                   g7755)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7763
                        (letrec*
                         ((x7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (car x7765)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (car x7764)))))
                      (begin
                        (write '(funapp 1144 23))
                        (display "\n")
                        (car x7763)))))
                   g7762)))
               (cddadr
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
                                (write '(funapp 1153 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1153 61))
                              (display "\n")
                              (car x7769)))))
                         (begin
                           (write '(funapp 1154 26))
                           (display "\n")
                           (cdr x7768)))))
                      (begin
                        (write '(funapp 1155 23))
                        (display "\n")
                        (cdr x7767)))))
                   g7766)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1160 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1160 59))
                        (display "\n")
                        (assert x7772))))
                    (g7771
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1161 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1161 60))
                        (display "\n")
                        (= 1 x7773)))))
                   g7771)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7775
                        (letrec*
                         ((x7776
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1170 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1170 61))
                              (display "\n")
                              (cdr x7777)))))
                         (begin
                           (write '(funapp 1171 26))
                           (display "\n")
                           (car x7776)))))
                      (begin
                        (write '(funapp 1172 23))
                        (display "\n")
                        (car x7775)))))
                   g7774)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1178 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1178 59))
                        (display "\n")
                        (assert x7781))))
                    (g7779
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1179 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1179 60))
                        (display "\n")
                        (assert x7782))))
                    (g7780
                     (letrec*
                      ((x-cnd7783
                        (begin
                          (write '(funapp 1182 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7783
                        (letrec*
                         ((g7784
                           (begin
                             (write '(funapp 1184 42))
                             (display "\n")
                             (proc))))
                         g7784)
                        (letrec*
                         ((x-cnd7785
                           (letrec*
                            ((x7786
                              (begin
                                (write '(funapp 1187 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1187 58))
                              (display "\n")
                              (null? x7786)))))
                         (if x-cnd7785
                           (letrec*
                            ((g7787
                              (letrec*
                               ((x7788
                                 (begin
                                   (write '(funapp 1191 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1191 61))
                                 (display "\n")
                                 (proc x7788)))))
                            g7787)
                           (letrec*
                            ((x-cnd7789
                              (letrec*
                               ((x7790
                                 (begin
                                   (write '(funapp 1195 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1195 62))
                                 (display "\n")
                                 (null? x7790)))))
                            (if x-cnd7789
                              (letrec*
                               ((g7791
                                 (letrec*
                                  ((x7793
                                    (begin
                                      (write '(funapp 1200 43))
                                      (display "\n")
                                      (car args)))
                                   (x7792
                                    (begin
                                      (write '(funapp 1200 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1201 35))
                                    (display "\n")
                                    (proc x7793 x7792)))))
                               g7791)
                              (letrec*
                               ((x-cnd7794
                                 (letrec*
                                  ((x7795
                                    (begin
                                      (write '(funapp 1206 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1207 35))
                                    (display "\n")
                                    (null? x7795)))))
                               (if x-cnd7794
                                 (letrec*
                                  ((g7796
                                    (letrec*
                                     ((x7799
                                       (begin
                                         (write '(funapp 1212 46))
                                         (display "\n")
                                         (car args)))
                                      (x7798
                                       (begin
                                         (write '(funapp 1213 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7797
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1215 38))
                                       (display "\n")
                                       (proc x7799 x7798 x7797)))))
                                  g7796)
                                 (letrec*
                                  ((x-cnd7800
                                    (letrec*
                                     ((x7801
                                       (begin
                                         (write '(funapp 1220 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1221 38))
                                       (display "\n")
                                       (null? x7801)))))
                                  (if x-cnd7800
                                    (letrec*
                                     ((g7802
                                       (letrec*
                                        ((x7806
                                          (begin
                                            (write '(funapp 1226 49))
                                            (display "\n")
                                            (car args)))
                                         (x7805
                                          (begin
                                            (write '(funapp 1227 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7804
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7803
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1230 41))
                                          (display "\n")
                                          (proc x7806 x7805 x7804 x7803)))))
                                     g7802)
                                    (letrec*
                                     ((x-cnd7807
                                       (letrec*
                                        ((x7808
                                          (letrec*
                                           ((x7809
                                             (begin
                                               (write '(funapp 1237 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1238 44))
                                             (display "\n")
                                             (cdr x7809)))))
                                        (begin
                                          (write '(funapp 1239 41))
                                          (display "\n")
                                          (null? x7808)))))
                                     (if x-cnd7807
                                       (letrec*
                                        ((g7810
                                          (letrec*
                                           ((x7816
                                             (begin
                                               (write '(funapp 1244 52))
                                               (display "\n")
                                               (car args)))
                                            (x7815
                                             (begin
                                               (write '(funapp 1245 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7814
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7813
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7811
                                             (letrec*
                                              ((x7812
                                                (begin
                                                  (write '(funapp 1250 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1251 47))
                                                (display "\n")
                                                (car x7812)))))
                                           (begin
                                             (write '(funapp 1252 44))
                                             (display "\n")
                                             (proc
                                              x7816
                                              x7815
                                              x7814
                                              x7813
                                              x7811)))))
                                        g7810)
                                       (letrec*
                                        ((x-cnd7817
                                          (letrec*
                                           ((x7818
                                             (letrec*
                                              ((x7819
                                                (begin
                                                  (write '(funapp 1264 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1265 47))
                                                (display "\n")
                                                (cddr x7819)))))
                                           (begin
                                             (write '(funapp 1266 44))
                                             (display "\n")
                                             (null? x7818)))))
                                        (if x-cnd7817
                                          (letrec*
                                           ((g7820
                                             (letrec*
                                              ((x7828
                                                (begin
                                                  (write '(funapp 1271 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7827
                                                (begin
                                                  (write '(funapp 1272 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7826
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7825
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7823
                                                (letrec*
                                                 ((x7824
                                                   (begin
                                                     (write '(funapp 1277 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1278 50))
                                                   (display "\n")
                                                   (car x7824))))
                                               (x7821
                                                (letrec*
                                                 ((x7822
                                                   (begin
                                                     (write '(funapp 1281 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1282 50))
                                                   (display "\n")
                                                   (cadr x7822)))))
                                              (begin
                                                (write '(funapp 1283 47))
                                                (display "\n")
                                                (proc
                                                 x7828
                                                 x7827
                                                 x7826
                                                 x7825
                                                 x7823
                                                 x7821)))))
                                           g7820)
                                          (letrec*
                                           ((x-cnd7829
                                             (letrec*
                                              ((x7830
                                                (letrec*
                                                 ((x7831
                                                   (begin
                                                     (write '(funapp 1296 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1297 50))
                                                   (display "\n")
                                                   (cdddr x7831)))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (null? x7830)))))
                                           (if x-cnd7829
                                             (letrec*
                                              ((g7832
                                                (letrec*
                                                 ((x7842
                                                   (begin
                                                     (write '(funapp 1303 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7841
                                                   (begin
                                                     (write '(funapp 1304 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7840
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7839
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7837
                                                   (letrec*
                                                    ((x7838
                                                      (begin
                                                        (write
                                                         '(funapp 1309 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1310 53))
                                                      (display "\n")
                                                      (car x7838))))
                                                  (x7835
                                                   (letrec*
                                                    ((x7836
                                                      (begin
                                                        (write
                                                         '(funapp 1313 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1314 53))
                                                      (display "\n")
                                                      (cadr x7836))))
                                                  (x7833
                                                   (letrec*
                                                    ((x7834
                                                      (begin
                                                        (write
                                                         '(funapp 1317 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1318 53))
                                                      (display "\n")
                                                      (caddr x7834)))))
                                                 (begin
                                                   (write '(funapp 1319 50))
                                                   (display "\n")
                                                   (proc
                                                    x7842
                                                    x7841
                                                    x7840
                                                    x7839
                                                    x7837
                                                    x7835
                                                    x7833)))))
                                              g7832)
                                             (letrec*
                                              ((g7843
                                                (begin
                                                  (write '(funapp 1330 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7843)))))))))))))))))))
                   g7780)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1336 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1336 57))
                        (display "\n")
                        (assert x7846))))
                    (g7845
                     (letrec*
                      ((x-cnd7847
                        (begin
                          (write '(funapp 1339 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7847
                        #f
                        (letrec*
                         ((x-cnd7848
                           (letrec*
                            ((x7849
                              (begin
                                (write '(funapp 1344 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1344 55))
                              (display "\n")
                              (equal? x7849 e)))))
                         (if x-cnd7848
                           l
                           (letrec*
                            ((x7850
                              (begin
                                (write '(funapp 1347 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1347 55))
                              (display "\n")
                              (member e x7850)))))))))
                   g7845)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7851
                     (letrec*
                      ((x7852
                        (letrec*
                         ((x7853
                           (letrec*
                            ((x7854
                              (begin
                                (write '(funapp 1356 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1356 61))
                              (display "\n")
                              (cdr x7854)))))
                         (begin
                           (write '(funapp 1357 26))
                           (display "\n")
                           (cdr x7853)))))
                      (begin
                        (write '(funapp 1358 23))
                        (display "\n")
                        (cdr x7852)))))
                   g7851)))
               (cadddr
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
                                (write '(funapp 1367 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1367 61))
                              (display "\n")
                              (cdr x7858)))))
                         (begin
                           (write '(funapp 1368 26))
                           (display "\n")
                           (cdr x7857)))))
                      (begin
                        (write '(funapp 1369 23))
                        (display "\n")
                        (car x7856)))))
                   g7855)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7859
                     (begin
                       (write '(funapp 1371 53))
                       (display "\n")
                       (random 42))))
                   g7859)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x7862
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1375 59))
                        (display "\n")
                        (assert x7862))))
                    (g7861
                     (begin (write '(funapp 1376 28)) (display "\n") (= x 0))))
                   g7861)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1383 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7864
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1385 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7864))))
                   g7863)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x7866
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1391 55))
                        (display "\n")
                        (car x7866)))))
                   g7865)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7868
                           (begin
                             (write '(funapp 1401 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7868
                           (letrec*
                            ((x7869
                              (begin
                                (write '(funapp 1403 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1403 55))
                              (display "\n")
                              (list? x7869)))
                           #f))))
                      (letrec*
                       ((g7870
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1406 52))
                             (display "\n")
                             (null? l)))))
                       g7870))))
                   g7867)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7872
                        (letrec*
                         ((x7873
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 1416 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1416 61))
                              (display "\n")
                              (car x7874)))))
                         (begin
                           (write '(funapp 1417 26))
                           (display "\n")
                           (cdr x7873)))))
                      (begin
                        (write '(funapp 1418 23))
                        (display "\n")
                        (cdr x7872)))))
                   g7871)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x-cnd7876
                        (letrec*
                         ((x7877 #\0))
                         (begin
                           (write '(funapp 1425 58))
                           (display "\n")
                           (char<=? x7877 c)))))
                      (if x-cnd7876
                        (letrec*
                         ((x7878 #\9))
                         (begin
                           (write '(funapp 1427 48))
                           (display "\n")
                           (char<=? c x7878)))
                        #f))))
                   g7875)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7881
                        (begin
                          (write '(funapp 1434 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1434 57))
                        (display "\n")
                        (assert x7881))))
                    (g7880
                     (letrec*
                      ((x-cnd7882
                        (begin
                          (write '(funapp 1437 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7882
                        #f
                        (letrec*
                         ((x-cnd7883
                           (letrec*
                            ((x7884
                              (begin
                                (write '(funapp 1442 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1442 56))
                              (display "\n")
                              (eqv? x7884 k)))))
                         (if x-cnd7883
                           (begin
                             (write '(funapp 1444 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 1445 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1445 55))
                              (display "\n")
                              (assq k x7885)))))))))
                   g7880)))
               (not (lambda (x) (letrec* ((g7886 (if x #f #t))) g7886)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7887
                     (begin
                       (write '(funapp 1449 50))
                       (display "\n")
                       (append l1 l2))))
                   g7887)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7890
                        (begin
                          (write '(funapp 1453 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1453 57))
                        (display "\n")
                        (assert x7890))))
                    (g7889
                     (letrec*
                      ((x-cnd7891
                        (begin
                          (write '(funapp 1456 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7891
                        #f
                        (letrec*
                         ((x-cnd7892
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 1461 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1461 55))
                              (display "\n")
                              (eq? x7893 e)))))
                         (if x-cnd7892
                           l
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 1464 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1464 55))
                              (display "\n")
                              (memq e x7894)))))))))
                   g7889)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7896
                        (letrec*
                         ((x7897
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1473 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1473 61))
                              (display "\n")
                              (car x7898)))))
                         (begin
                           (write '(funapp 1474 26))
                           (display "\n")
                           (cdr x7897)))))
                      (begin
                        (write '(funapp 1475 23))
                        (display "\n")
                        (car x7896)))))
                   g7895)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7901))))
                    (g7900
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7902
                             (letrec*
                              ((x-cnd7903
                                (begin
                                  (write '(funapp 1488 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7903
                                0
                                (letrec*
                                 ((x7904
                                   (letrec*
                                    ((x7905
                                      (begin
                                        (write '(funapp 1493 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1493 63))
                                      (display "\n")
                                      (rec x7905)))))
                                 (begin
                                   (write '(funapp 1494 34))
                                   (display "\n")
                                   (+ 1 x7904)))))))
                           g7902))))
                      (letrec*
                       ((g7906
                         (begin
                           (write '(funapp 1496 40))
                           (display "\n")
                           (rec l))))
                       g7906))))
                   g7900)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1501 58))
                        (display "\n")
                        (assert x7910))))
                    (g7908
                     (letrec*
                      ((x7911
                        (begin
                          (write '(funapp 1502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1502 58))
                        (display "\n")
                        (assert x7911))))
                    (g7909
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1505 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7912
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1507 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7912))))
                   g7909)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 1513 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1513 65))
                        (display "\n")
                        (not x7914)))))
                   g7913)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7916
                        (letrec*
                         ((x7917
                           (begin
                             (write '(funapp 1520 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1520 58))
                           (display "\n")
                           (car x7917)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (cdr x7916)))))
                   g7915)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7920))))
                    (g7919
                     (letrec*
                      ((x-cnd7921
                        (begin
                          (write '(funapp 1529 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7921
                        #f
                        (letrec*
                         ((x-cnd7922
                           (letrec*
                            ((x7923
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1534 56))
                              (display "\n")
                              (equal? x7923 k)))))
                         (if x-cnd7922
                           (begin
                             (write '(funapp 1536 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1537 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1537 55))
                              (display "\n")
                              (assoc k x7924)))))))))
                   g7919)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7926
                        (begin
                          (write '(funapp 1542 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1542 55))
                        (display "\n")
                        (car x7926)))))
                   g7925)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7930))))
                    (g7928
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7931))))
                    (g7929
                     (letrec*
                      ((x7932
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1549 63))
                        (display "\n")
                        (not x7932)))))
                   g7929)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1556 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7934
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1558 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7934))))
                   g7933)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1564 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1564 62))
                        (display "\n")
                        (assert x7938))))
                    (g7936
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1565 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1565 57))
                        (display "\n")
                        (assert x7939))))
                    (g7937
                     (letrec*
                      ((x-cnd7940
                        (begin
                          (write '(funapp 1568 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7940
                        #t
                        (letrec*
                         ((x-cnd7941
                           (begin
                             (write '(funapp 1572 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7941
                           (letrec*
                            ((g7942
                              (letrec*
                               ((x7944
                                 (begin
                                   (write '(funapp 1575 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1575 64))
                                 (display "\n")
                                 (f x7944))))
                             (g7943
                              (letrec*
                               ((x7945
                                 (begin
                                   (write '(funapp 1577 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1577 58))
                                 (display "\n")
                                 (for-each f x7945)))))
                            g7943)
                           (begin
                             (write '(funapp 1579 27))
                             (display "\n")
                             '())))))))
                   g7937)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1584 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1584 59))
                        (display "\n")
                        (assert x7948))))
                    (g7947
                     (letrec*
                      ((x-cnd7949
                        (begin
                          (write '(funapp 1586 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7949
                        (begin
                          (write '(funapp 1586 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7947)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1591 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1591 58))
                        (display "\n")
                        (assert x7953))))
                    (g7951
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7954))))
                    (g7952
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1595 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7955
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1597 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7955))))
                   g7952)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7957
                        (letrec*
                         ((x7958
                           (letrec*
                            ((x7959
                              (begin
                                (write '(funapp 1607 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1607 61))
                              (display "\n")
                              (cdr x7959)))))
                         (begin
                           (write '(funapp 1608 26))
                           (display "\n")
                           (cdr x7958)))))
                      (begin
                        (write '(funapp 1609 23))
                        (display "\n")
                        (car x7957)))))
                   g7956)))
               (newline (lambda () (letrec* ((g7960 #f)) g7960)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7963
                        (letrec*
                         ((x7964
                           (begin
                             (write '(funapp 1617 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1617 58))
                           (display "\n")
                           (abs x7964))))
                       (x7962
                        (begin
                          (write '(funapp 1618 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (/ x7963 x7962)))))
                   g7961)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1625 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1625 59))
                        (display "\n")
                        (assert x7967))))
                    (g7966
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1626 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1626 56))
                        (display "\n")
                        (not x7968)))))
                   g7966)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1631 57))
                        (display "\n")
                        (assert x7973))))
                    (g7970
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1632 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1632 63))
                        (display "\n")
                        (assert x7974))))
                    (g7971
                     (letrec*
                      ((x7975
                        (letrec*
                         ((x7976
                           (begin
                             (write '(funapp 1635 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1635 61))
                           (display "\n")
                           (< index x7976)))))
                      (begin
                        (write '(funapp 1636 23))
                        (display "\n")
                        (assert x7975))))
                    (g7972
                     (letrec*
                      ((x-cnd7977
                        (begin
                          (write '(funapp 1639 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7977
                        (begin
                          (write '(funapp 1641 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7979
                           (begin
                             (write '(funapp 1643 34))
                             (display "\n")
                             (cdr l)))
                          (x7978
                           (begin
                             (write '(funapp 1643 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1644 26))
                           (display "\n")
                           (list-ref x7979 x7978)))))))
                   g7972)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x-cnd7981
                        (begin
                          (write '(funapp 1651 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7981
                        a
                        (letrec*
                         ((x7982
                           (begin
                             (write '(funapp 1654 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1654 57))
                           (display "\n")
                           (gcd b x7982)))))))
                   g7980)))
               (tak
                (lambda (x y z k)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x-cnd7984
                        (letrec*
                         ((x7985
                           (begin
                             (write '(funapp 1661 52))
                             (display "\n")
                             (< y x))))
                         (begin
                           (write '(funapp 1661 62))
                           (display "\n")
                           (not x7985)))))
                      (if x-cnd7984
                        (begin (write '(funapp 1663 25)) (display "\n") (k z))
                        (letrec*
                         ((x7991
                           (begin
                             (write '(funapp 1665 34))
                             (display "\n")
                             (- x 1))))
                         (begin
                           (write '(funapp 1666 26))
                           (display "\n")
                           (tak
                            x7991
                            y
                            z
                            (lambda (v1)
                              (letrec*
                               ((g7986
                                 (letrec*
                                  ((x7990
                                    (begin
                                      (write '(funapp 1674 41))
                                      (display "\n")
                                      (- y 1))))
                                  (begin
                                    (write '(funapp 1675 33))
                                    (display "\n")
                                    (tak
                                     x7990
                                     z
                                     x
                                     (lambda (v2)
                                       (letrec*
                                        ((g7987
                                          (letrec*
                                           ((x7989
                                             (begin
                                               (write '(funapp 1683 48))
                                               (display "\n")
                                               (- z 1))))
                                           (begin
                                             (write '(funapp 1684 40))
                                             (display "\n")
                                             (tak
                                              x7989
                                              x
                                              y
                                              (lambda (v3)
                                                (letrec*
                                                 ((g7988
                                                   (begin
                                                     (write '(funapp 1690 52))
                                                     (display "\n")
                                                     (tak v1 v2 v3 k))))
                                                 g7988)))))))
                                        g7987)))))))
                               g7986)))))))))
                   g7983)))
               (tak-main
                (lambda (x y z)
                  (letrec*
                   ((g7992
                     (begin
                       (write '(funapp 1699 22))
                       (display "\n")
                       (tak x y z (lambda (x) (letrec* ((g7993 x)) g7993))))))
                   g7992))))
              (letrec*
               ((g7994
                 (begin
                   (write '(funapp 1703 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1704 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x7998
                          (letrec*
                           ((xj7394
                             (begin
                               (write '(funapp 1708 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1708 37))
                                  (display "\n")
                                  'module))))
                            (xk7395
                             (begin
                               (write '(funapp 1708 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1708 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g7999
                              (begin
                                (write '(funapp 1711 27))
                                (display "\n")
                                ((lambda (j7399 k7400 f7401)
                                   (letrec*
                                    ((g8000
                                      (lambda (g7396 g7397 g7398)
                                        (letrec*
                                         ((g8001
                                           (letrec*
                                            ((x8002
                                              (letrec*
                                               ((x8005
                                                 (begin
                                                   (write '(funapp 1721 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7399
                                                    k7400
                                                    g7396)))
                                                (x8004
                                                 (begin
                                                   (write '(funapp 1723 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7399
                                                    k7400
                                                    g7397)))
                                                (x8003
                                                 (begin
                                                   (write '(funapp 1725 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7399
                                                    k7400
                                                    g7398))))
                                               (begin
                                                 (write '(funapp 1726 42))
                                                 (display "\n")
                                                 (f7401 x8005 x8004 x8003)))))
                                            (begin
                                              (write '(funapp 1727 39))
                                              (display "\n")
                                              (integer?/c
                                               j7399
                                               k7400
                                               x8002)))))
                                         g8001))))
                                    g8000))
                                 xj7394
                                 xk7395
                                 tak-main))))
                            g7999)))
                         (x7997 (input))
                         (x7996 (input))
                         (x7995 (input)))
                        (begin
                          (write '(funapp 1737 21))
                          (display "\n")
                          (x7998 x7997 x7996 x7995)))))))))
               g7994))))
           g7415))))
       g7413)))
    g7412)))
