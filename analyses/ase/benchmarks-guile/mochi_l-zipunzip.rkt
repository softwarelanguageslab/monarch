(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7419 #t)) g7419)))
    (meta (lambda (v) (letrec* ((g7420 v)) g7420)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7421
          (letrec*
           ((g7422
             (letrec*
              ((x-e7423 lst))
              (letrec*
               ((v1742 x-e7423))
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
                   ((x-cnd7424
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7424
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
           g7422)))
        g7421)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7425 (lambda (v) (letrec* ((g7426 v)) g7426)))) g7425)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7427
          (letrec*
           ((x7428 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7428)))))
        g7427))))
   (letrec*
    ((g7429
      (letrec*
       ((g7430
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7431
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7431)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7432
                 (letrec*
                  ((x7434
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7434))))
                (g7433
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7435
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7436 (if val7244 val7244 #f))) g7436)))))
                   g7435))))
               g7433)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7437
                 (letrec*
                  ((x7439
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7439))))
                (g7438
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7440
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7441 (if val7246 val7246 #f))) g7441)))))
                   g7440))))
               g7438)))
           (>
            (lambda (x y)
              (letrec*
               ((g7442
                 (letrec*
                  ((x7444
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7444))))
                (g7443
                 (letrec*
                  ((x7445
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7445)))))
               g7443)))
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
           ((g7446 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7447
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7448
                     (lambda (k j lst)
                       (letrec*
                        ((g7449
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7450
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7450))
                             lst))))
                        g7449))))
                   g7448)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7452
                        g7263
                        (begin
                          (write '(blame g7261 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7451)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7454
                        g7266
                        (begin
                          (write '(blame g7264 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7453)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7456
                        g7269
                        (begin
                          (write '(blame g7267 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7455)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7459 #t)) g7459)) g7272))))
                      (if x-cnd7458
                        g7272
                        (begin
                          (write '(blame g7270 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7457)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7462 #t)) g7462)) g7275))))
                      (if x-cnd7461
                        g7275
                        (begin
                          (write '(blame g7273 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7460)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7463
                     (letrec*
                      ((x-cnd7464
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7464
                        g7278
                        (begin
                          (write '(blame g7276 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7463)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x-cnd7466
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7466
                        g7281
                        (begin
                          (write '(blame g7279 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7465)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x-cnd7468
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7468
                        g7284
                        (begin
                          (write '(blame g7282 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7467)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x-cnd7470
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7470
                        g7287
                        (begin
                          (write '(blame g7285 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7469)))
               (string?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x-cnd7472
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7290))))
                      (if x-cnd7472
                        g7290
                        (begin
                          (write '(blame g7288 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7471)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7473
                     (lambda (k j v)
                       (letrec*
                        ((g7474
                          (letrec*
                           ((x-cnd7475
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7475
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7474))))
                   g7473)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7476
                     (lambda (k j v)
                       (letrec*
                        ((g7477
                          (letrec*
                           ((x-cnd7478
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7478
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7482
                                (letrec*
                                 ((x7483
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7483))))
                               (x7479
                                (letrec*
                                 ((x7481
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7480
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7481 k j x7480)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7482 x7479)))))))
                        g7477))))
                   g7476)))
               (any? (lambda (v) (letrec* ((g7484 #t)) g7484)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7485
                     (letrec*
                      ((x7486
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7486)))))
                   g7485)))
               (nonzero?/c
                (lambda (g7291 g7292 g7293)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x-cnd7488
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7489
                                (letrec*
                                 ((x7490
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7490)))))
                              g7489))
                           g7293))))
                      (if x-cnd7488
                        g7293
                        (begin
                          (write '(blame g7291 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7291)))))))
                   g7487)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7491
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7492
                          (letrec*
                           ((x-cnd7493
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7494
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7494))
                                g7296))))
                           (if x-cnd7493
                             g7296
                             (begin
                               (write '(blame g7294 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7492))))
                   g7491)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7495
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7496
                          (letrec*
                           ((x-cnd7497
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7498
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7498))
                                g7299))))
                           (if x-cnd7497
                             g7299
                             (begin
                               (write '(blame g7297 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7496))))
                   g7495)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7499
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7500
                          (letrec*
                           ((x-cnd7501
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7502
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7502))
                                g7302))))
                           (if x-cnd7501
                             g7302
                             (begin
                               (write '(blame g7300 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7500))))
                   g7499)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7503
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7504
                          (letrec*
                           ((x-cnd7505
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7506
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7506))
                                g7305))))
                           (if x-cnd7505
                             g7305
                             (begin
                               (write '(blame g7303 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7504))))
                   g7503)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7507
                     (lambda (g7306 g7307 g7308)
                       (letrec*
                        ((g7508
                          (letrec*
                           ((x-cnd7509
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7510
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7510))
                                g7308))))
                           (if x-cnd7509
                             g7308
                             (begin
                               (write '(blame g7306 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7306)))))))
                        g7508))))
                   g7507)))
               (meta (lambda (v) (letrec* ((g7511 v)) g7511)))
               (+
                (letrec*
                 ((xj7309
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7310
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7512
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7313 k7314 f7315)
                         (letrec*
                          ((g7514
                            (lambda (g7311 g7312)
                              (letrec*
                               ((g7515
                                 (letrec*
                                  ((x7516
                                    (letrec*
                                     ((x7518
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7313 k7314 g7311)))
                                      (x7517
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7313 k7314 g7312))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7315 x7518 x7517)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7313 k7314 x7516)))))
                               g7515))))
                          g7514))
                       xj7309
                       xk7310
                       (lambda (a b)
                         (letrec*
                          ((g7513
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7513))))))
                  g7512)))
               (-
                (letrec*
                 ((xj7316
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7317
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7519
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7521
                            (lambda (g7318 g7319)
                              (letrec*
                               ((g7522
                                 (letrec*
                                  ((x7523
                                    (letrec*
                                     ((x7525
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7318)))
                                      (x7524
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7322 x7525 x7524)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7320 k7321 x7523)))))
                               g7522))))
                          g7521))
                       xj7316
                       xk7317
                       (lambda (a b)
                         (letrec*
                          ((g7520
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7520))))))
                  g7519)))
               (*
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7526
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7327 k7328 f7329)
                         (letrec*
                          ((g7528
                            (lambda (g7325 g7326)
                              (letrec*
                               ((g7529
                                 (letrec*
                                  ((x7530
                                    (letrec*
                                     ((x7532
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7325)))
                                      (x7531
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7326))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7329 x7532 x7531)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7327 k7328 x7530)))))
                               g7529))))
                          g7528))
                       xj7323
                       xk7324
                       (lambda (a b)
                         (letrec*
                          ((g7527
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7527))))))
                  g7526)))
               (<
                (letrec*
                 ((xj7330
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7331
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7533
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7334 k7335 f7336)
                         (letrec*
                          ((g7535
                            (lambda (g7332 g7333)
                              (letrec*
                               ((g7536
                                 (letrec*
                                  ((x7537
                                    (letrec*
                                     ((x7539
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7332)))
                                      (x7538
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7333))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7336 x7539 x7538)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7334 k7335 x7537)))))
                               g7536))))
                          g7535))
                       xj7330
                       xk7331
                       (lambda (a b)
                         (letrec*
                          ((g7534
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7534))))))
                  g7533)))
               (>
                (letrec*
                 ((xj7337
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7338
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7540
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7341 k7342 f7343)
                         (letrec*
                          ((g7542
                            (lambda (g7339 g7340)
                              (letrec*
                               ((g7543
                                 (letrec*
                                  ((x7544
                                    (letrec*
                                     ((x7546
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7339)))
                                      (x7545
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7340))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7343 x7546 x7545)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7341 k7342 x7544)))))
                               g7543))))
                          g7542))
                       xj7337
                       xk7338
                       (lambda (a b)
                         (letrec*
                          ((g7541
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7541))))))
                  g7540)))
               (<=
                (letrec*
                 ((xj7344
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7345
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7547
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7348 k7349 f7350)
                         (letrec*
                          ((g7549
                            (lambda (g7346 g7347)
                              (letrec*
                               ((g7550
                                 (letrec*
                                  ((x7551
                                    (letrec*
                                     ((x7553
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7346)))
                                      (x7552
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7347))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7350 x7553 x7552)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7348 k7349 x7551)))))
                               g7550))))
                          g7549))
                       xj7344
                       xk7345
                       (lambda (a b)
                         (letrec*
                          ((g7548
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7548))))))
                  g7547)))
               (>=
                (letrec*
                 ((xj7351
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7352
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7554
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7355 k7356 f7357)
                         (letrec*
                          ((g7556
                            (lambda (g7353 g7354)
                              (letrec*
                               ((g7557
                                 (letrec*
                                  ((x7558
                                    (letrec*
                                     ((x7560
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7353)))
                                      (x7559
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7354))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7357 x7560 x7559)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7355 k7356 x7558)))))
                               g7557))))
                          g7556))
                       xj7351
                       xk7352
                       (lambda (a b)
                         (letrec*
                          ((g7555
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7555))))))
                  g7554)))
               (/
                (letrec*
                 ((xj7358
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7359
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7561
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7362 k7363 f7364)
                         (letrec*
                          ((g7563
                            (lambda (g7360 g7361)
                              (letrec*
                               ((g7564
                                 (letrec*
                                  ((x7565
                                    (letrec*
                                     ((x7567
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7360)))
                                      (x7566
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7361))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7364 x7567 x7566)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7362 k7363 x7565)))))
                               g7564))))
                          g7563))
                       xj7358
                       xk7359
                       (lambda (a b)
                         (letrec*
                          ((g7562
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7562))))))
                  g7561)))
               (car
                (letrec*
                 ((xj7365
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7366
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7568
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7368 k7369 f7370)
                         (letrec*
                          ((g7570
                            (lambda (g7367)
                              (letrec*
                               ((g7571
                                 (letrec*
                                  ((x7572
                                    (letrec*
                                     ((x7573
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7368 k7369 g7367))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7370 x7573)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7368 k7369 x7572)))))
                               g7571))))
                          g7570))
                       xj7365
                       xk7366
                       (lambda (p)
                         (letrec*
                          ((g7569
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7569))))))
                  g7568)))
               (cdr
                (letrec*
                 ((xj7371
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7372
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7574
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7374 k7375 f7376)
                         (letrec*
                          ((g7576
                            (lambda (g7373)
                              (letrec*
                               ((g7577
                                 (letrec*
                                  ((x7578
                                    (letrec*
                                     ((x7579
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7374 k7375 g7373))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7376 x7579)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7374 k7375 x7578)))))
                               g7577))))
                          g7576))
                       xj7371
                       xk7372
                       (lambda (p)
                         (letrec*
                          ((g7575
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7575))))))
                  g7574)))
               (cons
                (letrec*
                 ((xj7377
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7378
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7580
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7381 k7382 f7383)
                         (letrec*
                          ((g7582
                            (lambda (g7379 g7380)
                              (letrec*
                               ((g7583
                                 (letrec*
                                  ((x7584
                                    (letrec*
                                     ((x7586
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7381 k7382 g7379)))
                                      (x7585
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7381 k7382 g7380))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7383 x7586 x7585)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7381 k7382 x7584)))))
                               g7583))))
                          g7582))
                       xj7377
                       xk7378
                       (lambda (a b)
                         (letrec*
                          ((g7581
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7581))))))
                  g7580)))
               (vector-ref
                (letrec*
                 ((xj7384
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7385
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7587
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7387 k7388 f7389)
                         (letrec*
                          ((g7589
                            (lambda (g7386)
                              (letrec*
                               ((g7590
                                 (letrec*
                                  ((x7591
                                    (letrec*
                                     ((x7592
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7387 k7388 g7386))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7389 x7592)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7387 k7388 x7591)))))
                               g7590))))
                          g7589))
                       xj7384
                       xk7385
                       (lambda (v i)
                         (letrec*
                          ((g7588
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7588))))))
                  g7587)))
               (vector-set!
                (letrec*
                 ((xj7390
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7391
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7593
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7394 k7395 f7396)
                         (letrec*
                          ((g7595
                            (lambda (g7392 g7393)
                              (letrec*
                               ((g7596
                                 (letrec*
                                  ((x7597
                                    (letrec*
                                     ((x7599
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7394 k7395 g7392)))
                                      (x7598
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7394 k7395 g7393))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7396 x7599 x7598)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7394 k7395 x7597)))))
                               g7596))))
                          g7595))
                       xj7390
                       xk7391
                       (lambda (vec i v)
                         (letrec*
                          ((g7594
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7594))))))
                  g7593)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7601
                        (letrec*
                         ((x7602
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7602)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7601)))))
                   g7600)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7606
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7606))))
                    (g7604
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7607))))
                    (g7605
                     (letrec*
                      ((x-cnd7608
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7608
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7611
                           (letrec*
                            ((x7612
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7612))))
                          (x7609
                           (letrec*
                            ((x7610
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7610)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7611 x7609)))))))
                   g7605)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7614)))))
                   g7613)))
               (cadadr
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
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7618)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7617)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7616)))))
                   g7615)))
               (cdadar
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
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7622)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7621)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7620)))))
                   g7619)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7627))))
                    (g7625
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
                       ((g7628
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7629 res))
                       g7629))))
                   g7625)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7631
                        (letrec*
                         ((x7632
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7632)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7631)))))
                   g7630)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (letrec*
                         ((x7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7636)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7635)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7634)))))
                   g7633)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7639))))
                    (g7638
                     (letrec*
                      ((x-cnd7640
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7640
                        #f
                        (letrec*
                         ((x-cnd7641
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7642 k)))))
                         (if x-cnd7641
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7643)))))))))
                   g7638)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7645)))))
                   g7644)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7648))))
                    (g7647
                     (letrec*
                      ((x-cnd7649
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7649
                        ""
                        (letrec*
                         ((x7652
                           (letrec*
                            ((x7653
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7653))))
                          (x7650
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7651)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7652 x7650)))))))
                   g7647)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7657))))
                    (g7655
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7658))))
                    (g7656
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7659
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7659))))
                   g7656)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7661
                        (letrec*
                         ((x7662
                           (letrec*
                            ((x7663
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7663)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7662)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7661)))))
                   g7660)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7667))))
                    (g7665
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7668))))
                    (g7666
                     (letrec*
                      ((x-cnd7669
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7669
                        x
                        (letrec*
                         ((x7671
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7670
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7671 x7670)))))))
                   g7666)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7672
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7672)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x-cnd7674
                        (letrec*
                         ((x7675 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7675)))))
                      (if x-cnd7674
                        (letrec*
                         ((x7676 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7676)))
                        #f))))
                   g7673)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7678
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7678 9)))))
                      (letrec*
                       ((g7679
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7680
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7680 10)))))
                            (letrec*
                             ((g7681
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7682
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7682 32))))))
                             g7681)))))
                       g7679))))
                   g7677)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x7684
                        (letrec*
                         ((x7685
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7685)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7684)))))
                   g7683)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((x7688
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7688))))
                    (g7687
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7687)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7689 #f)) g7689)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((x7691
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7691)))))
                   g7690)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7692
                     (letrec*
                      ((x7694
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7694))))
                    (g7693
                     (letrec*
                      ((x-cnd7695
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7695
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7693)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7696
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7697
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7698
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7698
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7699
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7700
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7700
                                       (letrec*
                                        ((x-cnd7701
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7701
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7702
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7703
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7703
                                             (letrec*
                                              ((x-cnd7704
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7704
                                                (letrec*
                                                 ((x-cnd7705
                                                   (letrec*
                                                    ((x7707
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7706
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7707 x7706)))))
                                                 (if x-cnd7705
                                                   (letrec*
                                                    ((x7709
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7708
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7709 x7708)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7710
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7711
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7711
                                                (letrec*
                                                 ((x-cnd7712
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7712
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7713
                                                       (letrec*
                                                        ((x-cnd7714
                                                          (letrec*
                                                           ((x7715
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
                                                             (= x7715 n)))))
                                                        (if x-cnd7714
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7716
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
                                                                    ((g7717
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7718
                                                                           (letrec*
                                                                            ((x7720
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
                                                                             (x7719
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
                                                                               x7720
                                                                               x7719)))))
                                                                         (if x-cnd7718
                                                                           (letrec*
                                                                            ((x7721
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
                                                                               x7721)))
                                                                           #f)))))
                                                                    g7717))))
                                                                g7716))))
                                                           (letrec*
                                                            ((g7722
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7722))
                                                          #f))))
                                                     g7713))
                                                   #f))
                                                #f)))))
                                         g7710)))))
                                   g7702)))))
                             g7699)))))
                       g7697))))
                   g7696)))
               (cdaaar
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
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7726)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7725)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7724)))))
                   g7723)))
               (caaddr
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
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7730)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7729)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7728)))))
                   g7727)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7731
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7731)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7732
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7735))))
                    (g7733
                     (letrec*
                      ((x7736
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7736))))
                    (g7734
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
                       ((g7737
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7738 res))
                       g7738))))
                   g7734)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7739
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7739)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7743))))
                    (g7741
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7744))))
                    (g7742
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7745
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7745))))
                   g7742)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (letrec*
                         ((x7748
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7748)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7747)))))
                   g7746)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (letrec*
                         ((x7751
                           (letrec*
                            ((x7752
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7752)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7751)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7750)))))
                   g7749)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7754
                        (letrec*
                         ((x7755
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7755)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7754)))))
                   g7753)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (letrec*
                         ((x7758
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7758)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7757)))))
                   g7756)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7762))))
                    (g7760
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7763))))
                    (g7761
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7764)))))
                   g7761)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7768)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7767)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7766)))))
                   g7765)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7771))))
                    (g7770
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7770)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7772
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7772)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7774
                        (letrec*
                         ((x7775
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7775)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7774)))))
                   g7773)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7776
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7776)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7779))))
                    (g7778
                     (letrec*
                      ((x-cnd7780
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7780
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7783
                           (letrec*
                            ((x7784
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7784))))
                          (x7781
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7782)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7783 x7781)))))))
                   g7778)))
               (caaadr
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
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7788)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7787)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7786)))))
                   g7785)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7790
                        (letrec*
                         ((x7791
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7792)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7791)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7790)))))
                   g7789)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7795))))
                    (g7794
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7796)))))
                   g7794)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7798
                        (letrec*
                         ((x7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7800)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7799)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7798)))))
                   g7797)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7804))))
                    (g7802
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7805))))
                    (g7803
                     (letrec*
                      ((x-cnd7806
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7806
                        (letrec*
                         ((g7807
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7807)
                        (letrec*
                         ((x-cnd7808
                           (letrec*
                            ((x7809
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7809)))))
                         (if x-cnd7808
                           (letrec*
                            ((g7810
                              (letrec*
                               ((x7811
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7811)))))
                            g7810)
                           (letrec*
                            ((x-cnd7812
                              (letrec*
                               ((x7813
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7813)))))
                            (if x-cnd7812
                              (letrec*
                               ((g7814
                                 (letrec*
                                  ((x7816
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7815
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7816 x7815)))))
                               g7814)
                              (letrec*
                               ((x-cnd7817
                                 (letrec*
                                  ((x7818
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7818)))))
                               (if x-cnd7817
                                 (letrec*
                                  ((g7819
                                    (letrec*
                                     ((x7822
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7821
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7820
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7822 x7821 x7820)))))
                                  g7819)
                                 (letrec*
                                  ((x-cnd7823
                                    (letrec*
                                     ((x7824
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7824)))))
                                  (if x-cnd7823
                                    (letrec*
                                     ((g7825
                                       (letrec*
                                        ((x7829
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7828
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7827
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7826
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7829 x7828 x7827 x7826)))))
                                     g7825)
                                    (letrec*
                                     ((x-cnd7830
                                       (letrec*
                                        ((x7831
                                          (letrec*
                                           ((x7832
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7832)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7831)))))
                                     (if x-cnd7830
                                       (letrec*
                                        ((g7833
                                          (letrec*
                                           ((x7839
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7838
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7837
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7836
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7834
                                             (letrec*
                                              ((x7835
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7835)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7839
                                              x7838
                                              x7837
                                              x7836
                                              x7834)))))
                                        g7833)
                                       (letrec*
                                        ((x-cnd7840
                                          (letrec*
                                           ((x7841
                                             (letrec*
                                              ((x7842
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7842)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7841)))))
                                        (if x-cnd7840
                                          (letrec*
                                           ((g7843
                                             (letrec*
                                              ((x7851
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7850
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7849
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7848
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7846
                                                (letrec*
                                                 ((x7847
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7847))))
                                               (x7844
                                                (letrec*
                                                 ((x7845
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7845)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7851
                                                 x7850
                                                 x7849
                                                 x7848
                                                 x7846
                                                 x7844)))))
                                           g7843)
                                          (letrec*
                                           ((x-cnd7852
                                             (letrec*
                                              ((x7853
                                                (letrec*
                                                 ((x7854
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7854)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7853)))))
                                           (if x-cnd7852
                                             (letrec*
                                              ((g7855
                                                (letrec*
                                                 ((x7865
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7864
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7863
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7862
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7860
                                                   (letrec*
                                                    ((x7861
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7861))))
                                                  (x7858
                                                   (letrec*
                                                    ((x7859
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7859))))
                                                  (x7856
                                                   (letrec*
                                                    ((x7857
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7857)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7865
                                                    x7864
                                                    x7863
                                                    x7862
                                                    x7860
                                                    x7858
                                                    x7856)))))
                                              g7855)
                                             (letrec*
                                              ((g7866
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7866)))))))))))))))))))
                   g7803)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x7869
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7869))))
                    (g7868
                     (letrec*
                      ((x-cnd7870
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7870
                        #f
                        (letrec*
                         ((x-cnd7871
                           (letrec*
                            ((x7872
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7872 e)))))
                         (if x-cnd7871
                           l
                           (letrec*
                            ((x7873
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7873)))))))))
                   g7868)))
               (cddddr
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
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7877)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7876)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7875)))))
                   g7874)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x7879
                        (letrec*
                         ((x7880
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7881)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7880)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7879)))))
                   g7878)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7882
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7882)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((x7885
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7885))))
                    (g7884
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7884)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7887
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7887))))
                   g7886)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7889
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7889)))))
                   g7888)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7891
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7892)))
                           #f))))
                      (letrec*
                       ((g7893
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7893))))
                   g7890)))
               (cddaar
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
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7897)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7896)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7895)))))
                   g7894)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x-cnd7899
                        (letrec*
                         ((x7900 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7900 c)))))
                      (if x-cnd7899
                        (letrec*
                         ((x7901 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7901)))
                        #f))))
                   g7898)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7904
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7904))))
                    (g7903
                     (letrec*
                      ((x-cnd7905
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7905
                        #f
                        (letrec*
                         ((x-cnd7906
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7907 k)))))
                         (if x-cnd7906
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7908
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7908)))))))))
                   g7903)))
               (not (lambda (x) (letrec* ((g7909 (if x #f #t))) g7909)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7910
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7910)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7913
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7913))))
                    (g7912
                     (letrec*
                      ((x-cnd7914
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7914
                        #f
                        (letrec*
                         ((x-cnd7915
                           (letrec*
                            ((x7916
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7916 e)))))
                         (if x-cnd7915
                           l
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7917)))))))))
                   g7912)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7919
                        (letrec*
                         ((x7920
                           (letrec*
                            ((x7921
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7921)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7920)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7919)))))
                   g7918)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7924))))
                    (g7923
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7925
                             (letrec*
                              ((x-cnd7926
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7926
                                0
                                (letrec*
                                 ((x7927
                                   (letrec*
                                    ((x7928
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7928)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7927)))))))
                           g7925))))
                      (letrec*
                       ((g7929
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7929))))
                   g7923)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7933))))
                    (g7931
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7934))))
                    (g7932
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7935
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7935))))
                   g7932)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7937)))))
                   g7936)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7939
                        (letrec*
                         ((x7940
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7940)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7939)))))
                   g7938)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7943))))
                    (g7942
                     (letrec*
                      ((x-cnd7944
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7944
                        #f
                        (letrec*
                         ((x-cnd7945
                           (letrec*
                            ((x7946
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7946 k)))))
                         (if x-cnd7945
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7947
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7947)))))))))
                   g7942)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7949)))))
                   g7948)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7953))))
                    (g7951
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7954))))
                    (g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7955)))))
                   g7952)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7957
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7957))))
                   g7956)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7962))))
                    (g7960
                     (letrec*
                      ((x-cnd7963
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7963
                        #t
                        (letrec*
                         ((x-cnd7964
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7964
                           (letrec*
                            ((g7965
                              (letrec*
                               ((x7967
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7967))))
                             (g7966
                              (letrec*
                               ((x7968
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7968)))))
                            g7966)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7960)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7971))))
                    (g7970
                     (letrec*
                      ((x-cnd7972
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7972
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7970)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7976
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7976))))
                    (g7974
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7977))))
                    (g7975
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7978
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7978))))
                   g7975)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x7980
                        (letrec*
                         ((x7981
                           (letrec*
                            ((x7982
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7982)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7981)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7980)))))
                   g7979)))
               (newline (lambda () (letrec* ((g7983 #f)) g7983)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x7986
                        (letrec*
                         ((x7987
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7987))))
                       (x7985
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7986 x7985)))))
                   g7984)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7988
                     (letrec*
                      ((x7992
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7992))))
                    (g7989
                     (letrec*
                      ((x7993
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7993))))
                    (g7990
                     (letrec*
                      ((x7994
                        (letrec*
                         ((x7995
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7995)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7994))))
                    (g7991
                     (letrec*
                      ((x-cnd7996
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7996
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7998
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7997
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7998 x7997)))))))
                   g7991)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x-cnd8000
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8000
                        a
                        (letrec*
                         ((x8001
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x8001)))))))
                   g7999)))
               (f
                (lambda (g)
                  (letrec*
                   ((g8002
                     (lambda (x y)
                       (letrec*
                        ((g8003
                          (letrec*
                           ((x8005
                             (begin
                               (write '(funapp 1668 36))
                               (display "\n")
                               (+ x 1)))
                            (x8004
                             (begin
                               (write '(funapp 1668 52))
                               (display "\n")
                               (+ y 1))))
                           (begin
                             (write '(funapp 1669 28))
                             (display "\n")
                             (g x8005 x8004)))))
                        g8003))))
                   g8002)))
               (unzip
                (lambda (x k)
                  (letrec*
                   ((g8006
                     (letrec*
                      ((x-cnd8007
                        (begin
                          (write '(funapp 1677 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd8007
                        (begin
                          (write '(funapp 1679 25))
                          (display "\n")
                          (k 0 0))
                        (letrec*
                         ((x8009
                           (begin
                             (write '(funapp 1681 34))
                             (display "\n")
                             (- x 1)))
                          (x8008
                           (begin
                             (write '(funapp 1681 50))
                             (display "\n")
                             (f k))))
                         (begin
                           (write '(funapp 1682 26))
                           (display "\n")
                           (unzip x8009 x8008)))))))
                   g8006)))
               (zip
                (lambda (x y)
                  (letrec*
                   ((g8010
                     (letrec*
                      ((x-cnd8011
                        (begin
                          (write '(funapp 1689 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd8011
                        (letrec*
                         ((x-cnd8012
                           (begin
                             (write '(funapp 1691 46))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd8012
                           0
                           (begin
                             (write '(funapp 1691 71))
                             (display "\n")
                             'fail)))
                        (letrec*
                         ((x-cnd8013
                           (begin
                             (write '(funapp 1693 38))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd8013
                           (begin
                             (write '(funapp 1695 27))
                             (display "\n")
                             'fail)
                           (letrec*
                            ((x8014
                              (letrec*
                               ((x8016
                                 (begin
                                   (write '(funapp 1699 40))
                                   (display "\n")
                                   (- x 1)))
                                (x8015
                                 (begin
                                   (write '(funapp 1699 56))
                                   (display "\n")
                                   (- y 1))))
                               (begin
                                 (write '(funapp 1700 32))
                                 (display "\n")
                                 (zip x8016 x8015)))))
                            (begin
                              (write '(funapp 1701 29))
                              (display "\n")
                              (+ 1 x8014)))))))))
                   g8010)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8017
                     (begin
                       (write '(funapp 1703 51))
                       (display "\n")
                       (unzip n zip))))
                   g8017))))
              (letrec*
               ((g8018
                 (begin
                   (write '(funapp 1706 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1707 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8020
                          (letrec*
                           ((xj7397
                             (begin
                               (write '(funapp 1711 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1711 37))
                                  (display "\n")
                                  'module))))
                            (xk7398
                             (begin
                               (write '(funapp 1711 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1711 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8021
                              (begin
                                (write '(funapp 1714 27))
                                (display "\n")
                                ((lambda (j7400 k7401 f7402)
                                   (letrec*
                                    ((g8022
                                      (lambda (g7399)
                                        (letrec*
                                         ((g8023
                                           (letrec*
                                            ((x8024
                                              (letrec*
                                               ((x8025
                                                 (begin
                                                   (write '(funapp 1724 44))
                                                   (display "\n")
                                                   ((lambda (j7410 k7411 f7412)
                                                      (letrec*
                                                       ((g8026
                                                         (lambda (g7408 g7409)
                                                           (letrec*
                                                            ((g8027
                                                              (letrec*
                                                               ((x8028
                                                                 (letrec*
                                                                  ((x8030
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1734
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (integer?/c
                                                                       j7410
                                                                       k7411
                                                                       g7408)))
                                                                   (x8029
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1739
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (integer?/c
                                                                       j7410
                                                                       k7411
                                                                       g7409))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1743
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7412
                                                                     x8030
                                                                     x8029)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1746
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7410
                                                                  k7411
                                                                  x8028)))))
                                                            g8027))))
                                                       g8026))
                                                    j7400
                                                    k7401
                                                    g7399))))
                                               (begin
                                                 (write '(funapp 1755 42))
                                                 (display "\n")
                                                 (f7402 x8025)))))
                                            (begin
                                              (write '(funapp 1756 39))
                                              (display "\n")
                                              ((lambda (j7405 k7406 f7407)
                                                 (letrec*
                                                  ((g8031
                                                    (lambda (g7403 g7404)
                                                      (letrec*
                                                       ((g8032
                                                         (letrec*
                                                          ((x8033
                                                            (letrec*
                                                             ((x8035
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1766
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7405
                                                                  k7406
                                                                  g7403)))
                                                              (x8034
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1771
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7405
                                                                  k7406
                                                                  g7404))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1775
                                                                  54))
                                                               (display "\n")
                                                               (f7407
                                                                x8035
                                                                x8034)))))
                                                          (begin
                                                            (write
                                                             '(funapp 1776 51))
                                                            (display "\n")
                                                            (integer?/c
                                                             j7405
                                                             k7406
                                                             x8033)))))
                                                       g8032))))
                                                  g8031))
                                               j7400
                                               k7401
                                               x8024)))))
                                         g8023))))
                                    g8022))
                                 xj7397
                                 xk7398
                                 f))))
                            g8021)))
                         (x8019 (input)))
                        (begin
                          (write '(funapp 1792 21))
                          (display "\n")
                          (x8020 x8019)))
                       (letrec*
                        ((x8037
                          (letrec*
                           ((xj7413
                             (begin
                               (write '(funapp 1796 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1796 37))
                                  (display "\n")
                                  'module))))
                            (xk7414
                             (begin
                               (write '(funapp 1796 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1796 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8038
                              (begin
                                (write '(funapp 1799 27))
                                (display "\n")
                                ((lambda (j7416 k7417 f7418)
                                   (letrec*
                                    ((g8039
                                      (lambda (g7415)
                                        (letrec*
                                         ((g8040
                                           (letrec*
                                            ((x8041
                                              (letrec*
                                               ((x8042
                                                 (begin
                                                   (write '(funapp 1809 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7416
                                                    k7417
                                                    g7415))))
                                               (begin
                                                 (write '(funapp 1810 42))
                                                 (display "\n")
                                                 (f7418 x8042)))))
                                            (begin
                                              (write '(funapp 1811 39))
                                              (display "\n")
                                              (integer?/c
                                               j7416
                                               k7417
                                               x8041)))))
                                         g8040))))
                                    g8039))
                                 xj7413
                                 xk7414
                                 main))))
                            g8038)))
                         (x8036 (input)))
                        (begin
                          (write '(funapp 1819 21))
                          (display "\n")
                          (x8037 x8036)))))))))
               g8018))))
           g7447))))
       g7430)))
    g7429)))
