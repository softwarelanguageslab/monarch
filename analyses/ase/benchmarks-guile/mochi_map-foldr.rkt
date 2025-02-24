(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7421 #t)) g7421)))
    (meta (lambda (v) (letrec* ((g7422 v)) g7422)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7423
          (letrec*
           ((g7424
             (letrec*
              ((x-e7425 lst))
              (letrec*
               ((v1742 x-e7425))
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
                   ((x-cnd7426
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7426
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
           g7424)))
        g7423)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7427 (lambda (v) (letrec* ((g7428 v)) g7428)))) g7427)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7429
          (letrec*
           ((x7430 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7430)))))
        g7429))))
   (letrec*
    ((g7431
      (letrec*
       ((g7432
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7433
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7433)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7434
                 (letrec*
                  ((x7436
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7436))))
                (g7435
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7437
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7438 (if val7244 val7244 #f))) g7438)))))
                   g7437))))
               g7435)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7439
                 (letrec*
                  ((x7441
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7441))))
                (g7440
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7442
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7443 (if val7246 val7246 #f))) g7443)))))
                   g7442))))
               g7440)))
           (>
            (lambda (x y)
              (letrec*
               ((g7444
                 (letrec*
                  ((x7446
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7446))))
                (g7445
                 (letrec*
                  ((x7447
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7447)))))
               g7445)))
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
           ((g7448 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7449
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7450
                     (lambda (k j lst)
                       (letrec*
                        ((g7451
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7452
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7452))
                             lst))))
                        g7451))))
                   g7450)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7454
                        g7263
                        (begin
                          (write '(blame g7261 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7453)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7456
                        g7266
                        (begin
                          (write '(blame g7264 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7455)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7458
                        g7269
                        (begin
                          (write '(blame g7267 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7457)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x-cnd7460
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7461 #t)) g7461)) g7272))))
                      (if x-cnd7460
                        g7272
                        (begin
                          (write '(blame g7270 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7459)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x-cnd7463
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7464 #t)) g7464)) g7275))))
                      (if x-cnd7463
                        g7275
                        (begin
                          (write '(blame g7273 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7462)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x-cnd7466
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7466
                        g7278
                        (begin
                          (write '(blame g7276 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7465)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x-cnd7468
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7468
                        g7281
                        (begin
                          (write '(blame g7279 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7467)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x-cnd7470
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7470
                        g7284
                        (begin
                          (write '(blame g7282 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7469)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x-cnd7472
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7472
                        g7287
                        (begin
                          (write '(blame g7285 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7471)))
               (string?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x-cnd7474
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7290))))
                      (if x-cnd7474
                        g7290
                        (begin
                          (write '(blame g7288 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7473)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7475
                     (lambda (k j v)
                       (letrec*
                        ((g7476
                          (letrec*
                           ((x-cnd7477
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7477
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7476))))
                   g7475)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7478
                     (lambda (k j v)
                       (letrec*
                        ((g7479
                          (letrec*
                           ((x-cnd7480
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7480
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7484
                                (letrec*
                                 ((x7485
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7485))))
                               (x7481
                                (letrec*
                                 ((x7483
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7482
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7483 k j x7482)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7484 x7481)))))))
                        g7479))))
                   g7478)))
               (any? (lambda (v) (letrec* ((g7486 #t)) g7486)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x7488
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7488)))))
                   g7487)))
               (nonzero?/c
                (lambda (g7291 g7292 g7293)
                  (letrec*
                   ((g7489
                     (letrec*
                      ((x-cnd7490
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7491
                                (letrec*
                                 ((x7492
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7492)))))
                              g7491))
                           g7293))))
                      (if x-cnd7490
                        g7293
                        (begin
                          (write '(blame g7291 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7291)))))))
                   g7489)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7493
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7494
                          (letrec*
                           ((x-cnd7495
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7496
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7496))
                                g7296))))
                           (if x-cnd7495
                             g7296
                             (begin
                               (write '(blame g7294 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7494))))
                   g7493)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7497
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7498
                          (letrec*
                           ((x-cnd7499
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7500
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7500))
                                g7299))))
                           (if x-cnd7499
                             g7299
                             (begin
                               (write '(blame g7297 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7498))))
                   g7497)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7501
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7502
                          (letrec*
                           ((x-cnd7503
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7504
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7504))
                                g7302))))
                           (if x-cnd7503
                             g7302
                             (begin
                               (write '(blame g7300 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7502))))
                   g7501)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7505
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7506
                          (letrec*
                           ((x-cnd7507
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7508
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7508))
                                g7305))))
                           (if x-cnd7507
                             g7305
                             (begin
                               (write '(blame g7303 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7506))))
                   g7505)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7509
                     (lambda (g7306 g7307 g7308)
                       (letrec*
                        ((g7510
                          (letrec*
                           ((x-cnd7511
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7512
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7512))
                                g7308))))
                           (if x-cnd7511
                             g7308
                             (begin
                               (write '(blame g7306 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7306)))))))
                        g7510))))
                   g7509)))
               (meta (lambda (v) (letrec* ((g7513 v)) g7513)))
               (+
                (letrec*
                 ((xj7309
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7310
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7514
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7313 k7314 f7315)
                         (letrec*
                          ((g7516
                            (lambda (g7311 g7312)
                              (letrec*
                               ((g7517
                                 (letrec*
                                  ((x7518
                                    (letrec*
                                     ((x7520
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7313 k7314 g7311)))
                                      (x7519
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7313 k7314 g7312))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7315 x7520 x7519)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7313 k7314 x7518)))))
                               g7517))))
                          g7516))
                       xj7309
                       xk7310
                       (lambda (a b)
                         (letrec*
                          ((g7515
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7515))))))
                  g7514)))
               (-
                (letrec*
                 ((xj7316
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7317
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7521
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7523
                            (lambda (g7318 g7319)
                              (letrec*
                               ((g7524
                                 (letrec*
                                  ((x7525
                                    (letrec*
                                     ((x7527
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7318)))
                                      (x7526
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7322 x7527 x7526)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7320 k7321 x7525)))))
                               g7524))))
                          g7523))
                       xj7316
                       xk7317
                       (lambda (a b)
                         (letrec*
                          ((g7522
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7522))))))
                  g7521)))
               (*
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7528
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7327 k7328 f7329)
                         (letrec*
                          ((g7530
                            (lambda (g7325 g7326)
                              (letrec*
                               ((g7531
                                 (letrec*
                                  ((x7532
                                    (letrec*
                                     ((x7534
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7325)))
                                      (x7533
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7326))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7329 x7534 x7533)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7327 k7328 x7532)))))
                               g7531))))
                          g7530))
                       xj7323
                       xk7324
                       (lambda (a b)
                         (letrec*
                          ((g7529
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7529))))))
                  g7528)))
               (<
                (letrec*
                 ((xj7330
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7331
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7535
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7334 k7335 f7336)
                         (letrec*
                          ((g7537
                            (lambda (g7332 g7333)
                              (letrec*
                               ((g7538
                                 (letrec*
                                  ((x7539
                                    (letrec*
                                     ((x7541
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7332)))
                                      (x7540
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7333))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7336 x7541 x7540)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7334 k7335 x7539)))))
                               g7538))))
                          g7537))
                       xj7330
                       xk7331
                       (lambda (a b)
                         (letrec*
                          ((g7536
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7536))))))
                  g7535)))
               (>
                (letrec*
                 ((xj7337
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7338
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7542
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7341 k7342 f7343)
                         (letrec*
                          ((g7544
                            (lambda (g7339 g7340)
                              (letrec*
                               ((g7545
                                 (letrec*
                                  ((x7546
                                    (letrec*
                                     ((x7548
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7339)))
                                      (x7547
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7340))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7343 x7548 x7547)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7341 k7342 x7546)))))
                               g7545))))
                          g7544))
                       xj7337
                       xk7338
                       (lambda (a b)
                         (letrec*
                          ((g7543
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7543))))))
                  g7542)))
               (<=
                (letrec*
                 ((xj7344
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7345
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7549
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7348 k7349 f7350)
                         (letrec*
                          ((g7551
                            (lambda (g7346 g7347)
                              (letrec*
                               ((g7552
                                 (letrec*
                                  ((x7553
                                    (letrec*
                                     ((x7555
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7346)))
                                      (x7554
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7347))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7350 x7555 x7554)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7348 k7349 x7553)))))
                               g7552))))
                          g7551))
                       xj7344
                       xk7345
                       (lambda (a b)
                         (letrec*
                          ((g7550
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7550))))))
                  g7549)))
               (>=
                (letrec*
                 ((xj7351
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7352
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7556
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7355 k7356 f7357)
                         (letrec*
                          ((g7558
                            (lambda (g7353 g7354)
                              (letrec*
                               ((g7559
                                 (letrec*
                                  ((x7560
                                    (letrec*
                                     ((x7562
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7353)))
                                      (x7561
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7354))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7357 x7562 x7561)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7355 k7356 x7560)))))
                               g7559))))
                          g7558))
                       xj7351
                       xk7352
                       (lambda (a b)
                         (letrec*
                          ((g7557
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7557))))))
                  g7556)))
               (/
                (letrec*
                 ((xj7358
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7359
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7563
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7362 k7363 f7364)
                         (letrec*
                          ((g7565
                            (lambda (g7360 g7361)
                              (letrec*
                               ((g7566
                                 (letrec*
                                  ((x7567
                                    (letrec*
                                     ((x7569
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7360)))
                                      (x7568
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7361))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7364 x7569 x7568)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7362 k7363 x7567)))))
                               g7566))))
                          g7565))
                       xj7358
                       xk7359
                       (lambda (a b)
                         (letrec*
                          ((g7564
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7564))))))
                  g7563)))
               (car
                (letrec*
                 ((xj7365
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7366
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7570
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7368 k7369 f7370)
                         (letrec*
                          ((g7572
                            (lambda (g7367)
                              (letrec*
                               ((g7573
                                 (letrec*
                                  ((x7574
                                    (letrec*
                                     ((x7575
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7368 k7369 g7367))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7370 x7575)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7368 k7369 x7574)))))
                               g7573))))
                          g7572))
                       xj7365
                       xk7366
                       (lambda (p)
                         (letrec*
                          ((g7571
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7571))))))
                  g7570)))
               (cdr
                (letrec*
                 ((xj7371
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7372
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7576
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7374 k7375 f7376)
                         (letrec*
                          ((g7578
                            (lambda (g7373)
                              (letrec*
                               ((g7579
                                 (letrec*
                                  ((x7580
                                    (letrec*
                                     ((x7581
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7374 k7375 g7373))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7376 x7581)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7374 k7375 x7580)))))
                               g7579))))
                          g7578))
                       xj7371
                       xk7372
                       (lambda (p)
                         (letrec*
                          ((g7577
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7577))))))
                  g7576)))
               (cons
                (letrec*
                 ((xj7377
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7378
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7582
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7381 k7382 f7383)
                         (letrec*
                          ((g7584
                            (lambda (g7379 g7380)
                              (letrec*
                               ((g7585
                                 (letrec*
                                  ((x7586
                                    (letrec*
                                     ((x7588
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7381 k7382 g7379)))
                                      (x7587
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7381 k7382 g7380))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7383 x7588 x7587)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7381 k7382 x7586)))))
                               g7585))))
                          g7584))
                       xj7377
                       xk7378
                       (lambda (a b)
                         (letrec*
                          ((g7583
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7583))))))
                  g7582)))
               (vector-ref
                (letrec*
                 ((xj7384
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7385
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7589
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7387 k7388 f7389)
                         (letrec*
                          ((g7591
                            (lambda (g7386)
                              (letrec*
                               ((g7592
                                 (letrec*
                                  ((x7593
                                    (letrec*
                                     ((x7594
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7387 k7388 g7386))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7389 x7594)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7387 k7388 x7593)))))
                               g7592))))
                          g7591))
                       xj7384
                       xk7385
                       (lambda (v i)
                         (letrec*
                          ((g7590
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7590))))))
                  g7589)))
               (vector-set!
                (letrec*
                 ((xj7390
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7391
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7595
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7394 k7395 f7396)
                         (letrec*
                          ((g7597
                            (lambda (g7392 g7393)
                              (letrec*
                               ((g7598
                                 (letrec*
                                  ((x7599
                                    (letrec*
                                     ((x7601
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7394 k7395 g7392)))
                                      (x7600
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7394 k7395 g7393))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7396 x7601 x7600)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7394 k7395 x7599)))))
                               g7598))))
                          g7597))
                       xj7390
                       xk7391
                       (lambda (vec i v)
                         (letrec*
                          ((g7596
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7596))))))
                  g7595)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7603
                        (letrec*
                         ((x7604
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7604)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7603)))))
                   g7602)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7608
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7608))))
                    (g7606
                     (letrec*
                      ((x7609
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7609))))
                    (g7607
                     (letrec*
                      ((x-cnd7610
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7610
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7613
                           (letrec*
                            ((x7614
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7614))))
                          (x7611
                           (letrec*
                            ((x7612
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7612)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7613 x7611)))))))
                   g7607)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7616)))))
                   g7615)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7618
                        (letrec*
                         ((x7619
                           (letrec*
                            ((x7620
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7620)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7619)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7618)))))
                   g7617)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7622
                        (letrec*
                         ((x7623
                           (letrec*
                            ((x7624
                              (begin
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7624)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7623)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7622)))))
                   g7621)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7628))))
                    (g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7629))))
                    (g7627
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
                       ((g7630
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7631 res))
                       g7631))))
                   g7627)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7633
                        (letrec*
                         ((x7634
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7634)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7633)))))
                   g7632)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7636
                        (letrec*
                         ((x7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7638)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7637)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7636)))))
                   g7635)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7641))))
                    (g7640
                     (letrec*
                      ((x-cnd7642
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7642
                        #f
                        (letrec*
                         ((x-cnd7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7644 k)))))
                         (if x-cnd7643
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7645)))))))))
                   g7640)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7647)))))
                   g7646)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7650))))
                    (g7649
                     (letrec*
                      ((x-cnd7651
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7651
                        ""
                        (letrec*
                         ((x7654
                           (letrec*
                            ((x7655
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7655))))
                          (x7652
                           (letrec*
                            ((x7653
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7653)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7654 x7652)))))))
                   g7649)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7661
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7661))))
                   g7658)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7663
                        (letrec*
                         ((x7664
                           (letrec*
                            ((x7665
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7665)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7664)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7663)))))
                   g7662)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x7669
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7669))))
                    (g7667
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7670))))
                    (g7668
                     (letrec*
                      ((x-cnd7671
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7671
                        x
                        (letrec*
                         ((x7673
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7672
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7673 x7672)))))))
                   g7668)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7674
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7674)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x-cnd7676
                        (letrec*
                         ((x7677 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7677)))))
                      (if x-cnd7676
                        (letrec*
                         ((x7678 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7678)))
                        #f))))
                   g7675)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7679
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7680
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7680 9)))))
                      (letrec*
                       ((g7681
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7682
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7682 10)))))
                            (letrec*
                             ((g7683
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7684
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7684 32))))))
                             g7683)))))
                       g7681))))
                   g7679)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7685
                     (letrec*
                      ((x7686
                        (letrec*
                         ((x7687
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7687)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7686)))))
                   g7685)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7688
                     (letrec*
                      ((x7690
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7690))))
                    (g7689
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7689)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7691 #f)) g7691)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7692
                     (letrec*
                      ((x7693
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7693)))))
                   g7692)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7694
                     (letrec*
                      ((x7696
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7696))))
                    (g7695
                     (letrec*
                      ((x-cnd7697
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7697
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7695)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7698
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7699
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7700
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7700
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7701
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7702
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7702
                                       (letrec*
                                        ((x-cnd7703
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7703
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7704
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7705
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7705
                                             (letrec*
                                              ((x-cnd7706
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7706
                                                (letrec*
                                                 ((x-cnd7707
                                                   (letrec*
                                                    ((x7709
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7708
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7709 x7708)))))
                                                 (if x-cnd7707
                                                   (letrec*
                                                    ((x7711
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7710
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7711 x7710)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7712
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7713
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7713
                                                (letrec*
                                                 ((x-cnd7714
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7714
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7715
                                                       (letrec*
                                                        ((x-cnd7716
                                                          (letrec*
                                                           ((x7717
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
                                                             (= x7717 n)))))
                                                        (if x-cnd7716
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7718
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
                                                                    ((g7719
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7720
                                                                           (letrec*
                                                                            ((x7722
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
                                                                             (x7721
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
                                                                               x7722
                                                                               x7721)))))
                                                                         (if x-cnd7720
                                                                           (letrec*
                                                                            ((x7723
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
                                                                               x7723)))
                                                                           #f)))))
                                                                    g7719))))
                                                                g7718))))
                                                           (letrec*
                                                            ((g7724
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7724))
                                                          #f))))
                                                     g7715))
                                                   #f))
                                                #f)))))
                                         g7712)))))
                                   g7704)))))
                             g7701)))))
                       g7699))))
                   g7698)))
               (cdaaar
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
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7728)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7727)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7726)))))
                   g7725)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7730
                        (letrec*
                         ((x7731
                           (letrec*
                            ((x7732
                              (begin
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7732)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7731)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7730)))))
                   g7729)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7733
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7733)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7737))))
                    (g7735
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7738))))
                    (g7736
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
                       ((g7739
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7740 res))
                       g7740))))
                   g7736)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7741
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7741)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7745))))
                    (g7743
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7746))))
                    (g7744
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7747
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7747))))
                   g7744)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7749
                        (letrec*
                         ((x7750
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7750)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7749)))))
                   g7748)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7752
                        (letrec*
                         ((x7753
                           (letrec*
                            ((x7754
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7754)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7753)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7752)))))
                   g7751)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7757)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7756)))))
                   g7755)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7760)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7759)))))
                   g7758)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7764))))
                    (g7762
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7765))))
                    (g7763
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7766)))))
                   g7763)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7770)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7769)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7768)))))
                   g7767)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7773))))
                    (g7772
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7772)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7774
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7774)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7776
                        (letrec*
                         ((x7777
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7777)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7778
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7778)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7781))))
                    (g7780
                     (letrec*
                      ((x-cnd7782
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7782
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7785
                           (letrec*
                            ((x7786
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7786))))
                          (x7783
                           (letrec*
                            ((x7784
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7784)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7785 x7783)))))))
                   g7780)))
               (caaadr
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
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7790)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7789)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7788)))))
                   g7787)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7792
                        (letrec*
                         ((x7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7794)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7793)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7792)))))
                   g7791)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7797))))
                    (g7796
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7798)))))
                   g7796)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7800
                        (letrec*
                         ((x7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7802)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7801)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7800)))))
                   g7799)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7806))))
                    (g7804
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7807))))
                    (g7805
                     (letrec*
                      ((x-cnd7808
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7808
                        (letrec*
                         ((g7809
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7809)
                        (letrec*
                         ((x-cnd7810
                           (letrec*
                            ((x7811
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7811)))))
                         (if x-cnd7810
                           (letrec*
                            ((g7812
                              (letrec*
                               ((x7813
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7813)))))
                            g7812)
                           (letrec*
                            ((x-cnd7814
                              (letrec*
                               ((x7815
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7815)))))
                            (if x-cnd7814
                              (letrec*
                               ((g7816
                                 (letrec*
                                  ((x7818
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7817
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7818 x7817)))))
                               g7816)
                              (letrec*
                               ((x-cnd7819
                                 (letrec*
                                  ((x7820
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7820)))))
                               (if x-cnd7819
                                 (letrec*
                                  ((g7821
                                    (letrec*
                                     ((x7824
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7823
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7822
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7824 x7823 x7822)))))
                                  g7821)
                                 (letrec*
                                  ((x-cnd7825
                                    (letrec*
                                     ((x7826
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7826)))))
                                  (if x-cnd7825
                                    (letrec*
                                     ((g7827
                                       (letrec*
                                        ((x7831
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7830
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7829
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7828
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7831 x7830 x7829 x7828)))))
                                     g7827)
                                    (letrec*
                                     ((x-cnd7832
                                       (letrec*
                                        ((x7833
                                          (letrec*
                                           ((x7834
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7834)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7833)))))
                                     (if x-cnd7832
                                       (letrec*
                                        ((g7835
                                          (letrec*
                                           ((x7841
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7840
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7839
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7838
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7836
                                             (letrec*
                                              ((x7837
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7837)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7841
                                              x7840
                                              x7839
                                              x7838
                                              x7836)))))
                                        g7835)
                                       (letrec*
                                        ((x-cnd7842
                                          (letrec*
                                           ((x7843
                                             (letrec*
                                              ((x7844
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7844)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7843)))))
                                        (if x-cnd7842
                                          (letrec*
                                           ((g7845
                                             (letrec*
                                              ((x7853
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7852
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7851
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7850
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7848
                                                (letrec*
                                                 ((x7849
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7849))))
                                               (x7846
                                                (letrec*
                                                 ((x7847
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7847)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7853
                                                 x7852
                                                 x7851
                                                 x7850
                                                 x7848
                                                 x7846)))))
                                           g7845)
                                          (letrec*
                                           ((x-cnd7854
                                             (letrec*
                                              ((x7855
                                                (letrec*
                                                 ((x7856
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7856)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7855)))))
                                           (if x-cnd7854
                                             (letrec*
                                              ((g7857
                                                (letrec*
                                                 ((x7867
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7866
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7865
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7864
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7862
                                                   (letrec*
                                                    ((x7863
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7863))))
                                                  (x7860
                                                   (letrec*
                                                    ((x7861
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7861))))
                                                  (x7858
                                                   (letrec*
                                                    ((x7859
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7859)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7867
                                                    x7866
                                                    x7865
                                                    x7864
                                                    x7862
                                                    x7860
                                                    x7858)))))
                                              g7857)
                                             (letrec*
                                              ((g7868
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7868)))))))))))))))))))
                   g7805)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7871
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7871))))
                    (g7870
                     (letrec*
                      ((x-cnd7872
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7872
                        #f
                        (letrec*
                         ((x-cnd7873
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7874 e)))))
                         (if x-cnd7873
                           l
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7875)))))))))
                   g7870)))
               (cddddr
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
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7879)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7878)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7877)))))
                   g7876)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7881
                        (letrec*
                         ((x7882
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7883)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7882)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7881)))))
                   g7880)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7884
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7884)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7887
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7887))))
                    (g7886
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7886)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7889
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7889))))
                   g7888)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x7891
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7891)))))
                   g7890)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7893
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7893
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7894)))
                           #f))))
                      (letrec*
                       ((g7895
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7895))))
                   g7892)))
               (cddaar
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
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7899)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7898)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7897)))))
                   g7896)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x-cnd7901
                        (letrec*
                         ((x7902 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7902 c)))))
                      (if x-cnd7901
                        (letrec*
                         ((x7903 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7903)))
                        #f))))
                   g7900)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7906))))
                    (g7905
                     (letrec*
                      ((x-cnd7907
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7907
                        #f
                        (letrec*
                         ((x-cnd7908
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7909 k)))))
                         (if x-cnd7908
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7910)))))))))
                   g7905)))
               (not (lambda (x) (letrec* ((g7911 (if x #f #t))) g7911)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7912
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7912)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7915))))
                    (g7914
                     (letrec*
                      ((x-cnd7916
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7916
                        #f
                        (letrec*
                         ((x-cnd7917
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7918 e)))))
                         (if x-cnd7917
                           l
                           (letrec*
                            ((x7919
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7919)))))))))
                   g7914)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7921
                        (letrec*
                         ((x7922
                           (letrec*
                            ((x7923
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7923)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7922)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7921)))))
                   g7920)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7926
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7926))))
                    (g7925
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7927
                             (letrec*
                              ((x-cnd7928
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7928
                                0
                                (letrec*
                                 ((x7929
                                   (letrec*
                                    ((x7930
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7930)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7929)))))))
                           g7927))))
                      (letrec*
                       ((g7931
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7931))))
                   g7925)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7935))))
                    (g7933
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7936))))
                    (g7934
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7937
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7937))))
                   g7934)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7939)))))
                   g7938)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7941
                        (letrec*
                         ((x7942
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7942)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7941)))))
                   g7940)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7945))))
                    (g7944
                     (letrec*
                      ((x-cnd7946
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7946
                        #f
                        (letrec*
                         ((x-cnd7947
                           (letrec*
                            ((x7948
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7948 k)))))
                         (if x-cnd7947
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7949
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7949)))))))))
                   g7944)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7951)))))
                   g7950)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7956))))
                    (g7954
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7957)))))
                   g7954)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7959
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7959))))
                   g7958)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7963))))
                    (g7961
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7964))))
                    (g7962
                     (letrec*
                      ((x-cnd7965
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7965
                        #t
                        (letrec*
                         ((x-cnd7966
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7966
                           (letrec*
                            ((g7967
                              (letrec*
                               ((x7969
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7969))))
                             (g7968
                              (letrec*
                               ((x7970
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7970)))))
                            g7968)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7962)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7971
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7973))))
                    (g7972
                     (letrec*
                      ((x-cnd7974
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7974
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7972)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7978))))
                    (g7976
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7979))))
                    (g7977
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7980
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7980))))
                   g7977)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x7982
                        (letrec*
                         ((x7983
                           (letrec*
                            ((x7984
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7984)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7983)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7982)))))
                   g7981)))
               (newline (lambda () (letrec* ((g7985 #f)) g7985)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((x7988
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7989))))
                       (x7987
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7988 x7987)))))
                   g7986)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x7994
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7994))))
                    (g7991
                     (letrec*
                      ((x7995
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7995))))
                    (g7992
                     (letrec*
                      ((x7996
                        (letrec*
                         ((x7997
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7997)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7996))))
                    (g7993
                     (letrec*
                      ((x-cnd7998
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7998
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8000
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7999
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x8000 x7999)))))))
                   g7993)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((x-cnd8002
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8002
                        a
                        (letrec*
                         ((x8003
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x8003)))))))
                   g8001)))
               (foldr
                (lambda (f z xs)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((x-cnd8005
                        (begin
                          (write '(funapp 1665 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8005
                        z
                        (letrec*
                         ((x8008
                           (begin
                             (write '(funapp 1669 34))
                             (display "\n")
                             (car xs)))
                          (x8006
                           (letrec*
                            ((x8007
                              (begin
                                (write '(funapp 1671 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1671 56))
                              (display "\n")
                              (foldr f z x8007)))))
                         (begin
                           (write '(funapp 1672 26))
                           (display "\n")
                           (f x8008 x8006)))))))
                   g8004)))
               (map_
                (lambda (f xs)
                  (letrec*
                   ((g8009
                     (begin
                       (write '(funapp 1678 22))
                       (display "\n")
                       (foldr
                        (lambda (x ys)
                          (letrec*
                           ((g8010
                             (letrec*
                              ((x8011
                                (begin
                                  (write '(funapp 1681 51))
                                  (display "\n")
                                  (f x))))
                              (begin
                                (write '(funapp 1681 59))
                                (display "\n")
                                (cons x8011 ys)))))
                           g8010))
                        empty
                        xs))))
                   g8009))))
              (letrec*
               ((g8012
                 (begin
                   (write '(funapp 1688 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1689 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8016
                          (letrec*
                           ((xj7397
                             (begin
                               (write '(funapp 1693 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1693 37))
                                  (display "\n")
                                  'module))))
                            (xk7398
                             (begin
                               (write '(funapp 1693 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1693 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8017
                              (begin
                                (write '(funapp 1696 27))
                                (display "\n")
                                ((lambda (j7402 k7403 f7404)
                                   (letrec*
                                    ((g8018
                                      (lambda (g7399 g7400 g7401)
                                        (letrec*
                                         ((g8019
                                           (letrec*
                                            ((x8020
                                              (letrec*
                                               ((x8024
                                                 (begin
                                                   (write '(funapp 1706 44))
                                                   (display "\n")
                                                   ((lambda (j7407 k7408 f7409)
                                                      (letrec*
                                                       ((g8025
                                                         (lambda (g7405 g7406)
                                                           (letrec*
                                                            ((g8026
                                                              (letrec*
                                                               ((x8027
                                                                 (letrec*
                                                                  ((x8029
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1716
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7407
                                                                       k7408
                                                                       g7405)))
                                                                   (x8028
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1721
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7407
                                                                       k7408
                                                                       g7406))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1725
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7409
                                                                     x8029
                                                                     x8028)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1728
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7407
                                                                  k7408
                                                                  x8027)))))
                                                            g8026))))
                                                       g8025))
                                                    j7402
                                                    k7403
                                                    g7399)))
                                                (x8023
                                                 (begin
                                                   (write '(funapp 1737 50))
                                                   (display "\n")
                                                   (any/c j7402 k7403 g7400)))
                                                (x8021
                                                 (letrec*
                                                  ((x8022
                                                    (begin
                                                      (write '(funapp 1740 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1741 45))
                                                    (display "\n")
                                                    (x8022
                                                     j7402
                                                     k7403
                                                     g7401)))))
                                               (begin
                                                 (write '(funapp 1742 42))
                                                 (display "\n")
                                                 (f7404 x8024 x8023 x8021)))))
                                            (begin
                                              (write '(funapp 1743 39))
                                              (display "\n")
                                              (any/c j7402 k7403 x8020)))))
                                         g8019))))
                                    g8018))
                                 xj7397
                                 xk7398
                                 foldr))))
                            g8017)))
                         (x8015 (input))
                         (x8014 (input))
                         (x8013 (input)))
                        (begin
                          (write '(funapp 1753 21))
                          (display "\n")
                          (x8016 x8015 x8014 x8013)))
                       (letrec*
                        ((x8032
                          (letrec*
                           ((xj7410
                             (begin
                               (write '(funapp 1757 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1757 37))
                                  (display "\n")
                                  'module))))
                            (xk7411
                             (begin
                               (write '(funapp 1757 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1757 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8033
                              (begin
                                (write '(funapp 1760 27))
                                (display "\n")
                                ((lambda (j7414 k7415 f7416)
                                   (letrec*
                                    ((g8034
                                      (lambda (g7412 g7413)
                                        (letrec*
                                         ((g8035
                                           (letrec*
                                            ((x8044
                                              (begin
                                                (write '(funapp 1767 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8036
                                              (letrec*
                                               ((x8039
                                                 (begin
                                                   (write '(funapp 1771 44))
                                                   (display "\n")
                                                   ((lambda (j7418 k7419 f7420)
                                                      (letrec*
                                                       ((g8040
                                                         (lambda (g7417)
                                                           (letrec*
                                                            ((g8041
                                                              (letrec*
                                                               ((x8042
                                                                 (letrec*
                                                                  ((x8043
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1781
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7418
                                                                       k7419
                                                                       g7417))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1785
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7420
                                                                     x8043)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1786
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7418
                                                                  k7419
                                                                  x8042)))))
                                                            g8041))))
                                                       g8040))
                                                    j7414
                                                    k7415
                                                    g7412)))
                                                (x8037
                                                 (letrec*
                                                  ((x8038
                                                    (begin
                                                      (write '(funapp 1797 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1798 45))
                                                    (display "\n")
                                                    (x8038
                                                     j7414
                                                     k7415
                                                     g7413)))))
                                               (begin
                                                 (write '(funapp 1799 42))
                                                 (display "\n")
                                                 (f7416 x8039 x8037)))))
                                            (begin
                                              (write '(funapp 1800 39))
                                              (display "\n")
                                              (x8044 j7414 k7415 x8036)))))
                                         g8035))))
                                    g8034))
                                 xj7410
                                 xk7411
                                 map_))))
                            g8033)))
                         (x8031 (input))
                         (x8030 (input)))
                        (begin
                          (write '(funapp 1809 21))
                          (display "\n")
                          (x8032 x8031 x8030)))))))))
               g8012))))
           g7449))))
       g7432)))
    g7431)))
