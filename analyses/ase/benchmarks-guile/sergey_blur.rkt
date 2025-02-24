(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7397 #t)) g7397)))
    (meta (lambda (v) (letrec* ((g7398 v)) g7398)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7399
          (letrec*
           ((g7400
             (letrec*
              ((x-e7401 lst))
              (letrec*
               ((v1742 x-e7401))
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
                   ((x-cnd7402
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7402
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
           g7400)))
        g7399)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7403 (lambda (v) (letrec* ((g7404 v)) g7404)))) g7403)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7405
          (letrec*
           ((x7406 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7406)))))
        g7405))))
   (letrec*
    ((g7407
      (letrec*
       ((g7408
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7409
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7409)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7410
                 (letrec*
                  ((x7412
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7412))))
                (g7411
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7413
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7414 (if val7244 val7244 #f))) g7414)))))
                   g7413))))
               g7411)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7415
                 (letrec*
                  ((x7417
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7417))))
                (g7416
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7418
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7419 (if val7246 val7246 #f))) g7419)))))
                   g7418))))
               g7416)))
           (>
            (lambda (x y)
              (letrec*
               ((g7420
                 (letrec*
                  ((x7422
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7422))))
                (g7421
                 (letrec*
                  ((x7423
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7423)))))
               g7421)))
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
           ((g7424 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7425
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7426
                     (lambda (k j lst)
                       (letrec*
                        ((g7427
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7428
                                  (begin
                                    (write '(funapp 114 47))
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
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7430
                        g7263
                        (begin
                          (write '(blame g7261 124 42))
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
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7432
                        g7266
                        (begin
                          (write '(blame g7264 132 42))
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
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7434
                        g7269
                        (begin
                          (write '(blame g7267 140 42))
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
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7437 #t)) g7437)) g7272))))
                      (if x-cnd7436
                        g7272
                        (begin
                          (write '(blame g7270 149 42))
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
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7440 #t)) g7440)) g7275))))
                      (if x-cnd7439
                        g7275
                        (begin
                          (write '(blame g7273 158 42))
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
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7442
                        g7278
                        (begin
                          (write '(blame g7276 166 42))
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
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7444
                        g7281
                        (begin
                          (write '(blame g7279 175 42))
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
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7446
                        g7284
                        (begin
                          (write '(blame g7282 183 42))
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
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7448
                        g7287
                        (begin
                          (write '(blame g7285 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7447)))
               (string?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7290))))
                      (if x-cnd7450
                        g7290
                        (begin
                          (write '(blame g7288 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7449)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7451
                     (lambda (k j v)
                       (letrec*
                        ((g7452
                          (letrec*
                           ((x-cnd7453
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7453
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7452))))
                   g7451)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7454
                     (lambda (k j v)
                       (letrec*
                        ((g7455
                          (letrec*
                           ((x-cnd7456
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7456
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7460
                                (letrec*
                                 ((x7461
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7461))))
                               (x7457
                                (letrec*
                                 ((x7459
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7458
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7459 k j x7458)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7460 x7457)))))))
                        g7455))))
                   g7454)))
               (any? (lambda (v) (letrec* ((g7462 #t)) g7462)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7463
                     (letrec*
                      ((x7464
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7464)))))
                   g7463)))
               (nonzero?/c
                (lambda (g7291 g7292 g7293)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x-cnd7466
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7467
                                (letrec*
                                 ((x7468
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7468)))))
                              g7467))
                           g7293))))
                      (if x-cnd7466
                        g7293
                        (begin
                          (write '(blame g7291 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7291)))))))
                   g7465)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7469
                     (lambda (g7294 g7295 g7296)
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
                                       (orig->= v n))))
                                   g7472))
                                g7296))))
                           (if x-cnd7471
                             g7296
                             (begin
                               (write '(blame g7294 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7470))))
                   g7469)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7473
                     (lambda (g7297 g7298 g7299)
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
                                       (orig-> v n))))
                                   g7476))
                                g7299))))
                           (if x-cnd7475
                             g7299
                             (begin
                               (write '(blame g7297 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7474))))
                   g7473)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7477
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7478
                          (letrec*
                           ((x-cnd7479
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7480
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7480))
                                g7302))))
                           (if x-cnd7479
                             g7302
                             (begin
                               (write '(blame g7300 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7478))))
                   g7477)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7481
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7482
                          (letrec*
                           ((x-cnd7483
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7484
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7484))
                                g7305))))
                           (if x-cnd7483
                             g7305
                             (begin
                               (write '(blame g7303 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7482))))
                   g7481)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7485
                     (lambda (g7306 g7307 g7308)
                       (letrec*
                        ((g7486
                          (letrec*
                           ((x-cnd7487
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7488
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7488))
                                g7308))))
                           (if x-cnd7487
                             g7308
                             (begin
                               (write '(blame g7306 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7306)))))))
                        g7486))))
                   g7485)))
               (meta (lambda (v) (letrec* ((g7489 v)) g7489)))
               (+
                (letrec*
                 ((xj7309
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7310
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7490
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7313 k7314 f7315)
                         (letrec*
                          ((g7492
                            (lambda (g7311 g7312)
                              (letrec*
                               ((g7493
                                 (letrec*
                                  ((x7494
                                    (letrec*
                                     ((x7496
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7313 k7314 g7311)))
                                      (x7495
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7313 k7314 g7312))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7315 x7496 x7495)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7313 k7314 x7494)))))
                               g7493))))
                          g7492))
                       xj7309
                       xk7310
                       (lambda (a b)
                         (letrec*
                          ((g7491
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7491))))))
                  g7490)))
               (-
                (letrec*
                 ((xj7316
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7317
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7497
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7499
                            (lambda (g7318 g7319)
                              (letrec*
                               ((g7500
                                 (letrec*
                                  ((x7501
                                    (letrec*
                                     ((x7503
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7318)))
                                      (x7502
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7322 x7503 x7502)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7320 k7321 x7501)))))
                               g7500))))
                          g7499))
                       xj7316
                       xk7317
                       (lambda (a b)
                         (letrec*
                          ((g7498
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7498))))))
                  g7497)))
               (*
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7504
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7327 k7328 f7329)
                         (letrec*
                          ((g7506
                            (lambda (g7325 g7326)
                              (letrec*
                               ((g7507
                                 (letrec*
                                  ((x7508
                                    (letrec*
                                     ((x7510
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7325)))
                                      (x7509
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7326))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7329 x7510 x7509)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7327 k7328 x7508)))))
                               g7507))))
                          g7506))
                       xj7323
                       xk7324
                       (lambda (a b)
                         (letrec*
                          ((g7505
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7505))))))
                  g7504)))
               (<
                (letrec*
                 ((xj7330
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7331
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7511
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7334 k7335 f7336)
                         (letrec*
                          ((g7513
                            (lambda (g7332 g7333)
                              (letrec*
                               ((g7514
                                 (letrec*
                                  ((x7515
                                    (letrec*
                                     ((x7517
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7332)))
                                      (x7516
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7333))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7336 x7517 x7516)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7334 k7335 x7515)))))
                               g7514))))
                          g7513))
                       xj7330
                       xk7331
                       (lambda (a b)
                         (letrec*
                          ((g7512
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7512))))))
                  g7511)))
               (>
                (letrec*
                 ((xj7337
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7338
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7518
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7341 k7342 f7343)
                         (letrec*
                          ((g7520
                            (lambda (g7339 g7340)
                              (letrec*
                               ((g7521
                                 (letrec*
                                  ((x7522
                                    (letrec*
                                     ((x7524
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7339)))
                                      (x7523
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7340))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7343 x7524 x7523)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7341 k7342 x7522)))))
                               g7521))))
                          g7520))
                       xj7337
                       xk7338
                       (lambda (a b)
                         (letrec*
                          ((g7519
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7519))))))
                  g7518)))
               (<=
                (letrec*
                 ((xj7344
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7345
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7525
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7348 k7349 f7350)
                         (letrec*
                          ((g7527
                            (lambda (g7346 g7347)
                              (letrec*
                               ((g7528
                                 (letrec*
                                  ((x7529
                                    (letrec*
                                     ((x7531
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7346)))
                                      (x7530
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7347))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7350 x7531 x7530)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7348 k7349 x7529)))))
                               g7528))))
                          g7527))
                       xj7344
                       xk7345
                       (lambda (a b)
                         (letrec*
                          ((g7526
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7526))))))
                  g7525)))
               (>=
                (letrec*
                 ((xj7351
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7352
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7532
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7355 k7356 f7357)
                         (letrec*
                          ((g7534
                            (lambda (g7353 g7354)
                              (letrec*
                               ((g7535
                                 (letrec*
                                  ((x7536
                                    (letrec*
                                     ((x7538
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7353)))
                                      (x7537
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7354))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7357 x7538 x7537)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7355 k7356 x7536)))))
                               g7535))))
                          g7534))
                       xj7351
                       xk7352
                       (lambda (a b)
                         (letrec*
                          ((g7533
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7533))))))
                  g7532)))
               (/
                (letrec*
                 ((xj7358
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7359
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7539
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7362 k7363 f7364)
                         (letrec*
                          ((g7541
                            (lambda (g7360 g7361)
                              (letrec*
                               ((g7542
                                 (letrec*
                                  ((x7543
                                    (letrec*
                                     ((x7545
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7360)))
                                      (x7544
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7361))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7364 x7545 x7544)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7362 k7363 x7543)))))
                               g7542))))
                          g7541))
                       xj7358
                       xk7359
                       (lambda (a b)
                         (letrec*
                          ((g7540
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7540))))))
                  g7539)))
               (car
                (letrec*
                 ((xj7365
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7366
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7546
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7368 k7369 f7370)
                         (letrec*
                          ((g7548
                            (lambda (g7367)
                              (letrec*
                               ((g7549
                                 (letrec*
                                  ((x7550
                                    (letrec*
                                     ((x7551
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7368 k7369 g7367))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7370 x7551)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7368 k7369 x7550)))))
                               g7549))))
                          g7548))
                       xj7365
                       xk7366
                       (lambda (p)
                         (letrec*
                          ((g7547
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7547))))))
                  g7546)))
               (cdr
                (letrec*
                 ((xj7371
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7372
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7552
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7374 k7375 f7376)
                         (letrec*
                          ((g7554
                            (lambda (g7373)
                              (letrec*
                               ((g7555
                                 (letrec*
                                  ((x7556
                                    (letrec*
                                     ((x7557
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7374 k7375 g7373))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7376 x7557)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7374 k7375 x7556)))))
                               g7555))))
                          g7554))
                       xj7371
                       xk7372
                       (lambda (p)
                         (letrec*
                          ((g7553
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7553))))))
                  g7552)))
               (cons
                (letrec*
                 ((xj7377
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7378
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7558
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7381 k7382 f7383)
                         (letrec*
                          ((g7560
                            (lambda (g7379 g7380)
                              (letrec*
                               ((g7561
                                 (letrec*
                                  ((x7562
                                    (letrec*
                                     ((x7564
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7381 k7382 g7379)))
                                      (x7563
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7381 k7382 g7380))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7383 x7564 x7563)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7381 k7382 x7562)))))
                               g7561))))
                          g7560))
                       xj7377
                       xk7378
                       (lambda (a b)
                         (letrec*
                          ((g7559
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7559))))))
                  g7558)))
               (vector-ref
                (letrec*
                 ((xj7384
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7385
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7565
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7387 k7388 f7389)
                         (letrec*
                          ((g7567
                            (lambda (g7386)
                              (letrec*
                               ((g7568
                                 (letrec*
                                  ((x7569
                                    (letrec*
                                     ((x7570
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7387 k7388 g7386))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7389 x7570)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7387 k7388 x7569)))))
                               g7568))))
                          g7567))
                       xj7384
                       xk7385
                       (lambda (v i)
                         (letrec*
                          ((g7566
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7566))))))
                  g7565)))
               (vector-set!
                (letrec*
                 ((xj7390
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7391
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7571
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7394 k7395 f7396)
                         (letrec*
                          ((g7573
                            (lambda (g7392 g7393)
                              (letrec*
                               ((g7574
                                 (letrec*
                                  ((x7575
                                    (letrec*
                                     ((x7577
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7394 k7395 g7392)))
                                      (x7576
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7394 k7395 g7393))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7396 x7577 x7576)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7394 k7395 x7575)))))
                               g7574))))
                          g7573))
                       xj7390
                       xk7391
                       (lambda (vec i v)
                         (letrec*
                          ((g7572
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7572))))))
                  g7571)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7578
                     (letrec*
                      ((x7579
                        (letrec*
                         ((x7580
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7580)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7579)))))
                   g7578)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7581
                     (letrec*
                      ((x7584
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7584))))
                    (g7582
                     (letrec*
                      ((x7585
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7585))))
                    (g7583
                     (letrec*
                      ((x-cnd7586
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7586
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7589
                           (letrec*
                            ((x7590
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7590))))
                          (x7587
                           (letrec*
                            ((x7588
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7588)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7589 x7587)))))))
                   g7583)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7591
                     (letrec*
                      ((x7592
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7592)))))
                   g7591)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7593
                     (letrec*
                      ((x7594
                        (letrec*
                         ((x7595
                           (letrec*
                            ((x7596
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7596)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7595)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7594)))))
                   g7593)))
               (cdadar
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
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7600)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7599)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7598)))))
                   g7597)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7604))))
                    (g7602
                     (letrec*
                      ((x7605
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7605))))
                    (g7603
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
                       ((g7606
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7607 res))
                       g7607))))
                   g7603)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7609
                        (letrec*
                         ((x7610
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7610)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7609)))))
                   g7608)))
               (cdaadr
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
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7614)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7613)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7612)))))
                   g7611)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7617))))
                    (g7616
                     (letrec*
                      ((x-cnd7618
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7618
                        #f
                        (letrec*
                         ((x-cnd7619
                           (letrec*
                            ((x7620
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7620 k)))))
                         (if x-cnd7619
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7621
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7621)))))))))
                   g7616)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7623)))))
                   g7622)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7626))))
                    (g7625
                     (letrec*
                      ((x-cnd7627
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7627
                        ""
                        (letrec*
                         ((x7630
                           (letrec*
                            ((x7631
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7631))))
                          (x7628
                           (letrec*
                            ((x7629
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7629)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7630 x7628)))))))
                   g7625)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7635))))
                    (g7633
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7636))))
                    (g7634
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7637
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7637))))
                   g7634)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7639
                        (letrec*
                         ((x7640
                           (letrec*
                            ((x7641
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7641)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7640)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7639)))))
                   g7638)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7645))))
                    (g7643
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7646))))
                    (g7644
                     (letrec*
                      ((x-cnd7647
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7647
                        x
                        (letrec*
                         ((x7649
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7648
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7649 x7648)))))))
                   g7644)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7650
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7650)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x-cnd7652
                        (letrec*
                         ((x7653 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7653)))))
                      (if x-cnd7652
                        (letrec*
                         ((x7654 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7654)))
                        #f))))
                   g7651)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7656
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7656 9)))))
                      (letrec*
                       ((g7657
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7658
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7658 10)))))
                            (letrec*
                             ((g7659
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7660
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7660 32))))))
                             g7659)))))
                       g7657))))
                   g7655)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7662
                        (letrec*
                         ((x7663
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7663)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7662)))))
                   g7661)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7666))))
                    (g7665
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7665)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7667 #f)) g7667)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x7669
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7669)))))
                   g7668)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x7672
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7672))))
                    (g7671
                     (letrec*
                      ((x-cnd7673
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7673
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7671)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7675
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7676
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7676
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7677
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7678
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7678
                                       (letrec*
                                        ((x-cnd7679
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7679
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7680
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7681
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7681
                                             (letrec*
                                              ((x-cnd7682
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7682
                                                (letrec*
                                                 ((x-cnd7683
                                                   (letrec*
                                                    ((x7685
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7684
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7685 x7684)))))
                                                 (if x-cnd7683
                                                   (letrec*
                                                    ((x7687
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7686
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7687 x7686)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7688
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7689
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7689
                                                (letrec*
                                                 ((x-cnd7690
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7690
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7691
                                                       (letrec*
                                                        ((x-cnd7692
                                                          (letrec*
                                                           ((x7693
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
                                                             (= x7693 n)))))
                                                        (if x-cnd7692
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7694
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
                                                                    ((g7695
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7696
                                                                           (letrec*
                                                                            ((x7698
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
                                                                             (x7697
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
                                                                               x7698
                                                                               x7697)))))
                                                                         (if x-cnd7696
                                                                           (letrec*
                                                                            ((x7699
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
                                                                               x7699)))
                                                                           #f)))))
                                                                    g7695))))
                                                                g7694))))
                                                           (letrec*
                                                            ((g7700
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7700))
                                                          #f))))
                                                     g7691))
                                                   #f))
                                                #f)))))
                                         g7688)))))
                                   g7680)))))
                             g7677)))))
                       g7675))))
                   g7674)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7701
                     (letrec*
                      ((x7702
                        (letrec*
                         ((x7703
                           (letrec*
                            ((x7704
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7704)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7703)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7702)))))
                   g7701)))
               (caaddr
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
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7708)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7707)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7706)))))
                   g7705)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7709
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7709)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7710
                     (letrec*
                      ((x7713
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7713))))
                    (g7711
                     (letrec*
                      ((x7714
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7714))))
                    (g7712
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
                       ((g7715
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7716 res))
                       g7716))))
                   g7712)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7717
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7717)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7718
                     (letrec*
                      ((x7721
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7721))))
                    (g7719
                     (letrec*
                      ((x7722
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7722))))
                    (g7720
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7723
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7723))))
                   g7720)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7724
                     (letrec*
                      ((x7725
                        (letrec*
                         ((x7726
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7726)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7725)))))
                   g7724)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((x7728
                        (letrec*
                         ((x7729
                           (letrec*
                            ((x7730
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7730)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7729)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7728)))))
                   g7727)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7732
                        (letrec*
                         ((x7733
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7733)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7732)))))
                   g7731)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7735
                        (letrec*
                         ((x7736
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7736)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7735)))))
                   g7734)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7740))))
                    (g7738
                     (letrec*
                      ((x7741
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7741))))
                    (g7739
                     (letrec*
                      ((x7742
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7742)))))
                   g7739)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (letrec*
                            ((x7746
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7746)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7745)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7744)))))
                   g7743)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7749))))
                    (g7748
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7748)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7750
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7750)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7752
                        (letrec*
                         ((x7753
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7753)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7752)))))
                   g7751)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7754
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7754)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7757))))
                    (g7756
                     (letrec*
                      ((x-cnd7758
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7758
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7762))))
                          (x7759
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7760)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7761 x7759)))))))
                   g7756)))
               (caaadr
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
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7766)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7765)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7764)))))
                   g7763)))
               (cddadr
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
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7770)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7769)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7768)))))
                   g7767)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7773))))
                    (g7772
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7774)))))
                   g7772)))
               (caadar
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
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7778)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7777)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7782))))
                    (g7780
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7783))))
                    (g7781
                     (letrec*
                      ((x-cnd7784
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7784
                        (letrec*
                         ((g7785
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7785)
                        (letrec*
                         ((x-cnd7786
                           (letrec*
                            ((x7787
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7787)))))
                         (if x-cnd7786
                           (letrec*
                            ((g7788
                              (letrec*
                               ((x7789
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7789)))))
                            g7788)
                           (letrec*
                            ((x-cnd7790
                              (letrec*
                               ((x7791
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7791)))))
                            (if x-cnd7790
                              (letrec*
                               ((g7792
                                 (letrec*
                                  ((x7794
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7793
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7794 x7793)))))
                               g7792)
                              (letrec*
                               ((x-cnd7795
                                 (letrec*
                                  ((x7796
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7796)))))
                               (if x-cnd7795
                                 (letrec*
                                  ((g7797
                                    (letrec*
                                     ((x7800
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7799
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7798
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7800 x7799 x7798)))))
                                  g7797)
                                 (letrec*
                                  ((x-cnd7801
                                    (letrec*
                                     ((x7802
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7802)))))
                                  (if x-cnd7801
                                    (letrec*
                                     ((g7803
                                       (letrec*
                                        ((x7807
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7806
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7805
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7804
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7807 x7806 x7805 x7804)))))
                                     g7803)
                                    (letrec*
                                     ((x-cnd7808
                                       (letrec*
                                        ((x7809
                                          (letrec*
                                           ((x7810
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7810)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7809)))))
                                     (if x-cnd7808
                                       (letrec*
                                        ((g7811
                                          (letrec*
                                           ((x7817
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7816
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7815
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7814
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7812
                                             (letrec*
                                              ((x7813
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7813)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7817
                                              x7816
                                              x7815
                                              x7814
                                              x7812)))))
                                        g7811)
                                       (letrec*
                                        ((x-cnd7818
                                          (letrec*
                                           ((x7819
                                             (letrec*
                                              ((x7820
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7820)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7819)))))
                                        (if x-cnd7818
                                          (letrec*
                                           ((g7821
                                             (letrec*
                                              ((x7829
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7828
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7827
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7826
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7824
                                                (letrec*
                                                 ((x7825
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7825))))
                                               (x7822
                                                (letrec*
                                                 ((x7823
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7823)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7829
                                                 x7828
                                                 x7827
                                                 x7826
                                                 x7824
                                                 x7822)))))
                                           g7821)
                                          (letrec*
                                           ((x-cnd7830
                                             (letrec*
                                              ((x7831
                                                (letrec*
                                                 ((x7832
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7832)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7831)))))
                                           (if x-cnd7830
                                             (letrec*
                                              ((g7833
                                                (letrec*
                                                 ((x7843
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7842
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7841
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7840
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7838
                                                   (letrec*
                                                    ((x7839
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7839))))
                                                  (x7836
                                                   (letrec*
                                                    ((x7837
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7837))))
                                                  (x7834
                                                   (letrec*
                                                    ((x7835
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7835)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7843
                                                    x7842
                                                    x7841
                                                    x7840
                                                    x7838
                                                    x7836
                                                    x7834)))))
                                              g7833)
                                             (letrec*
                                              ((g7844
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7844)))))))))))))))))))
                   g7781)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7847))))
                    (g7846
                     (letrec*
                      ((x-cnd7848
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7848
                        #f
                        (letrec*
                         ((x-cnd7849
                           (letrec*
                            ((x7850
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7850 e)))))
                         (if x-cnd7849
                           l
                           (letrec*
                            ((x7851
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7851)))))))))
                   g7846)))
               (cddddr
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
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7855)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7854)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7853)))))
                   g7852)))
               (cadddr
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
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7859)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7858)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7857)))))
                   g7856)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7860
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7860)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7863
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7863))))
                    (g7862
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7862)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7865
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7865))))
                   g7864)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x7867
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7867)))))
                   g7866)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7869
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7869
                           (letrec*
                            ((x7870
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7870)))
                           #f))))
                      (letrec*
                       ((g7871
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7871))))
                   g7868)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7873
                        (letrec*
                         ((x7874
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7875)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7874)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7873)))))
                   g7872)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x-cnd7877
                        (letrec*
                         ((x7878 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7878 c)))))
                      (if x-cnd7877
                        (letrec*
                         ((x7879 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7879)))
                        #f))))
                   g7876)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7882))))
                    (g7881
                     (letrec*
                      ((x-cnd7883
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7883
                        #f
                        (letrec*
                         ((x-cnd7884
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7885 k)))))
                         (if x-cnd7884
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7886
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7886)))))))))
                   g7881)))
               (not (lambda (x) (letrec* ((g7887 (if x #f #t))) g7887)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7888
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7888)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7891
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7891))))
                    (g7890
                     (letrec*
                      ((x-cnd7892
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7892
                        #f
                        (letrec*
                         ((x-cnd7893
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7894 e)))))
                         (if x-cnd7893
                           l
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7895)))))))))
                   g7890)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7897
                        (letrec*
                         ((x7898
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7899)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7898)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7897)))))
                   g7896)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7902))))
                    (g7901
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7903
                             (letrec*
                              ((x-cnd7904
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7904
                                0
                                (letrec*
                                 ((x7905
                                   (letrec*
                                    ((x7906
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7906)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7905)))))))
                           g7903))))
                      (letrec*
                       ((g7907
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7907))))
                   g7901)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7911
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7911))))
                    (g7909
                     (letrec*
                      ((x7912
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7912))))
                    (g7910
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7913
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7913))))
                   g7910)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7915)))))
                   g7914)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7917
                        (letrec*
                         ((x7918
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7918)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7917)))))
                   g7916)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7921))))
                    (g7920
                     (letrec*
                      ((x-cnd7922
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7922
                        #f
                        (letrec*
                         ((x-cnd7923
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7924 k)))))
                         (if x-cnd7923
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7925)))))))))
                   g7920)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7927)))))
                   g7926)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7931))))
                    (g7929
                     (letrec*
                      ((x7932
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7932))))
                    (g7930
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7933)))))
                   g7930)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7935
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7935))))
                   g7934)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7939))))
                    (g7937
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7940))))
                    (g7938
                     (letrec*
                      ((x-cnd7941
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7941
                        #t
                        (letrec*
                         ((x-cnd7942
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7942
                           (letrec*
                            ((g7943
                              (letrec*
                               ((x7945
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7945))))
                             (g7944
                              (letrec*
                               ((x7946
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7946)))))
                            g7944)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7938)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7949))))
                    (g7948
                     (letrec*
                      ((x-cnd7950
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7950
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7948)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7954))))
                    (g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7956
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7956))))
                   g7953)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7958
                        (letrec*
                         ((x7959
                           (letrec*
                            ((x7960
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7960)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7959)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7958)))))
                   g7957)))
               (newline (lambda () (letrec* ((g7961 #f)) g7961)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7964
                        (letrec*
                         ((x7965
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7965))))
                       (x7963
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7964 x7963)))))
                   g7962)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7970))))
                    (g7967
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7971))))
                    (g7968
                     (letrec*
                      ((x7972
                        (letrec*
                         ((x7973
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7973)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7972))))
                    (g7969
                     (letrec*
                      ((x-cnd7974
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7974
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7976
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7975
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
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
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7978
                        a
                        (letrec*
                         ((x7979
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7979)))))))
                   g7977)))
               (id (lambda (x) (letrec* ((g7980 x)) g7980)))
               (blur (lambda (y) (letrec* ((g7981 y)) g7981)))
               (lp
                (lambda (a)
                  (letrec*
                   ((g7982
                     (lambda (n)
                       (letrec*
                        ((g7983
                          (letrec*
                           ((x-cnd7984
                             (begin
                               (write '(funapp 1670 40))
                               (display "\n")
                               (zero? n))))
                           (if x-cnd7984
                             (begin
                               (write '(funapp 1672 30))
                               (display "\n")
                               (id a))
                             (letrec*
                              ((r
                                (letrec*
                                 ((x7985
                                   (begin
                                     (write '(funapp 1674 52))
                                     (display "\n")
                                     (blur id))))
                                 (begin
                                   (write '(funapp 1674 64))
                                   (display "\n")
                                   (x7985 #t))))
                               (s
                                (letrec*
                                 ((x7986
                                   (begin
                                     (write '(funapp 1675 52))
                                     (display "\n")
                                     (blur id))))
                                 (begin
                                   (write '(funapp 1675 64))
                                   (display "\n")
                                   (x7986 #f)))))
                              (letrec*
                               ((g7987
                                 (letrec*
                                  ((x7988
                                    (letrec*
                                     ((x7990
                                       (letrec*
                                        ((x7991
                                          (begin
                                            (write '(funapp 1682 57))
                                            (display "\n")
                                            (blur lp))))
                                        (begin
                                          (write '(funapp 1682 69))
                                          (display "\n")
                                          (x7991 s))))
                                      (x7989
                                       (begin
                                         (write '(funapp 1683 46))
                                         (display "\n")
                                         (sub1 n))))
                                     (begin
                                       (write '(funapp 1684 38))
                                       (display "\n")
                                       (x7990 x7989)))))
                                  (begin
                                    (write '(funapp 1685 35))
                                    (display "\n")
                                    (not x7988)))))
                               g7987))))))
                        g7983))))
                   g7982))))
              (letrec*
               ((g7992
                 (letrec*
                  ((x7993
                    (begin (write '(funapp 1690 41)) (display "\n") (lp #f))))
                  (begin (write '(funapp 1690 51)) (display "\n") (x7993 2)))))
               g7992))))
           g7425))))
       g7408)))
    g7407)))
