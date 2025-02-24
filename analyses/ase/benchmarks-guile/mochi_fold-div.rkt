(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7408 #t)) g7408)))
    (meta (lambda (v) (letrec* ((g7409 v)) g7409)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7410
          (letrec*
           ((g7411
             (letrec*
              ((x-e7412 lst))
              (letrec*
               ((v1742 x-e7412))
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
                   ((x-cnd7413
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7413
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
           g7411)))
        g7410)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7414 (lambda (v) (letrec* ((g7415 v)) g7415)))) g7414)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7416
          (letrec*
           ((x7417 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7417)))))
        g7416))))
   (letrec*
    ((g7418
      (letrec*
       ((g7419
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7420
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7420)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7421
                 (letrec*
                  ((x7423
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7423))))
                (g7422
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7424
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7425 (if val7244 val7244 #f))) g7425)))))
                   g7424))))
               g7422)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7426
                 (letrec*
                  ((x7428
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7428))))
                (g7427
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7429
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7430 (if val7246 val7246 #f))) g7430)))))
                   g7429))))
               g7427)))
           (>
            (lambda (x y)
              (letrec*
               ((g7431
                 (letrec*
                  ((x7433
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7433))))
                (g7432
                 (letrec*
                  ((x7434
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7434)))))
               g7432)))
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
           ((g7435 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7436
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7437
                     (lambda (k j lst)
                       (letrec*
                        ((g7438
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7439
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7439))
                             lst))))
                        g7438))))
                   g7437)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x-cnd7441
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7441
                        g7263
                        (begin
                          (write '(blame g7261 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7440)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7443
                        g7266
                        (begin
                          (write '(blame g7264 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7442)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7445
                        g7269
                        (begin
                          (write '(blame g7267 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7444)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7448 #t)) g7448)) g7272))))
                      (if x-cnd7447
                        g7272
                        (begin
                          (write '(blame g7270 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7446)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7451 #t)) g7451)) g7275))))
                      (if x-cnd7450
                        g7275
                        (begin
                          (write '(blame g7273 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7449)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7453
                        g7278
                        (begin
                          (write '(blame g7276 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7452)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7455
                        g7281
                        (begin
                          (write '(blame g7279 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7454)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7457
                        g7284
                        (begin
                          (write '(blame g7282 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7456)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7459
                        g7287
                        (begin
                          (write '(blame g7285 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7458)))
               (string?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7290))))
                      (if x-cnd7461
                        g7290
                        (begin
                          (write '(blame g7288 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7460)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7462
                     (lambda (k j v)
                       (letrec*
                        ((g7463
                          (letrec*
                           ((x-cnd7464
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7464
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7463))))
                   g7462)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7465
                     (lambda (k j v)
                       (letrec*
                        ((g7466
                          (letrec*
                           ((x-cnd7467
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7467
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7471
                                (letrec*
                                 ((x7472
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7472))))
                               (x7468
                                (letrec*
                                 ((x7470
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7469
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7470 k j x7469)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7471 x7468)))))))
                        g7466))))
                   g7465)))
               (any? (lambda (v) (letrec* ((g7473 #t)) g7473)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x7475
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7475)))))
                   g7474)))
               (nonzero?/c
                (lambda (g7291 g7292 g7293)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x-cnd7477
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7478
                                (letrec*
                                 ((x7479
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7479)))))
                              g7478))
                           g7293))))
                      (if x-cnd7477
                        g7293
                        (begin
                          (write '(blame g7291 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7291)))))))
                   g7476)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7480
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7481
                          (letrec*
                           ((x-cnd7482
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7483
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7483))
                                g7296))))
                           (if x-cnd7482
                             g7296
                             (begin
                               (write '(blame g7294 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7481))))
                   g7480)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7484
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7485
                          (letrec*
                           ((x-cnd7486
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7487
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7487))
                                g7299))))
                           (if x-cnd7486
                             g7299
                             (begin
                               (write '(blame g7297 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7485))))
                   g7484)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7488
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7489
                          (letrec*
                           ((x-cnd7490
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7491
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7491))
                                g7302))))
                           (if x-cnd7490
                             g7302
                             (begin
                               (write '(blame g7300 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7489))))
                   g7488)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7492
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7493
                          (letrec*
                           ((x-cnd7494
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7495
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7495))
                                g7305))))
                           (if x-cnd7494
                             g7305
                             (begin
                               (write '(blame g7303 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7493))))
                   g7492)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7496
                     (lambda (g7306 g7307 g7308)
                       (letrec*
                        ((g7497
                          (letrec*
                           ((x-cnd7498
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7499
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7499))
                                g7308))))
                           (if x-cnd7498
                             g7308
                             (begin
                               (write '(blame g7306 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7306)))))))
                        g7497))))
                   g7496)))
               (meta (lambda (v) (letrec* ((g7500 v)) g7500)))
               (+
                (letrec*
                 ((xj7309
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7310
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7501
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7313 k7314 f7315)
                         (letrec*
                          ((g7503
                            (lambda (g7311 g7312)
                              (letrec*
                               ((g7504
                                 (letrec*
                                  ((x7505
                                    (letrec*
                                     ((x7507
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7313 k7314 g7311)))
                                      (x7506
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7313 k7314 g7312))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7315 x7507 x7506)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7313 k7314 x7505)))))
                               g7504))))
                          g7503))
                       xj7309
                       xk7310
                       (lambda (a b)
                         (letrec*
                          ((g7502
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7502))))))
                  g7501)))
               (-
                (letrec*
                 ((xj7316
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7317
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7508
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7510
                            (lambda (g7318 g7319)
                              (letrec*
                               ((g7511
                                 (letrec*
                                  ((x7512
                                    (letrec*
                                     ((x7514
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7318)))
                                      (x7513
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7322 x7514 x7513)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7320 k7321 x7512)))))
                               g7511))))
                          g7510))
                       xj7316
                       xk7317
                       (lambda (a b)
                         (letrec*
                          ((g7509
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7509))))))
                  g7508)))
               (*
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7515
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7327 k7328 f7329)
                         (letrec*
                          ((g7517
                            (lambda (g7325 g7326)
                              (letrec*
                               ((g7518
                                 (letrec*
                                  ((x7519
                                    (letrec*
                                     ((x7521
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7325)))
                                      (x7520
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7326))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7329 x7521 x7520)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7327 k7328 x7519)))))
                               g7518))))
                          g7517))
                       xj7323
                       xk7324
                       (lambda (a b)
                         (letrec*
                          ((g7516
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7516))))))
                  g7515)))
               (<
                (letrec*
                 ((xj7330
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7331
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7522
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7334 k7335 f7336)
                         (letrec*
                          ((g7524
                            (lambda (g7332 g7333)
                              (letrec*
                               ((g7525
                                 (letrec*
                                  ((x7526
                                    (letrec*
                                     ((x7528
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7332)))
                                      (x7527
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7333))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7336 x7528 x7527)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7334 k7335 x7526)))))
                               g7525))))
                          g7524))
                       xj7330
                       xk7331
                       (lambda (a b)
                         (letrec*
                          ((g7523
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7523))))))
                  g7522)))
               (>
                (letrec*
                 ((xj7337
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7338
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7529
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7341 k7342 f7343)
                         (letrec*
                          ((g7531
                            (lambda (g7339 g7340)
                              (letrec*
                               ((g7532
                                 (letrec*
                                  ((x7533
                                    (letrec*
                                     ((x7535
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7339)))
                                      (x7534
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7340))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7343 x7535 x7534)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7341 k7342 x7533)))))
                               g7532))))
                          g7531))
                       xj7337
                       xk7338
                       (lambda (a b)
                         (letrec*
                          ((g7530
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7530))))))
                  g7529)))
               (<=
                (letrec*
                 ((xj7344
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7345
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7536
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7348 k7349 f7350)
                         (letrec*
                          ((g7538
                            (lambda (g7346 g7347)
                              (letrec*
                               ((g7539
                                 (letrec*
                                  ((x7540
                                    (letrec*
                                     ((x7542
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7346)))
                                      (x7541
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7347))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7350 x7542 x7541)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7348 k7349 x7540)))))
                               g7539))))
                          g7538))
                       xj7344
                       xk7345
                       (lambda (a b)
                         (letrec*
                          ((g7537
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7537))))))
                  g7536)))
               (>=
                (letrec*
                 ((xj7351
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7352
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7543
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7355 k7356 f7357)
                         (letrec*
                          ((g7545
                            (lambda (g7353 g7354)
                              (letrec*
                               ((g7546
                                 (letrec*
                                  ((x7547
                                    (letrec*
                                     ((x7549
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7353)))
                                      (x7548
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7354))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7357 x7549 x7548)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7355 k7356 x7547)))))
                               g7546))))
                          g7545))
                       xj7351
                       xk7352
                       (lambda (a b)
                         (letrec*
                          ((g7544
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7544))))))
                  g7543)))
               (/
                (letrec*
                 ((xj7358
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7359
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7550
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7362 k7363 f7364)
                         (letrec*
                          ((g7552
                            (lambda (g7360 g7361)
                              (letrec*
                               ((g7553
                                 (letrec*
                                  ((x7554
                                    (letrec*
                                     ((x7556
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7360)))
                                      (x7555
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7361))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7364 x7556 x7555)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7362 k7363 x7554)))))
                               g7553))))
                          g7552))
                       xj7358
                       xk7359
                       (lambda (a b)
                         (letrec*
                          ((g7551
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7551))))))
                  g7550)))
               (car
                (letrec*
                 ((xj7365
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7366
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7557
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7368 k7369 f7370)
                         (letrec*
                          ((g7559
                            (lambda (g7367)
                              (letrec*
                               ((g7560
                                 (letrec*
                                  ((x7561
                                    (letrec*
                                     ((x7562
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7368 k7369 g7367))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7370 x7562)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7368 k7369 x7561)))))
                               g7560))))
                          g7559))
                       xj7365
                       xk7366
                       (lambda (p)
                         (letrec*
                          ((g7558
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7558))))))
                  g7557)))
               (cdr
                (letrec*
                 ((xj7371
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7372
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7563
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7374 k7375 f7376)
                         (letrec*
                          ((g7565
                            (lambda (g7373)
                              (letrec*
                               ((g7566
                                 (letrec*
                                  ((x7567
                                    (letrec*
                                     ((x7568
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7374 k7375 g7373))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7376 x7568)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7374 k7375 x7567)))))
                               g7566))))
                          g7565))
                       xj7371
                       xk7372
                       (lambda (p)
                         (letrec*
                          ((g7564
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7564))))))
                  g7563)))
               (cons
                (letrec*
                 ((xj7377
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7378
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7569
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7381 k7382 f7383)
                         (letrec*
                          ((g7571
                            (lambda (g7379 g7380)
                              (letrec*
                               ((g7572
                                 (letrec*
                                  ((x7573
                                    (letrec*
                                     ((x7575
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7381 k7382 g7379)))
                                      (x7574
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7381 k7382 g7380))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7383 x7575 x7574)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7381 k7382 x7573)))))
                               g7572))))
                          g7571))
                       xj7377
                       xk7378
                       (lambda (a b)
                         (letrec*
                          ((g7570
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7570))))))
                  g7569)))
               (vector-ref
                (letrec*
                 ((xj7384
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7385
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7576
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7387 k7388 f7389)
                         (letrec*
                          ((g7578
                            (lambda (g7386)
                              (letrec*
                               ((g7579
                                 (letrec*
                                  ((x7580
                                    (letrec*
                                     ((x7581
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7387 k7388 g7386))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7389 x7581)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7387 k7388 x7580)))))
                               g7579))))
                          g7578))
                       xj7384
                       xk7385
                       (lambda (v i)
                         (letrec*
                          ((g7577
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7577))))))
                  g7576)))
               (vector-set!
                (letrec*
                 ((xj7390
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7391
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7582
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7394 k7395 f7396)
                         (letrec*
                          ((g7584
                            (lambda (g7392 g7393)
                              (letrec*
                               ((g7585
                                 (letrec*
                                  ((x7586
                                    (letrec*
                                     ((x7588
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7394 k7395 g7392)))
                                      (x7587
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7394 k7395 g7393))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7396 x7588 x7587)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7394 k7395 x7586)))))
                               g7585))))
                          g7584))
                       xj7390
                       xk7391
                       (lambda (vec i v)
                         (letrec*
                          ((g7583
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7583))))))
                  g7582)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7589
                     (letrec*
                      ((x7590
                        (letrec*
                         ((x7591
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7591)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7590)))))
                   g7589)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7592
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7595))))
                    (g7593
                     (letrec*
                      ((x7596
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7596))))
                    (g7594
                     (letrec*
                      ((x-cnd7597
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7597
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7600
                           (letrec*
                            ((x7601
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7601))))
                          (x7598
                           (letrec*
                            ((x7599
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7599)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7600 x7598)))))))
                   g7594)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7603)))))
                   g7602)))
               (cadadr
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
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7607)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7606)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7605)))))
                   g7604)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7609
                        (letrec*
                         ((x7610
                           (letrec*
                            ((x7611
                              (begin
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7611)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7610)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7609)))))
                   g7608)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7615))))
                    (g7613
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7616))))
                    (g7614
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
                       ((g7617
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7618 res))
                       g7618))))
                   g7614)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7620
                        (letrec*
                         ((x7621
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7621)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7620)))))
                   g7619)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7623
                        (letrec*
                         ((x7624
                           (letrec*
                            ((x7625
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7625)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7624)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7623)))))
                   g7622)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7628))))
                    (g7627
                     (letrec*
                      ((x-cnd7629
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7629
                        #f
                        (letrec*
                         ((x-cnd7630
                           (letrec*
                            ((x7631
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7631 k)))))
                         (if x-cnd7630
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7632
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7632)))))))))
                   g7627)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7634)))))
                   g7633)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7637
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7637))))
                    (g7636
                     (letrec*
                      ((x-cnd7638
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7638
                        ""
                        (letrec*
                         ((x7641
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7642))))
                          (x7639
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7640)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7641 x7639)))))))
                   g7636)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7646))))
                    (g7644
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7647))))
                    (g7645
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7648
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7648))))
                   g7645)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7650
                        (letrec*
                         ((x7651
                           (letrec*
                            ((x7652
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7652)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7651)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7650)))))
                   g7649)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7656))))
                    (g7654
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7657))))
                    (g7655
                     (letrec*
                      ((x-cnd7658
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7658
                        x
                        (letrec*
                         ((x7660
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7659
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7660 x7659)))))))
                   g7655)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7661
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7661)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x-cnd7663
                        (letrec*
                         ((x7664 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7664)))))
                      (if x-cnd7663
                        (letrec*
                         ((x7665 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7665)))
                        #f))))
                   g7662)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7667
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7667 9)))))
                      (letrec*
                       ((g7668
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7669
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7669 10)))))
                            (letrec*
                             ((g7670
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7671
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7671 32))))))
                             g7670)))))
                       g7668))))
                   g7666)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((x7673
                        (letrec*
                         ((x7674
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7674)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7673)))))
                   g7672)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x7677
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7677))))
                    (g7676
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7676)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7678 #f)) g7678)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7679
                     (letrec*
                      ((x7680
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7680)))))
                   g7679)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((x7683
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7683))))
                    (g7682
                     (letrec*
                      ((x-cnd7684
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7684
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7682)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7685
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7686
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7687
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7687
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7688
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7689
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7689
                                       (letrec*
                                        ((x-cnd7690
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7690
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7691
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7692
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7692
                                             (letrec*
                                              ((x-cnd7693
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7693
                                                (letrec*
                                                 ((x-cnd7694
                                                   (letrec*
                                                    ((x7696
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7695
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7696 x7695)))))
                                                 (if x-cnd7694
                                                   (letrec*
                                                    ((x7698
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7697
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7698 x7697)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7699
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7700
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7700
                                                (letrec*
                                                 ((x-cnd7701
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7701
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7702
                                                       (letrec*
                                                        ((x-cnd7703
                                                          (letrec*
                                                           ((x7704
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
                                                             (= x7704 n)))))
                                                        (if x-cnd7703
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7705
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
                                                                    ((g7706
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7707
                                                                           (letrec*
                                                                            ((x7709
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
                                                                             (x7708
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
                                                                               x7709
                                                                               x7708)))))
                                                                         (if x-cnd7707
                                                                           (letrec*
                                                                            ((x7710
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
                                                                               x7710)))
                                                                           #f)))))
                                                                    g7706))))
                                                                g7705))))
                                                           (letrec*
                                                            ((g7711
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7711))
                                                          #f))))
                                                     g7702))
                                                   #f))
                                                #f)))))
                                         g7699)))))
                                   g7691)))))
                             g7688)))))
                       g7686))))
                   g7685)))
               (cdaaar
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
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7715)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7714)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7713)))))
                   g7712)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7716
                     (letrec*
                      ((x7717
                        (letrec*
                         ((x7718
                           (letrec*
                            ((x7719
                              (begin
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7719)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7718)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7717)))))
                   g7716)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7720
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7720)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7721
                     (letrec*
                      ((x7724
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7724))))
                    (g7722
                     (letrec*
                      ((x7725
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7725))))
                    (g7723
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
                       ((g7726
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7727 res))
                       g7727))))
                   g7723)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7728
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7728)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7732
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7732))))
                    (g7730
                     (letrec*
                      ((x7733
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7733))))
                    (g7731
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7734
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7734))))
                   g7731)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7736
                        (letrec*
                         ((x7737
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7737)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7736)))))
                   g7735)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7739
                        (letrec*
                         ((x7740
                           (letrec*
                            ((x7741
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7741)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7740)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7739)))))
                   g7738)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (letrec*
                         ((x7744
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7744)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7743)))))
                   g7742)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7746
                        (letrec*
                         ((x7747
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7747)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7746)))))
                   g7745)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7751))))
                    (g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7752))))
                    (g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7753)))))
                   g7750)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7757)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7756)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7755)))))
                   g7754)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7760))))
                    (g7759
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7759)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7761
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7761)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7763
                        (letrec*
                         ((x7764
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7764)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7763)))))
                   g7762)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7765
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7765)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7768))))
                    (g7767
                     (letrec*
                      ((x-cnd7769
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7769
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7773))))
                          (x7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7771)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7772 x7770)))))))
                   g7767)))
               (caaadr
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
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7777)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7776)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7775)))))
                   g7774)))
               (cddadr
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
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7781)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7780)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7779)))))
                   g7778)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7784))))
                    (g7783
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7785)))))
                   g7783)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7787
                        (letrec*
                         ((x7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7789)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7788)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7787)))))
                   g7786)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7793))))
                    (g7791
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7794))))
                    (g7792
                     (letrec*
                      ((x-cnd7795
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7795
                        (letrec*
                         ((g7796
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7796)
                        (letrec*
                         ((x-cnd7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7798)))))
                         (if x-cnd7797
                           (letrec*
                            ((g7799
                              (letrec*
                               ((x7800
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7800)))))
                            g7799)
                           (letrec*
                            ((x-cnd7801
                              (letrec*
                               ((x7802
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7802)))))
                            (if x-cnd7801
                              (letrec*
                               ((g7803
                                 (letrec*
                                  ((x7805
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7804
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7805 x7804)))))
                               g7803)
                              (letrec*
                               ((x-cnd7806
                                 (letrec*
                                  ((x7807
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7807)))))
                               (if x-cnd7806
                                 (letrec*
                                  ((g7808
                                    (letrec*
                                     ((x7811
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7810
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7809
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7811 x7810 x7809)))))
                                  g7808)
                                 (letrec*
                                  ((x-cnd7812
                                    (letrec*
                                     ((x7813
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7813)))))
                                  (if x-cnd7812
                                    (letrec*
                                     ((g7814
                                       (letrec*
                                        ((x7818
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7817
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7816
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7815
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7818 x7817 x7816 x7815)))))
                                     g7814)
                                    (letrec*
                                     ((x-cnd7819
                                       (letrec*
                                        ((x7820
                                          (letrec*
                                           ((x7821
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7821)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7820)))))
                                     (if x-cnd7819
                                       (letrec*
                                        ((g7822
                                          (letrec*
                                           ((x7828
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7827
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7826
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7825
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7823
                                             (letrec*
                                              ((x7824
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7824)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7828
                                              x7827
                                              x7826
                                              x7825
                                              x7823)))))
                                        g7822)
                                       (letrec*
                                        ((x-cnd7829
                                          (letrec*
                                           ((x7830
                                             (letrec*
                                              ((x7831
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7831)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7830)))))
                                        (if x-cnd7829
                                          (letrec*
                                           ((g7832
                                             (letrec*
                                              ((x7840
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7839
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7838
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7837
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7835
                                                (letrec*
                                                 ((x7836
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7836))))
                                               (x7833
                                                (letrec*
                                                 ((x7834
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7834)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7840
                                                 x7839
                                                 x7838
                                                 x7837
                                                 x7835
                                                 x7833)))))
                                           g7832)
                                          (letrec*
                                           ((x-cnd7841
                                             (letrec*
                                              ((x7842
                                                (letrec*
                                                 ((x7843
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7843)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7842)))))
                                           (if x-cnd7841
                                             (letrec*
                                              ((g7844
                                                (letrec*
                                                 ((x7854
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7853
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7852
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7851
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7849
                                                   (letrec*
                                                    ((x7850
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7850))))
                                                  (x7847
                                                   (letrec*
                                                    ((x7848
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7848))))
                                                  (x7845
                                                   (letrec*
                                                    ((x7846
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7846)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7854
                                                    x7853
                                                    x7852
                                                    x7851
                                                    x7849
                                                    x7847
                                                    x7845)))))
                                              g7844)
                                             (letrec*
                                              ((g7855
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7855)))))))))))))))))))
                   g7792)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7858))))
                    (g7857
                     (letrec*
                      ((x-cnd7859
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7859
                        #f
                        (letrec*
                         ((x-cnd7860
                           (letrec*
                            ((x7861
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7861 e)))))
                         (if x-cnd7860
                           l
                           (letrec*
                            ((x7862
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7862)))))))))
                   g7857)))
               (cddddr
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
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7866)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7865)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7864)))))
                   g7863)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x7868
                        (letrec*
                         ((x7869
                           (letrec*
                            ((x7870
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7870)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7869)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7868)))))
                   g7867)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7871
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7871)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7874
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7874))))
                    (g7873
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7873)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7876
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7876))))
                   g7875)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7878)))))
                   g7877)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7880
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7880
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7881)))
                           #f))))
                      (letrec*
                       ((g7882
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7882))))
                   g7879)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((x7884
                        (letrec*
                         ((x7885
                           (letrec*
                            ((x7886
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7886)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7885)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7884)))))
                   g7883)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x-cnd7888
                        (letrec*
                         ((x7889 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7889 c)))))
                      (if x-cnd7888
                        (letrec*
                         ((x7890 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7890)))
                        #f))))
                   g7887)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x7893
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7893))))
                    (g7892
                     (letrec*
                      ((x-cnd7894
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7894
                        #f
                        (letrec*
                         ((x-cnd7895
                           (letrec*
                            ((x7896
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7896 k)))))
                         (if x-cnd7895
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7897)))))))))
                   g7892)))
               (not (lambda (x) (letrec* ((g7898 (if x #f #t))) g7898)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7899
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7899)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7902))))
                    (g7901
                     (letrec*
                      ((x-cnd7903
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7903
                        #f
                        (letrec*
                         ((x-cnd7904
                           (letrec*
                            ((x7905
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7905 e)))))
                         (if x-cnd7904
                           l
                           (letrec*
                            ((x7906
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7906)))))))))
                   g7901)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7908
                        (letrec*
                         ((x7909
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7910)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7909)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7908)))))
                   g7907)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7913
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7913))))
                    (g7912
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7914
                             (letrec*
                              ((x-cnd7915
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7915
                                0
                                (letrec*
                                 ((x7916
                                   (letrec*
                                    ((x7917
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7917)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7916)))))))
                           g7914))))
                      (letrec*
                       ((g7918
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7918))))
                   g7912)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7922))))
                    (g7920
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7923))))
                    (g7921
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7924
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7924))))
                   g7921)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7926
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7926)))))
                   g7925)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7928
                        (letrec*
                         ((x7929
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7929)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7928)))))
                   g7927)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7932
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7932))))
                    (g7931
                     (letrec*
                      ((x-cnd7933
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7933
                        #f
                        (letrec*
                         ((x-cnd7934
                           (letrec*
                            ((x7935
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7935 k)))))
                         (if x-cnd7934
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7936
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7936)))))))))
                   g7931)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7938)))))
                   g7937)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7944)))))
                   g7941)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7946
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7946))))
                   g7945)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7950))))
                    (g7948
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7951))))
                    (g7949
                     (letrec*
                      ((x-cnd7952
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7952
                        #t
                        (letrec*
                         ((x-cnd7953
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7953
                           (letrec*
                            ((g7954
                              (letrec*
                               ((x7956
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7956))))
                             (g7955
                              (letrec*
                               ((x7957
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7957)))))
                            g7955)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7949)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7960))))
                    (g7959
                     (letrec*
                      ((x-cnd7961
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7961
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7959)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7965))))
                    (g7963
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7966))))
                    (g7964
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7967
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7967))))
                   g7964)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7969
                        (letrec*
                         ((x7970
                           (letrec*
                            ((x7971
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7971)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7970)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7969)))))
                   g7968)))
               (newline (lambda () (letrec* ((g7972 #f)) g7972)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7975
                        (letrec*
                         ((x7976
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7976))))
                       (x7974
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7975 x7974)))))
                   g7973)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7977
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7981))))
                    (g7978
                     (letrec*
                      ((x7982
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7982))))
                    (g7979
                     (letrec*
                      ((x7983
                        (letrec*
                         ((x7984
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7984)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7983))))
                    (g7980
                     (letrec*
                      ((x-cnd7985
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7985
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7987
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7986
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7987 x7986)))))))
                   g7980)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7988
                     (letrec*
                      ((x-cnd7989
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7989
                        a
                        (letrec*
                         ((x7990
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7990)))))))
                   g7988)))
               (foldl
                (lambda (f z l)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((x-cnd7992
                        (begin
                          (write '(funapp 1665 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7992
                        z
                        (letrec*
                         ((x7994
                           (letrec*
                            ((x7995
                              (begin
                                (write '(funapp 1669 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1669 61))
                              (display "\n")
                              (f z x7995))))
                          (x7993
                           (begin
                             (write '(funapp 1670 34))
                             (display "\n")
                             (cdr l))))
                         (begin
                           (write '(funapp 1671 26))
                           (display "\n")
                           (foldl f x7994 x7993)))))))
                   g7991)))
               (randpos
                (lambda (rand)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((n
                        (begin
                          (write '(funapp 1678 27))
                          (display "\n")
                          (rand))))
                      (letrec*
                       ((g7997
                         (letrec*
                          ((x-cnd7998
                            (begin
                              (write '(funapp 1682 39))
                              (display "\n")
                              (> n 0))))
                          (if x-cnd7998
                            n
                            (begin
                              (write '(funapp 1683 43))
                              (display "\n")
                              (randpos rand))))))
                       g7997))))
                   g7996)))
               (mk-list
                (lambda (rand n)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x-cnd8000
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd8000
                        empty
                        (letrec*
                         ((x8003
                           (begin
                             (write '(funapp 1695 34))
                             (display "\n")
                             (randpos rand)))
                          (x8001
                           (letrec*
                            ((x8002
                              (begin
                                (write '(funapp 1697 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1697 55))
                              (display "\n")
                              (mk-list rand x8002)))))
                         (begin
                           (write '(funapp 1698 26))
                           (display "\n")
                           (cons x8003 x8001)))))))
                   g7999)))
               (main
                (lambda (rand n m)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((x8005
                        (begin
                          (write '(funapp 1704 39))
                          (display "\n")
                          (mk-list rand n))))
                      (begin
                        (write '(funapp 1704 58))
                        (display "\n")
                        (foldl / m x8005)))))
                   g8004))))
              (letrec*
               ((g8006
                 (begin
                   (write '(funapp 1708 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1709 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8010
                          (letrec*
                           ((xj7397
                             (begin
                               (write '(funapp 1713 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1713 37))
                                  (display "\n")
                                  'module))))
                            (xk7398
                             (begin
                               (write '(funapp 1713 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1713 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8011
                              (begin
                                (write '(funapp 1716 27))
                                (display "\n")
                                ((lambda (j7402 k7403 f7404)
                                   (letrec*
                                    ((g8012
                                      (lambda (g7399 g7400 g7401)
                                        (letrec*
                                         ((g8013
                                           (letrec*
                                            ((x8014
                                              (letrec*
                                               ((x8017
                                                 (begin
                                                   (write '(funapp 1726 44))
                                                   (display "\n")
                                                   ((lambda (j7405 k7406 f7407)
                                                      (letrec*
                                                       ((g8018
                                                         (lambda ()
                                                           (letrec*
                                                            ((g8019
                                                              (letrec*
                                                               ((x8020
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1733
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (f7407))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1734
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7405
                                                                  k7406
                                                                  x8020)))))
                                                            g8019))))
                                                       g8018))
                                                    j7402
                                                    k7403
                                                    g7399)))
                                                (x8016
                                                 (begin
                                                   (write '(funapp 1744 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7402
                                                    k7403
                                                    g7400)))
                                                (x8015
                                                 (begin
                                                   (write '(funapp 1746 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7402
                                                    k7403
                                                    g7401))))
                                               (begin
                                                 (write '(funapp 1747 42))
                                                 (display "\n")
                                                 (f7404 x8017 x8016 x8015)))))
                                            (begin
                                              (write '(funapp 1748 39))
                                              (display "\n")
                                              (real?/c j7402 k7403 x8014)))))
                                         g8013))))
                                    g8012))
                                 xj7397
                                 xk7398
                                 main))))
                            g8011)))
                         (x8009 (input))
                         (x8008 (input))
                         (x8007 (input)))
                        (begin
                          (write '(funapp 1758 21))
                          (display "\n")
                          (x8010 x8009 x8008 x8007)))))))))
               g8006))))
           g7436))))
       g7419)))
    g7418)))
