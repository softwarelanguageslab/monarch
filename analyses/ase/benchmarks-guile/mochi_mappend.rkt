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
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7427
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7427)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7428
                 (letrec*
                  ((x7430
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7430))))
                (g7429
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7431
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7432 (if val7244 val7244 #f))) g7432)))))
                   g7431))))
               g7429)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7433
                 (letrec*
                  ((x7435
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7435))))
                (g7434
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7436
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7437 (if val7246 val7246 #f))) g7437)))))
                   g7436))))
               g7434)))
           (>
            (lambda (x y)
              (letrec*
               ((g7438
                 (letrec*
                  ((x7440
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7440))))
                (g7439
                 (letrec*
                  ((x7441
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7441)))))
               g7439)))
           (orig-+ +)
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
           ((g7442 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7443
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7444
                     (lambda (k j lst)
                       (letrec*
                        ((g7445
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7446
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7446))
                             lst))))
                        g7445))))
                   g7444)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7448
                        g7263
                        (begin
                          (write '(blame g7261 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7447)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7450
                        g7266
                        (begin
                          (write '(blame g7264 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7449)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7452
                        g7269
                        (begin
                          (write '(blame g7267 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7451)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7455 #t)) g7455)) g7272))))
                      (if x-cnd7454
                        g7272
                        (begin
                          (write '(blame g7270 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7453)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7458 #t)) g7458)) g7275))))
                      (if x-cnd7457
                        g7275
                        (begin
                          (write '(blame g7273 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7456)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x-cnd7460
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7460
                        g7278
                        (begin
                          (write '(blame g7276 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7459)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x-cnd7462
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7462
                        g7281
                        (begin
                          (write '(blame g7279 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7461)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7463
                     (letrec*
                      ((x-cnd7464
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7464
                        g7284
                        (begin
                          (write '(blame g7282 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7463)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x-cnd7466
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7466
                        g7287
                        (begin
                          (write '(blame g7285 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7465)))
               (string?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x-cnd7468
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7290))))
                      (if x-cnd7468
                        g7290
                        (begin
                          (write '(blame g7288 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7467)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7469
                     (lambda (k j v)
                       (letrec*
                        ((g7470
                          (letrec*
                           ((x-cnd7471
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7471
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7470))))
                   g7469)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7472
                     (lambda (k j v)
                       (letrec*
                        ((g7473
                          (letrec*
                           ((x-cnd7474
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7474
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7478
                                (letrec*
                                 ((x7479
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7479))))
                               (x7475
                                (letrec*
                                 ((x7477
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7476
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7477 k j x7476)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7478 x7475)))))))
                        g7473))))
                   g7472)))
               (any? (lambda (v) (letrec* ((g7480 #t)) g7480)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x7482
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7482)))))
                   g7481)))
               (nonzero?/c
                (lambda (g7291 g7292 g7293)
                  (letrec*
                   ((g7483
                     (letrec*
                      ((x-cnd7484
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7485
                                (letrec*
                                 ((x7486
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7486)))))
                              g7485))
                           g7293))))
                      (if x-cnd7484
                        g7293
                        (begin
                          (write '(blame g7291 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7291)))))))
                   g7483)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7487
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7488
                          (letrec*
                           ((x-cnd7489
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7490
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7490))
                                g7296))))
                           (if x-cnd7489
                             g7296
                             (begin
                               (write '(blame g7294 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7488))))
                   g7487)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7491
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7492
                          (letrec*
                           ((x-cnd7493
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7494
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7494))
                                g7299))))
                           (if x-cnd7493
                             g7299
                             (begin
                               (write '(blame g7297 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7492))))
                   g7491)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7495
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7496
                          (letrec*
                           ((x-cnd7497
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7498
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7498))
                                g7302))))
                           (if x-cnd7497
                             g7302
                             (begin
                               (write '(blame g7300 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7496))))
                   g7495)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7499
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7500
                          (letrec*
                           ((x-cnd7501
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7502
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7502))
                                g7305))))
                           (if x-cnd7501
                             g7305
                             (begin
                               (write '(blame g7303 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7500))))
                   g7499)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7503
                     (lambda (g7306 g7307 g7308)
                       (letrec*
                        ((g7504
                          (letrec*
                           ((x-cnd7505
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7506
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7506))
                                g7308))))
                           (if x-cnd7505
                             g7308
                             (begin
                               (write '(blame g7306 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7306)))))))
                        g7504))))
                   g7503)))
               (meta (lambda (v) (letrec* ((g7507 v)) g7507)))
               (+
                (letrec*
                 ((xj7309
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7310
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7508
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7313 k7314 f7315)
                         (letrec*
                          ((g7510
                            (lambda (g7311 g7312)
                              (letrec*
                               ((g7511
                                 (letrec*
                                  ((x7512
                                    (letrec*
                                     ((x7514
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7313 k7314 g7311)))
                                      (x7513
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7313 k7314 g7312))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7315 x7514 x7513)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7313 k7314 x7512)))))
                               g7511))))
                          g7510))
                       xj7309
                       xk7310
                       (lambda (a b)
                         (letrec*
                          ((g7509
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7509))))))
                  g7508)))
               (-
                (letrec*
                 ((xj7316
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7317
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7515
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7517
                            (lambda (g7318 g7319)
                              (letrec*
                               ((g7518
                                 (letrec*
                                  ((x7519
                                    (letrec*
                                     ((x7521
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7318)))
                                      (x7520
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7322 x7521 x7520)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7320 k7321 x7519)))))
                               g7518))))
                          g7517))
                       xj7316
                       xk7317
                       (lambda (a b)
                         (letrec*
                          ((g7516
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7516))))))
                  g7515)))
               (*
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7522
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7327 k7328 f7329)
                         (letrec*
                          ((g7524
                            (lambda (g7325 g7326)
                              (letrec*
                               ((g7525
                                 (letrec*
                                  ((x7526
                                    (letrec*
                                     ((x7528
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7325)))
                                      (x7527
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7326))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7329 x7528 x7527)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7327 k7328 x7526)))))
                               g7525))))
                          g7524))
                       xj7323
                       xk7324
                       (lambda (a b)
                         (letrec*
                          ((g7523
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7523))))))
                  g7522)))
               (<
                (letrec*
                 ((xj7330
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7331
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7529
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7334 k7335 f7336)
                         (letrec*
                          ((g7531
                            (lambda (g7332 g7333)
                              (letrec*
                               ((g7532
                                 (letrec*
                                  ((x7533
                                    (letrec*
                                     ((x7535
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7332)))
                                      (x7534
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7333))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7336 x7535 x7534)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7334 k7335 x7533)))))
                               g7532))))
                          g7531))
                       xj7330
                       xk7331
                       (lambda (a b)
                         (letrec*
                          ((g7530
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7530))))))
                  g7529)))
               (>
                (letrec*
                 ((xj7337
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7338
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7536
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7341 k7342 f7343)
                         (letrec*
                          ((g7538
                            (lambda (g7339 g7340)
                              (letrec*
                               ((g7539
                                 (letrec*
                                  ((x7540
                                    (letrec*
                                     ((x7542
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7339)))
                                      (x7541
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7340))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7343 x7542 x7541)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7341 k7342 x7540)))))
                               g7539))))
                          g7538))
                       xj7337
                       xk7338
                       (lambda (a b)
                         (letrec*
                          ((g7537
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7537))))))
                  g7536)))
               (<=
                (letrec*
                 ((xj7344
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7345
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7543
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7348 k7349 f7350)
                         (letrec*
                          ((g7545
                            (lambda (g7346 g7347)
                              (letrec*
                               ((g7546
                                 (letrec*
                                  ((x7547
                                    (letrec*
                                     ((x7549
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7346)))
                                      (x7548
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7347))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7350 x7549 x7548)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7348 k7349 x7547)))))
                               g7546))))
                          g7545))
                       xj7344
                       xk7345
                       (lambda (a b)
                         (letrec*
                          ((g7544
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7544))))))
                  g7543)))
               (>=
                (letrec*
                 ((xj7351
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7352
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7550
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7355 k7356 f7357)
                         (letrec*
                          ((g7552
                            (lambda (g7353 g7354)
                              (letrec*
                               ((g7553
                                 (letrec*
                                  ((x7554
                                    (letrec*
                                     ((x7556
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7353)))
                                      (x7555
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7354))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7357 x7556 x7555)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7355 k7356 x7554)))))
                               g7553))))
                          g7552))
                       xj7351
                       xk7352
                       (lambda (a b)
                         (letrec*
                          ((g7551
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7551))))))
                  g7550)))
               (/
                (letrec*
                 ((xj7358
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7359
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7557
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7362 k7363 f7364)
                         (letrec*
                          ((g7559
                            (lambda (g7360 g7361)
                              (letrec*
                               ((g7560
                                 (letrec*
                                  ((x7561
                                    (letrec*
                                     ((x7563
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7360)))
                                      (x7562
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7361))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7364 x7563 x7562)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7362 k7363 x7561)))))
                               g7560))))
                          g7559))
                       xj7358
                       xk7359
                       (lambda (a b)
                         (letrec*
                          ((g7558
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7558))))))
                  g7557)))
               (car
                (letrec*
                 ((xj7365
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7366
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7564
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7368 k7369 f7370)
                         (letrec*
                          ((g7566
                            (lambda (g7367)
                              (letrec*
                               ((g7567
                                 (letrec*
                                  ((x7568
                                    (letrec*
                                     ((x7569
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7368 k7369 g7367))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7370 x7569)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7368 k7369 x7568)))))
                               g7567))))
                          g7566))
                       xj7365
                       xk7366
                       (lambda (p)
                         (letrec*
                          ((g7565
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7565))))))
                  g7564)))
               (cdr
                (letrec*
                 ((xj7371
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7372
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7570
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7374 k7375 f7376)
                         (letrec*
                          ((g7572
                            (lambda (g7373)
                              (letrec*
                               ((g7573
                                 (letrec*
                                  ((x7574
                                    (letrec*
                                     ((x7575
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7374 k7375 g7373))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7376 x7575)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7374 k7375 x7574)))))
                               g7573))))
                          g7572))
                       xj7371
                       xk7372
                       (lambda (p)
                         (letrec*
                          ((g7571
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7571))))))
                  g7570)))
               (cons
                (letrec*
                 ((xj7377
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7378
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7576
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7381 k7382 f7383)
                         (letrec*
                          ((g7578
                            (lambda (g7379 g7380)
                              (letrec*
                               ((g7579
                                 (letrec*
                                  ((x7580
                                    (letrec*
                                     ((x7582
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7381 k7382 g7379)))
                                      (x7581
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7381 k7382 g7380))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7383 x7582 x7581)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7381 k7382 x7580)))))
                               g7579))))
                          g7578))
                       xj7377
                       xk7378
                       (lambda (a b)
                         (letrec*
                          ((g7577
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7577))))))
                  g7576)))
               (vector-ref
                (letrec*
                 ((xj7384
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7385
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7583
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7387 k7388 f7389)
                         (letrec*
                          ((g7585
                            (lambda (g7386)
                              (letrec*
                               ((g7586
                                 (letrec*
                                  ((x7587
                                    (letrec*
                                     ((x7588
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7387 k7388 g7386))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7389 x7588)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7387 k7388 x7587)))))
                               g7586))))
                          g7585))
                       xj7384
                       xk7385
                       (lambda (v i)
                         (letrec*
                          ((g7584
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7584))))))
                  g7583)))
               (vector-set!
                (letrec*
                 ((xj7390
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7391
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7589
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7394 k7395 f7396)
                         (letrec*
                          ((g7591
                            (lambda (g7392 g7393)
                              (letrec*
                               ((g7592
                                 (letrec*
                                  ((x7593
                                    (letrec*
                                     ((x7595
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7394 k7395 g7392)))
                                      (x7594
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7394 k7395 g7393))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7396 x7595 x7594)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7394 k7395 x7593)))))
                               g7592))))
                          g7591))
                       xj7390
                       xk7391
                       (lambda (vec i v)
                         (letrec*
                          ((g7590
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7590))))))
                  g7589)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7597
                        (letrec*
                         ((x7598
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7598)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7597)))))
                   g7596)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7602
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7602))))
                    (g7600
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7603))))
                    (g7601
                     (letrec*
                      ((x-cnd7604
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7604
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7607
                           (letrec*
                            ((x7608
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7608))))
                          (x7605
                           (letrec*
                            ((x7606
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7606)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7607 x7605)))))))
                   g7601)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7610)))))
                   g7609)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7612
                        (letrec*
                         ((x7613
                           (letrec*
                            ((x7614
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7614)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7613)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7612)))))
                   g7611)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (letrec*
                         ((x7617
                           (letrec*
                            ((x7618
                              (begin
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7618)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7617)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7616)))))
                   g7615)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7622))))
                    (g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 715 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 716 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7624
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7625 res))
                       g7625))))
                   g7621)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7627
                        (letrec*
                         ((x7628
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7628)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7627)))))
                   g7626)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7630
                        (letrec*
                         ((x7631
                           (letrec*
                            ((x7632
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7632)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7631)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7630)))))
                   g7629)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7635))))
                    (g7634
                     (letrec*
                      ((x-cnd7636
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7636
                        #f
                        (letrec*
                         ((x-cnd7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7638 k)))))
                         (if x-cnd7637
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7639)))))))))
                   g7634)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7641)))))
                   g7640)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7644))))
                    (g7643
                     (letrec*
                      ((x-cnd7645
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7645
                        ""
                        (letrec*
                         ((x7648
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7649))))
                          (x7646
                           (letrec*
                            ((x7647
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7647)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7648 x7646)))))))
                   g7643)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7653))))
                    (g7651
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7654))))
                    (g7652
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7655
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7655))))
                   g7652)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7657
                        (letrec*
                         ((x7658
                           (letrec*
                            ((x7659
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7659)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7658)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7657)))))
                   g7656)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7663))))
                    (g7661
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7664))))
                    (g7662
                     (letrec*
                      ((x-cnd7665
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7665
                        x
                        (letrec*
                         ((x7667
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7666
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7667 x7666)))))))
                   g7662)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7668
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7668)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x-cnd7670
                        (letrec*
                         ((x7671 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7671)))))
                      (if x-cnd7670
                        (letrec*
                         ((x7672 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7672)))
                        #f))))
                   g7669)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7674
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7674 9)))))
                      (letrec*
                       ((g7675
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7676
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7676 10)))))
                            (letrec*
                             ((g7677
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7678
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7678 32))))))
                             g7677)))))
                       g7675))))
                   g7673)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7679
                     (letrec*
                      ((x7680
                        (letrec*
                         ((x7681
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7681)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7680)))))
                   g7679)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((x7684
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7684))))
                    (g7683
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7683)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7685 #f)) g7685)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((x7687
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7687)))))
                   g7686)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7688
                     (letrec*
                      ((x7690
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7690))))
                    (g7689
                     (letrec*
                      ((x-cnd7691
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7691
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7689)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7692
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7693
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7694
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7694
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7695
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7696
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7696
                                       (letrec*
                                        ((x-cnd7697
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7697
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7698
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7699
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7699
                                             (letrec*
                                              ((x-cnd7700
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7700
                                                (letrec*
                                                 ((x-cnd7701
                                                   (letrec*
                                                    ((x7703
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7702
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7703 x7702)))))
                                                 (if x-cnd7701
                                                   (letrec*
                                                    ((x7705
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7704
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7705 x7704)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7706
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7707
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7707
                                                (letrec*
                                                 ((x-cnd7708
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7708
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7709
                                                       (letrec*
                                                        ((x-cnd7710
                                                          (letrec*
                                                           ((x7711
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  956
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 958 60))
                                                             (display "\n")
                                                             (= x7711 n)))))
                                                        (if x-cnd7710
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7712
                                                                  (letrec*
                                                                   ((val7254
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          967
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7713
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7714
                                                                           (letrec*
                                                                            ((x7716
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   976
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7715
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   980
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 983
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7716
                                                                               x7715)))))
                                                                         (if x-cnd7714
                                                                           (letrec*
                                                                            ((x7717
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   989
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 992
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7717)))
                                                                           #f)))))
                                                                    g7713))))
                                                                g7712))))
                                                           (letrec*
                                                            ((g7718
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7718))
                                                          #f))))
                                                     g7709))
                                                   #f))
                                                #f)))))
                                         g7706)))))
                                   g7698)))))
                             g7695)))))
                       g7693))))
                   g7692)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7719
                     (letrec*
                      ((x7720
                        (letrec*
                         ((x7721
                           (letrec*
                            ((x7722
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7722)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7721)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7720)))))
                   g7719)))
               (caaddr
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
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7726)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7725)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7724)))))
                   g7723)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7727
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7727)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7731
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7731))))
                    (g7729
                     (letrec*
                      ((x7732
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7732))))
                    (g7730
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1041 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1042 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7733
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7734 res))
                       g7734))))
                   g7730)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7735
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7735)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7739))))
                    (g7737
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7740))))
                    (g7738
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7741
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7741))))
                   g7738)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (letrec*
                         ((x7744
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7744)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7743)))))
                   g7742)))
               (cdaddr
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
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7748)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7747)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7746)))))
                   g7745)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (letrec*
                         ((x7751
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7751)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7750)))))
                   g7749)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7753
                        (letrec*
                         ((x7754
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7754)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7753)))))
                   g7752)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7758))))
                    (g7756
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7759))))
                    (g7757
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7760)))))
                   g7757)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7764)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7763)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7762)))))
                   g7761)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7767))))
                    (g7766
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7766)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7768
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7768)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7770
                        (letrec*
                         ((x7771
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7771)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7770)))))
                   g7769)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7772
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7772)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7775))))
                    (g7774
                     (letrec*
                      ((x-cnd7776
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7776
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7780))))
                          (x7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7778)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7779 x7777)))))))
                   g7774)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7782
                        (letrec*
                         ((x7783
                           (letrec*
                            ((x7784
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7784)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7783)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7782)))))
                   g7781)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7786
                        (letrec*
                         ((x7787
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7788)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7787)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7786)))))
                   g7785)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7791))))
                    (g7790
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7792)))))
                   g7790)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7794
                        (letrec*
                         ((x7795
                           (letrec*
                            ((x7796
                              (begin
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7796)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7795)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7794)))))
                   g7793)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7800))))
                    (g7798
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7801))))
                    (g7799
                     (letrec*
                      ((x-cnd7802
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7802
                        (letrec*
                         ((g7803
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7803)
                        (letrec*
                         ((x-cnd7804
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7805)))))
                         (if x-cnd7804
                           (letrec*
                            ((g7806
                              (letrec*
                               ((x7807
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7807)))))
                            g7806)
                           (letrec*
                            ((x-cnd7808
                              (letrec*
                               ((x7809
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7809)))))
                            (if x-cnd7808
                              (letrec*
                               ((g7810
                                 (letrec*
                                  ((x7812
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7811
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7812 x7811)))))
                               g7810)
                              (letrec*
                               ((x-cnd7813
                                 (letrec*
                                  ((x7814
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7814)))))
                               (if x-cnd7813
                                 (letrec*
                                  ((g7815
                                    (letrec*
                                     ((x7818
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7817
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7816
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7818 x7817 x7816)))))
                                  g7815)
                                 (letrec*
                                  ((x-cnd7819
                                    (letrec*
                                     ((x7820
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7820)))))
                                  (if x-cnd7819
                                    (letrec*
                                     ((g7821
                                       (letrec*
                                        ((x7825
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7824
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7823
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7822
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7825 x7824 x7823 x7822)))))
                                     g7821)
                                    (letrec*
                                     ((x-cnd7826
                                       (letrec*
                                        ((x7827
                                          (letrec*
                                           ((x7828
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7828)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7827)))))
                                     (if x-cnd7826
                                       (letrec*
                                        ((g7829
                                          (letrec*
                                           ((x7835
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7834
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7833
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7832
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7830
                                             (letrec*
                                              ((x7831
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7831)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7835
                                              x7834
                                              x7833
                                              x7832
                                              x7830)))))
                                        g7829)
                                       (letrec*
                                        ((x-cnd7836
                                          (letrec*
                                           ((x7837
                                             (letrec*
                                              ((x7838
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7838)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7837)))))
                                        (if x-cnd7836
                                          (letrec*
                                           ((g7839
                                             (letrec*
                                              ((x7847
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7846
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7845
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7844
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7842
                                                (letrec*
                                                 ((x7843
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7843))))
                                               (x7840
                                                (letrec*
                                                 ((x7841
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7841)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7847
                                                 x7846
                                                 x7845
                                                 x7844
                                                 x7842
                                                 x7840)))))
                                           g7839)
                                          (letrec*
                                           ((x-cnd7848
                                             (letrec*
                                              ((x7849
                                                (letrec*
                                                 ((x7850
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7850)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7849)))))
                                           (if x-cnd7848
                                             (letrec*
                                              ((g7851
                                                (letrec*
                                                 ((x7861
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7860
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7859
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7858
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7856
                                                   (letrec*
                                                    ((x7857
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7857))))
                                                  (x7854
                                                   (letrec*
                                                    ((x7855
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7855))))
                                                  (x7852
                                                   (letrec*
                                                    ((x7853
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7853)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7861
                                                    x7860
                                                    x7859
                                                    x7858
                                                    x7856
                                                    x7854
                                                    x7852)))))
                                              g7851)
                                             (letrec*
                                              ((g7862
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7862)))))))))))))))))))
                   g7799)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((x7865
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7865))))
                    (g7864
                     (letrec*
                      ((x-cnd7866
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7866
                        #f
                        (letrec*
                         ((x-cnd7867
                           (letrec*
                            ((x7868
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7868 e)))))
                         (if x-cnd7867
                           l
                           (letrec*
                            ((x7869
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7869)))))))))
                   g7864)))
               (cddddr
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
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7873)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7872)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7871)))))
                   g7870)))
               (cadddr
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
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7877)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7876)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7875)))))
                   g7874)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7878
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7878)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7881
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7881))))
                    (g7880
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7880)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7883
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7883))))
                   g7882)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7885
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7885)))))
                   g7884)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7887
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7887
                           (letrec*
                            ((x7888
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7888)))
                           #f))))
                      (letrec*
                       ((g7889
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7889))))
                   g7886)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x7891
                        (letrec*
                         ((x7892
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7893)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7892)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7891)))))
                   g7890)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x-cnd7895
                        (letrec*
                         ((x7896 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7896 c)))))
                      (if x-cnd7895
                        (letrec*
                         ((x7897 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7897)))
                        #f))))
                   g7894)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7900
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7900))))
                    (g7899
                     (letrec*
                      ((x-cnd7901
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7901
                        #f
                        (letrec*
                         ((x-cnd7902
                           (letrec*
                            ((x7903
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7903 k)))))
                         (if x-cnd7902
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7904)))))))))
                   g7899)))
               (not (lambda (x) (letrec* ((g7905 (if x #f #t))) g7905)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7906
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7906)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7909
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7909))))
                    (g7908
                     (letrec*
                      ((x-cnd7910
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7910
                        #f
                        (letrec*
                         ((x-cnd7911
                           (letrec*
                            ((x7912
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7912 e)))))
                         (if x-cnd7911
                           l
                           (letrec*
                            ((x7913
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7913)))))))))
                   g7908)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7915
                        (letrec*
                         ((x7916
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7917)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7916)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7915)))))
                   g7914)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7920))))
                    (g7919
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7921
                             (letrec*
                              ((x-cnd7922
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7922
                                0
                                (letrec*
                                 ((x7923
                                   (letrec*
                                    ((x7924
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7924)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7923)))))))
                           g7921))))
                      (letrec*
                       ((g7925
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7925))))
                   g7919)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7929))))
                    (g7927
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7930))))
                    (g7928
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7931
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7931))))
                   g7928)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7933)))))
                   g7932)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7935
                        (letrec*
                         ((x7936
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7936)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7935)))))
                   g7934)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7939))))
                    (g7938
                     (letrec*
                      ((x-cnd7940
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7940
                        #f
                        (letrec*
                         ((x-cnd7941
                           (letrec*
                            ((x7942
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7942 k)))))
                         (if x-cnd7941
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7943
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7943)))))))))
                   g7938)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7945)))))
                   g7944)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7949))))
                    (g7947
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7950))))
                    (g7948
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7951)))))
                   g7948)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7953
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7953))))
                   g7952)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7957))))
                    (g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7958))))
                    (g7956
                     (letrec*
                      ((x-cnd7959
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7959
                        #t
                        (letrec*
                         ((x-cnd7960
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7960
                           (letrec*
                            ((g7961
                              (letrec*
                               ((x7963
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7963))))
                             (g7962
                              (letrec*
                               ((x7964
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7964)))))
                            g7962)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7956)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7967))))
                    (g7966
                     (letrec*
                      ((x-cnd7968
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7968
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7966)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7972))))
                    (g7970
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7973))))
                    (g7971
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7974
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7974))))
                   g7971)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7976
                        (letrec*
                         ((x7977
                           (letrec*
                            ((x7978
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7978)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7977)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7976)))))
                   g7975)))
               (newline (lambda () (letrec* ((g7979 #f)) g7979)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x7982
                        (letrec*
                         ((x7983
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7983))))
                       (x7981
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7982 x7981)))))
                   g7980)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x7988
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7988))))
                    (g7985
                     (letrec*
                      ((x7989
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7989))))
                    (g7986
                     (letrec*
                      ((x7990
                        (letrec*
                         ((x7991
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7991)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7990))))
                    (g7987
                     (letrec*
                      ((x-cnd7992
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7992
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7994
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7993
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7994 x7993)))))))
                   g7987)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7995
                     (letrec*
                      ((x-cnd7996
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7996
                        a
                        (letrec*
                         ((x7997
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7997)))))))
                   g7995)))
               (mappend
                (lambda (xs ys)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x-cnd7999
                        (begin
                          (write '(funapp 1665 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7999
                        ys
                        (letrec*
                         ((x8002
                           (begin
                             (write '(funapp 1669 34))
                             (display "\n")
                             (car xs)))
                          (x8000
                           (letrec*
                            ((x8001
                              (begin
                                (write '(funapp 1671 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1671 56))
                              (display "\n")
                              (mappend x8001 ys)))))
                         (begin
                           (write '(funapp 1672 26))
                           (display "\n")
                           (cons x8002 x8000)))))))
                   g7998)))
               (map-append
                (lambda (f xs)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x-cnd8004
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8004
                        empty
                        (letrec*
                         ((x8007
                           (letrec*
                            ((x8008
                              (begin
                                (write '(funapp 1683 51))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1683 62))
                              (display "\n")
                              (f x8008))))
                          (x8005
                           (letrec*
                            ((x8006
                              (begin
                                (write '(funapp 1685 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1685 56))
                              (display "\n")
                              (map-append f x8006)))))
                         (begin
                           (write '(funapp 1686 26))
                           (display "\n")
                           (mappend x8007 x8005)))))))
                   g8003))))
              (letrec*
               ((g8009
                 (begin
                   (write '(funapp 1690 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1691 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8012
                          (letrec*
                           ((xj7397
                             (begin
                               (write '(funapp 1695 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1695 37))
                                  (display "\n")
                                  'module))))
                            (xk7398
                             (begin
                               (write '(funapp 1695 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1695 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8013
                              (begin
                                (write '(funapp 1698 27))
                                (display "\n")
                                ((lambda (j7401 k7402 f7403)
                                   (letrec*
                                    ((g8014
                                      (lambda (g7399 g7400)
                                        (letrec*
                                         ((g8015
                                           (letrec*
                                            ((x8025
                                              (begin
                                                (write '(funapp 1705 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8016
                                              (letrec*
                                               ((x8019
                                                 (begin
                                                   (write '(funapp 1709 44))
                                                   (display "\n")
                                                   ((lambda (j7405 k7406 f7407)
                                                      (letrec*
                                                       ((g8020
                                                         (lambda (g7404)
                                                           (letrec*
                                                            ((g8021
                                                              (letrec*
                                                               ((x8024
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1716
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (listof
                                                                    any/c)))
                                                                (x8022
                                                                 (letrec*
                                                                  ((x8023
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1720
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7405
                                                                       k7406
                                                                       g7404))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1724
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7407
                                                                     x8023)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1725
                                                                    56))
                                                                 (display "\n")
                                                                 (x8024
                                                                  j7405
                                                                  k7406
                                                                  x8022)))))
                                                            g8021))))
                                                       g8020))
                                                    j7401
                                                    k7402
                                                    g7399)))
                                                (x8017
                                                 (letrec*
                                                  ((x8018
                                                    (begin
                                                      (write '(funapp 1736 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1737 45))
                                                    (display "\n")
                                                    (x8018
                                                     j7401
                                                     k7402
                                                     g7400)))))
                                               (begin
                                                 (write '(funapp 1738 42))
                                                 (display "\n")
                                                 (f7403 x8019 x8017)))))
                                            (begin
                                              (write '(funapp 1739 39))
                                              (display "\n")
                                              (x8025 j7401 k7402 x8016)))))
                                         g8015))))
                                    g8014))
                                 xj7397
                                 xk7398
                                 map-append))))
                            g8013)))
                         (x8011 (input))
                         (x8010 (input)))
                        (begin
                          (write '(funapp 1748 21))
                          (display "\n")
                          (x8012 x8011 x8010)))
                       (letrec*
                        ((x8028
                          (letrec*
                           ((xj7408
                             (begin
                               (write '(funapp 1752 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1752 37))
                                  (display "\n")
                                  'module))))
                            (xk7409
                             (begin
                               (write '(funapp 1752 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1752 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8029
                              (begin
                                (write '(funapp 1755 27))
                                (display "\n")
                                ((lambda (j7412 k7413 f7414)
                                   (letrec*
                                    ((g8030
                                      (lambda (g7410 g7411)
                                        (letrec*
                                         ((g8031
                                           (letrec*
                                            ((x8037
                                              (begin
                                                (write '(funapp 1762 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8032
                                              (letrec*
                                               ((x8035
                                                 (letrec*
                                                  ((x8036
                                                    (begin
                                                      (write '(funapp 1767 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1768 45))
                                                    (display "\n")
                                                    (x8036
                                                     j7412
                                                     k7413
                                                     g7410))))
                                                (x8033
                                                 (letrec*
                                                  ((x8034
                                                    (begin
                                                      (write '(funapp 1771 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1772 45))
                                                    (display "\n")
                                                    (x8034
                                                     j7412
                                                     k7413
                                                     g7411)))))
                                               (begin
                                                 (write '(funapp 1773 42))
                                                 (display "\n")
                                                 (f7414 x8035 x8033)))))
                                            (begin
                                              (write '(funapp 1774 39))
                                              (display "\n")
                                              (x8037 j7412 k7413 x8032)))))
                                         g8031))))
                                    g8030))
                                 xj7408
                                 xk7409
                                 mappend))))
                            g8029)))
                         (x8027 (input))
                         (x8026 (input)))
                        (begin
                          (write '(funapp 1783 21))
                          (display "\n")
                          (x8028 x8027 x8026)))))))))
               g8009))))
           g7443))))
       g7426)))
    g7425)))
