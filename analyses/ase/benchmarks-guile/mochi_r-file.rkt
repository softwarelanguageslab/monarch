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
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7431
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7432 (if val7245 val7245 #f))) g7432)))))
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
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7436
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7437 (if val7247 val7247 #f))) g7437)))))
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
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7448
                        g7265
                        (begin
                          (write '(blame g7263 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7447)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7450
                        g7268
                        (begin
                          (write '(blame g7266 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7449)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7452
                        g7271
                        (begin
                          (write '(blame g7269 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7451)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7455 #t)) g7455)) g7274))))
                      (if x-cnd7454
                        g7274
                        (begin
                          (write '(blame g7272 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7453)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7458 #t)) g7458)) g7277))))
                      (if x-cnd7457
                        g7277
                        (begin
                          (write '(blame g7275 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7456)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x-cnd7460
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7460
                        g7280
                        (begin
                          (write '(blame g7278 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7459)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7461
                     (lambda (k j v)
                       (letrec*
                        ((g7462
                          (letrec*
                           ((x7465
                             (letrec*
                              ((x7466
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7466))))
                            (x7463
                             (letrec*
                              ((x7464
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7464)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7465 x7463)))))
                        g7462))))
                   g7461)))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x-cnd7468
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7468
                        g7283
                        (begin
                          (write '(blame g7281 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7467)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x-cnd7470
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7470
                        g7286
                        (begin
                          (write '(blame g7284 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7469)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x-cnd7472
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7472
                        g7289
                        (begin
                          (write '(blame g7287 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7471)))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x-cnd7474
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7292))))
                      (if x-cnd7474
                        g7292
                        (begin
                          (write '(blame g7290 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
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
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7477
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7476))))
                   g7475)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7478
                     (lambda (k j v)
                       (letrec*
                        ((g7479
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7480
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7480))))
                        g7479))))
                   g7478)))
               (null?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x-cnd7482
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7295))))
                      (if x-cnd7482
                        g7295
                        (begin
                          (write '(blame g7293 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7481)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7483
                     (lambda (k j v)
                       (letrec*
                        ((g7484
                          (letrec*
                           ((x-cnd7485
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7485
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7489
                                (letrec*
                                 ((x7490
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7490))))
                               (x7486
                                (letrec*
                                 ((x7488
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7487
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7488 k j x7487)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7489 x7486)))))))
                        g7484))))
                   g7483)))
               (any? (lambda (v) (letrec* ((g7491 #t)) g7491)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7492
                     (letrec*
                      ((x7493
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7493)))))
                   g7492)))
               (nonzero?/c
                (lambda (g7296 g7297 g7298)
                  (letrec*
                   ((g7494
                     (letrec*
                      ((x-cnd7495
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7496
                                (letrec*
                                 ((x7497
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7497)))))
                              g7496))
                           g7298))))
                      (if x-cnd7495
                        g7298
                        (begin
                          (write '(blame g7296 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7296)))))))
                   g7494)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7498
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7499
                          (letrec*
                           ((x-cnd7500
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7501
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7501))
                                g7301))))
                           (if x-cnd7500
                             g7301
                             (begin
                               (write '(blame g7299 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7499))))
                   g7498)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7502
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7503
                          (letrec*
                           ((x-cnd7504
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7505
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7505))
                                g7304))))
                           (if x-cnd7504
                             g7304
                             (begin
                               (write '(blame g7302 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7503))))
                   g7502)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7506
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7507
                          (letrec*
                           ((x-cnd7508
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7509
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7509))
                                g7307))))
                           (if x-cnd7508
                             g7307
                             (begin
                               (write '(blame g7305 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7507))))
                   g7506)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7510
                     (lambda (g7308 g7309 g7310)
                       (letrec*
                        ((g7511
                          (letrec*
                           ((x-cnd7512
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7513
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7513))
                                g7310))))
                           (if x-cnd7512
                             g7310
                             (begin
                               (write '(blame g7308 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7511))))
                   g7510)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7514
                     (lambda (g7311 g7312 g7313)
                       (letrec*
                        ((g7515
                          (letrec*
                           ((x-cnd7516
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7517
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7517))
                                g7313))))
                           (if x-cnd7516
                             g7313
                             (begin
                               (write '(blame g7311 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7311)))))))
                        g7515))))
                   g7514)))
               (meta (lambda (v) (letrec* ((g7518 v)) g7518)))
               (+
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7519
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7521
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7522
                                 (letrec*
                                  ((x7523
                                    (letrec*
                                     ((x7525
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7524
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7320 x7525 x7524)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7523)))))
                               g7522))))
                          g7521))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7520
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7520))))))
                  g7519)))
               (-
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7526
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7528
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7529
                                 (letrec*
                                  ((x7530
                                    (letrec*
                                     ((x7532
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7531
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7327 x7532 x7531)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7530)))))
                               g7529))))
                          g7528))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7527
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7527))))))
                  g7526)))
               (*
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7533
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7535
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7536
                                 (letrec*
                                  ((x7537
                                    (letrec*
                                     ((x7539
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7538
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7334 x7539 x7538)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7332 k7333 x7537)))))
                               g7536))))
                          g7535))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7534
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7534))))))
                  g7533)))
               (<
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7540
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7542
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7543
                                 (letrec*
                                  ((x7544
                                    (letrec*
                                     ((x7546
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7545
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7341 x7546 x7545)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7544)))))
                               g7543))))
                          g7542))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7541
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7541))))))
                  g7540)))
               (>
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7547
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7549
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7550
                                 (letrec*
                                  ((x7551
                                    (letrec*
                                     ((x7553
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7552
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7348 x7553 x7552)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7551)))))
                               g7550))))
                          g7549))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7548
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7548))))))
                  g7547)))
               (<=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7554
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7556
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7557
                                 (letrec*
                                  ((x7558
                                    (letrec*
                                     ((x7560
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7559
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7355 x7560 x7559)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7558)))))
                               g7557))))
                          g7556))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7555
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7555))))))
                  g7554)))
               (>=
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7561
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7563
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7564
                                 (letrec*
                                  ((x7565
                                    (letrec*
                                     ((x7567
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7566
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7362 x7567 x7566)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7360 k7361 x7565)))))
                               g7564))))
                          g7563))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7562
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7562))))))
                  g7561)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7568
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7570
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7571
                                 (letrec*
                                  ((x7572
                                    (letrec*
                                     ((x7574
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7573
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 561 36))
                                       (display "\n")
                                       (f7369 x7574 x7573)))))
                                  (begin
                                    (write '(funapp 562 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7572)))))
                               g7571))))
                          g7570))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7569
                            (begin
                              (write '(funapp 567 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7569))))))
                  g7568)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 571 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 571 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7575
                    (begin
                      (write '(funapp 574 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7577
                            (lambda (g7372)
                              (letrec*
                               ((g7578
                                 (letrec*
                                  ((x7579
                                    (letrec*
                                     ((x7580
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7375 x7580)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7579)))))
                               g7578))))
                          g7577))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7576
                            (begin
                              (write '(funapp 590 51))
                              (display "\n")
                              (orig-car p))))
                          g7576))))))
                  g7575)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 594 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 594 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7581
                    (begin
                      (write '(funapp 597 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7583
                            (lambda (g7378)
                              (letrec*
                               ((g7584
                                 (letrec*
                                  ((x7585
                                    (letrec*
                                     ((x7586
                                       (begin
                                         (write '(funapp 606 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 607 36))
                                       (display "\n")
                                       (f7381 x7586)))))
                                  (begin
                                    (write '(funapp 608 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7585)))))
                               g7584))))
                          g7583))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7582
                            (begin
                              (write '(funapp 613 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7582))))))
                  g7581)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 617 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 617 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7587
                    (begin
                      (write '(funapp 620 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7589
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7590
                                 (letrec*
                                  ((x7591
                                    (letrec*
                                     ((x7593
                                       (begin
                                         (write '(funapp 629 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7592
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 631 36))
                                       (display "\n")
                                       (f7388 x7593 x7592)))))
                                  (begin
                                    (write '(funapp 632 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7591)))))
                               g7590))))
                          g7589))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7588
                            (begin
                              (write '(funapp 638 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7588))))))
                  g7587)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 642 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 642 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7594
                    (begin
                      (write '(funapp 645 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7596
                            (lambda (g7391)
                              (letrec*
                               ((g7597
                                 (letrec*
                                  ((x7598
                                    (letrec*
                                     ((x7599
                                       (begin
                                         (write '(funapp 654 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 655 36))
                                       (display "\n")
                                       (f7394 x7599)))))
                                  (begin
                                    (write '(funapp 656 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7598)))))
                               g7597))))
                          g7596))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7595
                            (begin
                              (write '(funapp 662 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7595))))))
                  g7594)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 666 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 666 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7600
                    (begin
                      (write '(funapp 669 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7602
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7603
                                 (letrec*
                                  ((x7604
                                    (letrec*
                                     ((x7606
                                       (begin
                                         (write '(funapp 678 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7605
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 680 36))
                                       (display "\n")
                                       (f7401 x7606 x7605)))))
                                  (begin
                                    (write '(funapp 681 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7604)))))
                               g7603))))
                          g7602))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7601
                            (begin
                              (write '(funapp 687 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7601))))))
                  g7600)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7608
                        (letrec*
                         ((x7609
                           (begin
                             (write '(funapp 694 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 694 58))
                           (display "\n")
                           (cdr x7609)))))
                      (begin
                        (write '(funapp 695 23))
                        (display "\n")
                        (cdr x7608)))))
                   g7607)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 701 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 701 62))
                        (display "\n")
                        (assert x7613))))
                    (g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 702 57))
                        (display "\n")
                        (assert x7614))))
                    (g7612
                     (letrec*
                      ((x-cnd7615
                        (begin
                          (write '(funapp 705 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7615
                        (begin (write '(funapp 707 24)) (display "\n") '())
                        (letrec*
                         ((x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 709 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 709 61))
                              (display "\n")
                              (f x7619))))
                          (x7616
                           (letrec*
                            ((x7617
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (map f x7617)))))
                         (begin
                           (write '(funapp 711 26))
                           (display "\n")
                           (cons x7618 x7616)))))))
                   g7612)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 716 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 716 55))
                        (display "\n")
                        (cdr x7621)))))
                   g7620)))
               (cadadr
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
                                (write '(funapp 725 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 725 61))
                              (display "\n")
                              (car x7625)))))
                         (begin
                           (write '(funapp 726 26))
                           (display "\n")
                           (cdr x7624)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7623)))))
                   g7622)))
               (cdadar
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
                                (write '(funapp 736 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (cdr x7629)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7628)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7627)))))
                   g7626)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 744 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 744 60))
                        (display "\n")
                        (assert x7633))))
                    (g7631
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 746 59))
                        (display "\n")
                        (assert x7634))))
                    (g7632
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 749 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 750 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7635
                         (begin
                           (write '(funapp 752 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7636 res))
                       g7636))))
                   g7632)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7638
                        (letrec*
                         ((x7639
                           (begin
                             (write '(funapp 760 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 760 58))
                           (display "\n")
                           (cdr x7639)))))
                      (begin
                        (write '(funapp 761 23))
                        (display "\n")
                        (car x7638)))))
                   g7637)))
               (cdaadr
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
                                (write '(funapp 770 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 770 61))
                              (display "\n")
                              (car x7643)))))
                         (begin
                           (write '(funapp 771 26))
                           (display "\n")
                           (car x7642)))))
                      (begin
                        (write '(funapp 772 23))
                        (display "\n")
                        (cdr x7641)))))
                   g7640)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 777 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 777 57))
                        (display "\n")
                        (assert x7646))))
                    (g7645
                     (letrec*
                      ((x-cnd7647
                        (begin
                          (write '(funapp 780 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7647
                        #f
                        (letrec*
                         ((x-cnd7648
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 785 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 785 56))
                              (display "\n")
                              (eq? x7649 k)))))
                         (if x-cnd7648
                           (begin
                             (write '(funapp 787 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 788 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 788 55))
                              (display "\n")
                              (assq k x7650)))))))))
                   g7645)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 793 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (= 0 x7652)))))
                   g7651)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 798 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 798 57))
                        (display "\n")
                        (assert x7655))))
                    (g7654
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 801 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7656
                        ""
                        (letrec*
                         ((x7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 806 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 806 55))
                              (display "\n")
                              (char->string x7660))))
                          (x7657
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (list->string x7658)))))
                         (begin
                           (write '(funapp 809 26))
                           (display "\n")
                           (string-append x7659 x7657)))))))
                   g7654)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 814 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 814 58))
                        (display "\n")
                        (assert x7664))))
                    (g7662
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7665))))
                    (g7663
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 818 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7666
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 820 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7666))))
                   g7663)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x7668
                        (letrec*
                         ((x7669
                           (letrec*
                            ((x7670
                              (begin
                                (write '(funapp 830 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 830 61))
                              (display "\n")
                              (cdr x7670)))))
                         (begin
                           (write '(funapp 831 26))
                           (display "\n")
                           (cdr x7669)))))
                      (begin
                        (write '(funapp 832 23))
                        (display "\n")
                        (cdr x7668)))))
                   g7667)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7674
                        (begin
                          (write '(funapp 837 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 837 57))
                        (display "\n")
                        (assert x7674))))
                    (g7672
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7675))))
                    (g7673
                     (letrec*
                      ((x-cnd7676
                        (begin
                          (write '(funapp 841 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7676
                        x
                        (letrec*
                         ((x7678
                           (begin
                             (write '(funapp 845 34))
                             (display "\n")
                             (cdr x)))
                          (x7677
                           (begin
                             (write '(funapp 845 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (list-tail x7678 x7677)))))))
                   g7673)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7679
                     (begin (write '(funapp 848 49)) (display "\n") '())))
                   g7679)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x-cnd7681
                        (letrec*
                         ((x7682 #\a))
                         (begin
                           (write '(funapp 855 48))
                           (display "\n")
                           (char-ci>=? c x7682)))))
                      (if x-cnd7681
                        (letrec*
                         ((x7683 #\z))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci<=? c x7683)))
                        #f))))
                   g7680)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7685
                           (begin
                             (write '(funapp 866 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 866 62))
                           (display "\n")
                           (= x7685 9)))))
                      (letrec*
                       ((g7686
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7687
                                 (begin
                                   (write '(funapp 874 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 875 32))
                                 (display "\n")
                                 (= x7687 10)))))
                            (letrec*
                             ((g7688
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7689
                                    (begin
                                      (write '(funapp 881 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 882 35))
                                    (display "\n")
                                    (= x7689 32))))))
                             g7688)))))
                       g7686))))
                   g7684)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((x7691
                        (letrec*
                         ((x7692
                           (begin
                             (write '(funapp 891 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 891 58))
                           (display "\n")
                           (cdr x7692)))))
                      (begin
                        (write '(funapp 892 23))
                        (display "\n")
                        (cdr x7691)))))
                   g7690)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((x7695
                        (begin
                          (write '(funapp 897 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 897 59))
                        (display "\n")
                        (assert x7695))))
                    (g7694
                     (begin (write '(funapp 898 28)) (display "\n") (> x 0))))
                   g7694)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7696
                     (begin
                       (write '(funapp 900 59))
                       (display "\n")
                       (bool-top))))
                   g7696)))
               ($pc (begin (write '(funapp 901 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7697 #f)) g7697)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7698
                     (letrec*
                      ((x7699
                        (begin
                          (write '(funapp 907 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 907 55))
                        (display "\n")
                        (cdr x7699)))))
                   g7698)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7700
                     (letrec*
                      ((x7702
                        (begin
                          (write '(funapp 912 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 912 59))
                        (display "\n")
                        (assert x7702))))
                    (g7701
                     (letrec*
                      ((x-cnd7703
                        (begin
                          (write '(funapp 915 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7703
                        (begin
                          (write '(funapp 916 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 916 49))
                          (display "\n")
                          (floor x))))))
                   g7701)))
               ($cmp (begin (write '(funapp 918 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7704
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 924 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7705
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7706
                                 (begin
                                   (write '(funapp 932 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7706
                                 (begin
                                   (write '(funapp 933 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7707
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7708
                                       (begin
                                         (write '(funapp 941 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7708
                                       (letrec*
                                        ((x-cnd7709
                                          (begin
                                            (write '(funapp 944 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7709
                                          (begin
                                            (write '(funapp 945 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7710
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7711
                                             (begin
                                               (write '(funapp 954 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7711
                                             (letrec*
                                              ((x-cnd7712
                                                (begin
                                                  (write '(funapp 957 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7712
                                                (letrec*
                                                 ((x-cnd7713
                                                   (letrec*
                                                    ((x7715
                                                      (begin
                                                        (write
                                                         '(funapp 962 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7714
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 964 53))
                                                      (display "\n")
                                                      (equal? x7715 x7714)))))
                                                 (if x-cnd7713
                                                   (letrec*
                                                    ((x7717
                                                      (begin
                                                        (write
                                                         '(funapp 967 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7716
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 969 53))
                                                      (display "\n")
                                                      (equal? x7717 x7716)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7718
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7719
                                                (begin
                                                  (write '(funapp 978 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7719
                                                (letrec*
                                                 ((x-cnd7720
                                                   (begin
                                                     (write '(funapp 981 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7720
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 984 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7721
                                                       (letrec*
                                                        ((x-cnd7722
                                                          (letrec*
                                                           ((x7723
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  991
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 993 60))
                                                             (display "\n")
                                                             (= x7723 n)))))
                                                        (if x-cnd7722
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7724
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1002
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7725
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7726
                                                                           (letrec*
                                                                            ((x7728
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1011
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7727
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1015
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1018
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7728
                                                                               x7727)))))
                                                                         (if x-cnd7726
                                                                           (letrec*
                                                                            ((x7729
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1024
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1027
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7729)))
                                                                           #f)))))
                                                                    g7725))))
                                                                g7724))))
                                                           (letrec*
                                                            ((g7730
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1033
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7730))
                                                          #f))))
                                                     g7721))
                                                   #f))
                                                #f)))))
                                         g7718)))))
                                   g7710)))))
                             g7707)))))
                       g7705))))
                   g7704)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7732
                        (letrec*
                         ((x7733
                           (letrec*
                            ((x7734
                              (begin
                                (write '(funapp 1051 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1051 61))
                              (display "\n")
                              (car x7734)))))
                         (begin
                           (write '(funapp 1052 26))
                           (display "\n")
                           (car x7733)))))
                      (begin
                        (write '(funapp 1053 23))
                        (display "\n")
                        (cdr x7732)))))
                   g7731)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7736
                        (letrec*
                         ((x7737
                           (letrec*
                            ((x7738
                              (begin
                                (write '(funapp 1062 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1062 61))
                              (display "\n")
                              (cdr x7738)))))
                         (begin
                           (write '(funapp 1063 26))
                           (display "\n")
                           (car x7737)))))
                      (begin
                        (write '(funapp 1064 23))
                        (display "\n")
                        (car x7736)))))
                   g7735)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7739
                     (begin
                       (write '(funapp 1066 53))
                       (display "\n")
                       (eq? x y))))
                   g7739)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 1071 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1071 60))
                        (display "\n")
                        (assert x7743))))
                    (g7741
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1073 59))
                        (display "\n")
                        (assert x7744))))
                    (g7742
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1076 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1077 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7745
                         (begin
                           (write '(funapp 1079 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7746 res))
                       g7746))))
                   g7742)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7747
                     (begin
                       (write '(funapp 1082 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1082 57))
                          (display "\n")
                          '())))))
                   g7747)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1086 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1086 58))
                        (display "\n")
                        (assert x7751))))
                    (g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7752))))
                    (g7750
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1090 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7753
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1092 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7753))))
                   g7750)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7755
                        (letrec*
                         ((x7756
                           (begin
                             (write '(funapp 1100 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1100 58))
                           (display "\n")
                           (car x7756)))))
                      (begin
                        (write '(funapp 1101 23))
                        (display "\n")
                        (cdr x7755)))))
                   g7754)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7758
                        (letrec*
                         ((x7759
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1110 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1110 61))
                              (display "\n")
                              (cdr x7760)))))
                         (begin
                           (write '(funapp 1111 26))
                           (display "\n")
                           (car x7759)))))
                      (begin
                        (write '(funapp 1112 23))
                        (display "\n")
                        (cdr x7758)))))
                   g7757)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7762
                        (letrec*
                         ((x7763
                           (begin
                             (write '(funapp 1120 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1120 58))
                           (display "\n")
                           (cdr x7763)))))
                      (begin
                        (write '(funapp 1121 23))
                        (display "\n")
                        (car x7762)))))
                   g7761)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (begin
                             (write '(funapp 1128 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1128 58))
                           (display "\n")
                           (car x7766)))))
                      (begin
                        (write '(funapp 1129 23))
                        (display "\n")
                        (car x7765)))))
                   g7764)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1134 58))
                        (display "\n")
                        (assert x7770))))
                    (g7768
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7771))))
                    (g7769
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1136 66))
                        (display "\n")
                        (not x7772)))))
                   g7769)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1146 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (car x7776)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (car x7775)))))
                      (begin
                        (write '(funapp 1148 23))
                        (display "\n")
                        (car x7774)))))
                   g7773)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1153 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1153 59))
                        (display "\n")
                        (assert x7779))))
                    (g7778
                     (begin (write '(funapp 1154 28)) (display "\n") (< x 0))))
                   g7778)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7780
                     (begin
                       (write '(funapp 1156 53))
                       (display "\n")
                       (memq e l))))
                   g7780)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7782
                        (letrec*
                         ((x7783
                           (begin
                             (write '(funapp 1162 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1162 58))
                           (display "\n")
                           (car x7783)))))
                      (begin
                        (write '(funapp 1163 23))
                        (display "\n")
                        (car x7782)))))
                   g7781)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7784
                     (begin (write '(funapp 1165 51)) (display "\n") '())))
                   g7784)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1169 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1169 57))
                        (display "\n")
                        (assert x7787))))
                    (g7786
                     (letrec*
                      ((x-cnd7788
                        (begin
                          (write '(funapp 1172 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7788
                        (begin (write '(funapp 1174 24)) (display "\n") '())
                        (letrec*
                         ((x7791
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1176 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1176 61))
                              (display "\n")
                              (reverse x7792))))
                          (x7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (list x7790)))))
                         (begin
                           (write '(funapp 1178 26))
                           (display "\n")
                           (append x7791 x7789)))))))
                   g7786)))
               (caaadr
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
                                (write '(funapp 1187 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1187 61))
                              (display "\n")
                              (car x7796)))))
                         (begin
                           (write '(funapp 1188 26))
                           (display "\n")
                           (car x7795)))))
                      (begin
                        (write '(funapp 1189 23))
                        (display "\n")
                        (car x7794)))))
                   g7793)))
               (cddadr
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
                                (write '(funapp 1198 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1198 61))
                              (display "\n")
                              (car x7800)))))
                         (begin
                           (write '(funapp 1199 26))
                           (display "\n")
                           (cdr x7799)))))
                      (begin
                        (write '(funapp 1200 23))
                        (display "\n")
                        (cdr x7798)))))
                   g7797)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1205 59))
                        (display "\n")
                        (assert x7803))))
                    (g7802
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1206 60))
                        (display "\n")
                        (= 1 x7804)))))
                   g7802)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7806
                        (letrec*
                         ((x7807
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 1215 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1215 61))
                              (display "\n")
                              (cdr x7808)))))
                         (begin
                           (write '(funapp 1216 26))
                           (display "\n")
                           (car x7807)))))
                      (begin
                        (write '(funapp 1217 23))
                        (display "\n")
                        (car x7806)))))
                   g7805)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1223 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1223 59))
                        (display "\n")
                        (assert x7812))))
                    (g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1224 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1224 60))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x-cnd7814
                        (begin
                          (write '(funapp 1227 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7814
                        (letrec*
                         ((g7815
                           (begin
                             (write '(funapp 1229 42))
                             (display "\n")
                             (proc))))
                         g7815)
                        (letrec*
                         ((x-cnd7816
                           (letrec*
                            ((x7817
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1232 58))
                              (display "\n")
                              (null? x7817)))))
                         (if x-cnd7816
                           (letrec*
                            ((g7818
                              (letrec*
                               ((x7819
                                 (begin
                                   (write '(funapp 1236 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1236 61))
                                 (display "\n")
                                 (proc x7819)))))
                            g7818)
                           (letrec*
                            ((x-cnd7820
                              (letrec*
                               ((x7821
                                 (begin
                                   (write '(funapp 1240 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1240 62))
                                 (display "\n")
                                 (null? x7821)))))
                            (if x-cnd7820
                              (letrec*
                               ((g7822
                                 (letrec*
                                  ((x7824
                                    (begin
                                      (write '(funapp 1245 43))
                                      (display "\n")
                                      (car args)))
                                   (x7823
                                    (begin
                                      (write '(funapp 1245 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1246 35))
                                    (display "\n")
                                    (proc x7824 x7823)))))
                               g7822)
                              (letrec*
                               ((x-cnd7825
                                 (letrec*
                                  ((x7826
                                    (begin
                                      (write '(funapp 1251 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1252 35))
                                    (display "\n")
                                    (null? x7826)))))
                               (if x-cnd7825
                                 (letrec*
                                  ((g7827
                                    (letrec*
                                     ((x7830
                                       (begin
                                         (write '(funapp 1257 46))
                                         (display "\n")
                                         (car args)))
                                      (x7829
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7828
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1260 38))
                                       (display "\n")
                                       (proc x7830 x7829 x7828)))))
                                  g7827)
                                 (letrec*
                                  ((x-cnd7831
                                    (letrec*
                                     ((x7832
                                       (begin
                                         (write '(funapp 1265 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1266 38))
                                       (display "\n")
                                       (null? x7832)))))
                                  (if x-cnd7831
                                    (letrec*
                                     ((g7833
                                       (letrec*
                                        ((x7837
                                          (begin
                                            (write '(funapp 1271 49))
                                            (display "\n")
                                            (car args)))
                                         (x7836
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7835
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7834
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1275 41))
                                          (display "\n")
                                          (proc x7837 x7836 x7835 x7834)))))
                                     g7833)
                                    (letrec*
                                     ((x-cnd7838
                                       (letrec*
                                        ((x7839
                                          (letrec*
                                           ((x7840
                                             (begin
                                               (write '(funapp 1282 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1283 44))
                                             (display "\n")
                                             (cdr x7840)))))
                                        (begin
                                          (write '(funapp 1284 41))
                                          (display "\n")
                                          (null? x7839)))))
                                     (if x-cnd7838
                                       (letrec*
                                        ((g7841
                                          (letrec*
                                           ((x7847
                                             (begin
                                               (write '(funapp 1289 52))
                                               (display "\n")
                                               (car args)))
                                            (x7846
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7845
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7844
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7842
                                             (letrec*
                                              ((x7843
                                                (begin
                                                  (write '(funapp 1295 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1296 47))
                                                (display "\n")
                                                (car x7843)))))
                                           (begin
                                             (write '(funapp 1297 44))
                                             (display "\n")
                                             (proc
                                              x7847
                                              x7846
                                              x7845
                                              x7844
                                              x7842)))))
                                        g7841)
                                       (letrec*
                                        ((x-cnd7848
                                          (letrec*
                                           ((x7849
                                             (letrec*
                                              ((x7850
                                                (begin
                                                  (write '(funapp 1309 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1310 47))
                                                (display "\n")
                                                (cddr x7850)))))
                                           (begin
                                             (write '(funapp 1311 44))
                                             (display "\n")
                                             (null? x7849)))))
                                        (if x-cnd7848
                                          (letrec*
                                           ((g7851
                                             (letrec*
                                              ((x7859
                                                (begin
                                                  (write '(funapp 1316 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7858
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7857
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7856
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7854
                                                (letrec*
                                                 ((x7855
                                                   (begin
                                                     (write '(funapp 1322 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1323 50))
                                                   (display "\n")
                                                   (car x7855))))
                                               (x7852
                                                (letrec*
                                                 ((x7853
                                                   (begin
                                                     (write '(funapp 1326 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1327 50))
                                                   (display "\n")
                                                   (cadr x7853)))))
                                              (begin
                                                (write '(funapp 1328 47))
                                                (display "\n")
                                                (proc
                                                 x7859
                                                 x7858
                                                 x7857
                                                 x7856
                                                 x7854
                                                 x7852)))))
                                           g7851)
                                          (letrec*
                                           ((x-cnd7860
                                             (letrec*
                                              ((x7861
                                                (letrec*
                                                 ((x7862
                                                   (begin
                                                     (write '(funapp 1341 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1342 50))
                                                   (display "\n")
                                                   (cdddr x7862)))))
                                              (begin
                                                (write '(funapp 1343 47))
                                                (display "\n")
                                                (null? x7861)))))
                                           (if x-cnd7860
                                             (letrec*
                                              ((g7863
                                                (letrec*
                                                 ((x7873
                                                   (begin
                                                     (write '(funapp 1348 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7872
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7871
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7870
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7868
                                                   (letrec*
                                                    ((x7869
                                                      (begin
                                                        (write
                                                         '(funapp 1354 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1355 53))
                                                      (display "\n")
                                                      (car x7869))))
                                                  (x7866
                                                   (letrec*
                                                    ((x7867
                                                      (begin
                                                        (write
                                                         '(funapp 1358 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1359 53))
                                                      (display "\n")
                                                      (cadr x7867))))
                                                  (x7864
                                                   (letrec*
                                                    ((x7865
                                                      (begin
                                                        (write
                                                         '(funapp 1362 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1363 53))
                                                      (display "\n")
                                                      (caddr x7865)))))
                                                 (begin
                                                   (write '(funapp 1364 50))
                                                   (display "\n")
                                                   (proc
                                                    x7873
                                                    x7872
                                                    x7871
                                                    x7870
                                                    x7868
                                                    x7866
                                                    x7864)))))
                                              g7863)
                                             (letrec*
                                              ((g7874
                                                (begin
                                                  (write '(funapp 1375 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7874)))))))))))))))))))
                   g7811)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7877
                        (begin
                          (write '(funapp 1381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1381 57))
                        (display "\n")
                        (assert x7877))))
                    (g7876
                     (letrec*
                      ((x-cnd7878
                        (begin
                          (write '(funapp 1384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7878
                        #f
                        (letrec*
                         ((x-cnd7879
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 1389 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1389 55))
                              (display "\n")
                              (equal? x7880 e)))))
                         (if x-cnd7879
                           l
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 1392 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1392 55))
                              (display "\n")
                              (member e x7881)))))))))
                   g7876)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7883
                        (letrec*
                         ((x7884
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 1401 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1401 61))
                              (display "\n")
                              (cdr x7885)))))
                         (begin
                           (write '(funapp 1402 26))
                           (display "\n")
                           (cdr x7884)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (cdr x7883)))))
                   g7882)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7887
                        (letrec*
                         ((x7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1412 61))
                              (display "\n")
                              (cdr x7889)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cdr x7888)))))
                      (begin
                        (write '(funapp 1414 23))
                        (display "\n")
                        (car x7887)))))
                   g7886)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7890
                     (begin
                       (write '(funapp 1416 53))
                       (display "\n")
                       (random 42))))
                   g7890)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x7893
                        (begin
                          (write '(funapp 1420 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1420 59))
                        (display "\n")
                        (assert x7893))))
                    (g7892
                     (begin (write '(funapp 1421 28)) (display "\n") (= x 0))))
                   g7892)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1428 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7895
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1430 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7895))))
                   g7894)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7897
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1436 55))
                        (display "\n")
                        (car x7897)))))
                   g7896)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7899
                           (begin
                             (write '(funapp 1446 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7899
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1448 55))
                              (display "\n")
                              (list? x7900)))
                           #f))))
                      (letrec*
                       ((g7901
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1451 52))
                             (display "\n")
                             (null? l)))))
                       g7901))))
                   g7898)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7903
                        (letrec*
                         ((x7904
                           (letrec*
                            ((x7905
                              (begin
                                (write '(funapp 1461 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1461 61))
                              (display "\n")
                              (car x7905)))))
                         (begin
                           (write '(funapp 1462 26))
                           (display "\n")
                           (cdr x7904)))))
                      (begin
                        (write '(funapp 1463 23))
                        (display "\n")
                        (cdr x7903)))))
                   g7902)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x-cnd7907
                        (letrec*
                         ((x7908 #\0))
                         (begin
                           (write '(funapp 1470 58))
                           (display "\n")
                           (char<=? x7908 c)))))
                      (if x-cnd7907
                        (letrec*
                         ((x7909 #\9))
                         (begin
                           (write '(funapp 1472 48))
                           (display "\n")
                           (char<=? c x7909)))
                        #f))))
                   g7906)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x7912
                        (begin
                          (write '(funapp 1479 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1479 57))
                        (display "\n")
                        (assert x7912))))
                    (g7911
                     (letrec*
                      ((x-cnd7913
                        (begin
                          (write '(funapp 1482 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7913
                        #f
                        (letrec*
                         ((x-cnd7914
                           (letrec*
                            ((x7915
                              (begin
                                (write '(funapp 1487 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1487 56))
                              (display "\n")
                              (eqv? x7915 k)))))
                         (if x-cnd7914
                           (begin
                             (write '(funapp 1489 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7916
                              (begin
                                (write '(funapp 1490 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1490 55))
                              (display "\n")
                              (assq k x7916)))))))))
                   g7911)))
               (not (lambda (x) (letrec* ((g7917 (if x #f #t))) g7917)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7918
                     (begin
                       (write '(funapp 1494 50))
                       (display "\n")
                       (append l1 l2))))
                   g7918)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1498 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1498 57))
                        (display "\n")
                        (assert x7921))))
                    (g7920
                     (letrec*
                      ((x-cnd7922
                        (begin
                          (write '(funapp 1501 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7922
                        #f
                        (letrec*
                         ((x-cnd7923
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1506 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1506 55))
                              (display "\n")
                              (eq? x7924 e)))))
                         (if x-cnd7923
                           l
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1509 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1509 55))
                              (display "\n")
                              (memq e x7925)))))))))
                   g7920)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7927
                        (letrec*
                         ((x7928
                           (letrec*
                            ((x7929
                              (begin
                                (write '(funapp 1518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1518 61))
                              (display "\n")
                              (car x7929)))))
                         (begin
                           (write '(funapp 1519 26))
                           (display "\n")
                           (cdr x7928)))))
                      (begin
                        (write '(funapp 1520 23))
                        (display "\n")
                        (car x7927)))))
                   g7926)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7932
                        (begin
                          (write '(funapp 1525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1525 57))
                        (display "\n")
                        (assert x7932))))
                    (g7931
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7933
                             (letrec*
                              ((x-cnd7934
                                (begin
                                  (write '(funapp 1533 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7934
                                0
                                (letrec*
                                 ((x7935
                                   (letrec*
                                    ((x7936
                                      (begin
                                        (write '(funapp 1538 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1538 63))
                                      (display "\n")
                                      (rec x7936)))))
                                 (begin
                                   (write '(funapp 1539 34))
                                   (display "\n")
                                   (+ 1 x7935)))))))
                           g7933))))
                      (letrec*
                       ((g7937
                         (begin
                           (write '(funapp 1541 40))
                           (display "\n")
                           (rec l))))
                       g7937))))
                   g7931)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1546 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1546 58))
                        (display "\n")
                        (assert x7941))))
                    (g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1550 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7943
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1552 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7943))))
                   g7940)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1558 65))
                        (display "\n")
                        (not x7945)))))
                   g7944)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((x7947
                        (letrec*
                         ((x7948
                           (begin
                             (write '(funapp 1565 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1565 58))
                           (display "\n")
                           (car x7948)))))
                      (begin
                        (write '(funapp 1566 23))
                        (display "\n")
                        (cdr x7947)))))
                   g7946)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1571 57))
                        (display "\n")
                        (assert x7951))))
                    (g7950
                     (letrec*
                      ((x-cnd7952
                        (begin
                          (write '(funapp 1574 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7952
                        #f
                        (letrec*
                         ((x-cnd7953
                           (letrec*
                            ((x7954
                              (begin
                                (write '(funapp 1579 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1579 56))
                              (display "\n")
                              (equal? x7954 k)))))
                         (if x-cnd7953
                           (begin
                             (write '(funapp 1581 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7955
                              (begin
                                (write '(funapp 1582 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1582 55))
                              (display "\n")
                              (assoc k x7955)))))))))
                   g7950)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1587 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1587 55))
                        (display "\n")
                        (car x7957)))))
                   g7956)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7962))))
                    (g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1594 63))
                        (display "\n")
                        (not x7963)))))
                   g7960)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1601 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7965
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1603 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7965))))
                   g7964)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 1609 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1609 62))
                        (display "\n")
                        (assert x7969))))
                    (g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1610 57))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((x-cnd7971
                        (begin
                          (write '(funapp 1613 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7971
                        #t
                        (letrec*
                         ((x-cnd7972
                           (begin
                             (write '(funapp 1617 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7972
                           (letrec*
                            ((g7973
                              (letrec*
                               ((x7975
                                 (begin
                                   (write '(funapp 1620 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1620 64))
                                 (display "\n")
                                 (f x7975))))
                             (g7974
                              (letrec*
                               ((x7976
                                 (begin
                                   (write '(funapp 1622 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1622 58))
                                 (display "\n")
                                 (for-each f x7976)))))
                            g7974)
                           (begin
                             (write '(funapp 1624 27))
                             (display "\n")
                             '())))))))
                   g7968)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7977
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1629 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1629 59))
                        (display "\n")
                        (assert x7979))))
                    (g7978
                     (letrec*
                      ((x-cnd7980
                        (begin
                          (write '(funapp 1631 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7980
                        (begin
                          (write '(funapp 1631 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7978)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1636 58))
                        (display "\n")
                        (assert x7984))))
                    (g7982
                     (letrec*
                      ((x7985
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7985))))
                    (g7983
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1640 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7986
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1642 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7986))))
                   g7983)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7988
                        (letrec*
                         ((x7989
                           (letrec*
                            ((x7990
                              (begin
                                (write '(funapp 1652 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1652 61))
                              (display "\n")
                              (cdr x7990)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (cdr x7989)))))
                      (begin
                        (write '(funapp 1654 23))
                        (display "\n")
                        (car x7988)))))
                   g7987)))
               (newline (lambda () (letrec* ((g7991 #f)) g7991)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7992
                     (letrec*
                      ((x7994
                        (letrec*
                         ((x7995
                           (begin
                             (write '(funapp 1662 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1662 58))
                           (display "\n")
                           (abs x7995))))
                       (x7993
                        (begin
                          (write '(funapp 1663 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1664 23))
                        (display "\n")
                        (/ x7994 x7993)))))
                   g7992)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x8000
                        (begin
                          (write '(funapp 1670 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (assert x8000))))
                    (g7997
                     (letrec*
                      ((x8001
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1671 63))
                        (display "\n")
                        (assert x8001))))
                    (g7998
                     (letrec*
                      ((x8002
                        (letrec*
                         ((x8003
                           (begin
                             (write '(funapp 1674 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1674 61))
                           (display "\n")
                           (< index x8003)))))
                      (begin
                        (write '(funapp 1675 23))
                        (display "\n")
                        (assert x8002))))
                    (g7999
                     (letrec*
                      ((x-cnd8004
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8004
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8006
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (cdr l)))
                          (x8005
                           (begin
                             (write '(funapp 1682 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1683 26))
                           (display "\n")
                           (list-ref x8006 x8005)))))))
                   g7999)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((x-cnd8008
                        (begin
                          (write '(funapp 1690 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8008
                        a
                        (letrec*
                         ((x8009
                           (begin
                             (write '(funapp 1693 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1693 57))
                           (display "\n")
                           (gcd b x8009)))))))
                   g8007)))
               (STATE/C
                (lambda (g7405 g7406 g7407)
                  (letrec*
                   ((g8010
                     (letrec*
                      ((x-cnd8011
                        (begin
                          (write '(funapp 1701 25))
                          (display "\n")
                          ((lambda (v7404)
                             (letrec*
                              ((g8012
                                (letrec*
                                 ((x-cnd8013
                                   (begin
                                     (write '(funapp 1705 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1705 48))
                                        (display "\n")
                                        'init)
                                      v7404))))
                                 (if x-cnd8013
                                   #t
                                   (letrec*
                                    ((x-cnd8014
                                      (begin
                                        (write '(funapp 1709 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1709 51))
                                           (display "\n")
                                           'opened)
                                         v7404))))
                                    (if x-cnd8014
                                      #t
                                      (letrec*
                                       ((x-cnd8015
                                         (begin
                                           (write '(funapp 1713 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1713 54))
                                              (display "\n")
                                              'closed)
                                            v7404))))
                                       (if x-cnd8015
                                         #t
                                         (begin
                                           (write '(funapp 1716 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1716 44))
                                              (display "\n")
                                              'ignore)
                                            v7404))))))))))
                              g8012))
                           g7407))))
                      (if x-cnd8011
                        g7407
                        (begin
                          (write '(blame g7405 1721 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7405)))))))
                   g8010)))
               (loop
                (lambda ()
                  (letrec*
                   ((g8016
                     (begin (write '(funapp 1732 50)) (display "\n") (loop))))
                   g8016)))
               (readit
                (lambda (st)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((x-cnd8018
                        (begin
                          (write '(funapp 1738 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1738 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd8018
                        (begin
                          (write '(funapp 1739 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1739 44))
                          (display "\n")
                          'ignore)))))
                   g8017)))
               (read_
                (lambda (x st)
                  (letrec*
                   ((g8019
                     (if x
                       (begin
                         (write '(funapp 1743 42))
                         (display "\n")
                         (readit st))
                       st)))
                   g8019)))
               (closeit
                (lambda (st)
                  (letrec*
                   ((g8020
                     (letrec*
                      ((x-cnd8021
                        (begin
                          (write '(funapp 1749 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1749 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd8021
                        (letrec*
                         ((g8022
                           (begin
                             (write '(funapp 1751 41))
                             (display "\n")
                             'closed)))
                         g8022)
                        (letrec*
                         ((x-cnd8023
                           (begin
                             (write '(funapp 1753 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1753 45))
                                (display "\n")
                                'ignore)
                              st))))
                         (if x-cnd8023
                           (letrec*
                            ((g8024
                              (begin
                                (write '(funapp 1755 44))
                                (display "\n")
                                'ignore)))
                            g8024)
                           (letrec*
                            ((g8025
                              (begin
                                (write '(funapp 1756 45))
                                (display "\n")
                                (loop)))
                             (g8026 0))
                            g8026)))))))
                   g8020)))
               (close_
                (lambda (x st)
                  (letrec*
                   ((g8027
                     (if x
                       (begin
                         (write '(funapp 1760 42))
                         (display "\n")
                         (closeit st))
                       st)))
                   g8027)))
               (f
                (lambda (x y st)
                  (letrec*
                   ((g8028
                     (letrec*
                      ((x8030
                        (begin
                          (write '(funapp 1764 45))
                          (display "\n")
                          (close_ x st))))
                      (begin
                        (write '(funapp 1764 61))
                        (display "\n")
                        (close_ y x8030))))
                    (g8029
                     (letrec*
                      ((x8031
                        (letrec*
                         ((x8032
                           (begin
                             (write '(funapp 1768 42))
                             (display "\n")
                             (read_ x st))))
                         (begin
                           (write '(funapp 1768 57))
                           (display "\n")
                           (read_ y x8032)))))
                      (begin
                        (write '(funapp 1769 23))
                        (display "\n")
                        (f x y x8031)))))
                   g8029)))
               (next
                (lambda (st)
                  (letrec*
                   ((g8033
                     (letrec*
                      ((x-cnd8034
                        (begin
                          (write '(funapp 1776 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1776 42))
                             (display "\n")
                             'init)
                           st))))
                      (if x-cnd8034
                        (begin
                          (write '(funapp 1777 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1777 44))
                          (display "\n")
                          'ignore)))))
                   g8033)))
               (g
                (lambda (b3 x st)
                  (letrec*
                   ((g8035
                     (letrec*
                      ((x-cnd8036
                        (begin
                          (write '(funapp 1784 35))
                          (display "\n")
                          (> b3 0))))
                      (if x-cnd8036
                        (letrec*
                         ((x8037
                           (begin
                             (write '(funapp 1786 42))
                             (display "\n")
                             (next st))))
                         (begin
                           (write '(funapp 1786 54))
                           (display "\n")
                           (f x #t x8037)))
                        (begin
                          (write '(funapp 1787 25))
                          (display "\n")
                          (f x #f st))))))
                   g8035)))
               (main
                (lambda (b2 b3)
                  (letrec*
                   ((g8038
                     (letrec*
                      ((x-cnd8040
                        (begin
                          (write '(funapp 1794 35))
                          (display "\n")
                          (> b2 0))))
                      (if x-cnd8040
                        (begin
                          (write '(funapp 1795 37))
                          (display "\n")
                          (g
                           b3
                           #t
                           (begin
                             (write '(funapp 1795 45))
                             (display "\n")
                             'opened)))
                        (begin
                          (write '(funapp 1795 55))
                          (display "\n")
                          (g
                           b3
                           #f
                           (begin
                             (write '(funapp 1795 63))
                             (display "\n")
                             'init))))))
                    (g8039
                     (begin (write '(funapp 1796 27)) (display "\n") 'unit)))
                   g8039))))
              (letrec*
               ((g8041
                 (begin
                   (write '(funapp 1800 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1801 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8044
                          (letrec*
                           ((xj7408
                             (begin
                               (write '(funapp 1805 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1805 37))
                                  (display "\n")
                                  'module))))
                            (xk7409
                             (begin
                               (write '(funapp 1805 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1805 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8045
                              (begin
                                (write '(funapp 1808 27))
                                (display "\n")
                                ((lambda (j7412 k7413 f7414)
                                   (letrec*
                                    ((g8046
                                      (lambda (g7410 g7411)
                                        (letrec*
                                         ((g8047
                                           (letrec*
                                            ((x8048
                                              (letrec*
                                               ((x8050
                                                 (begin
                                                   (write '(funapp 1818 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7412
                                                    k7413
                                                    g7410)))
                                                (x8049
                                                 (begin
                                                   (write '(funapp 1820 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7412
                                                    k7413
                                                    g7411))))
                                               (begin
                                                 (write '(funapp 1821 42))
                                                 (display "\n")
                                                 (f7414 x8050 x8049)))))
                                            (begin
                                              (write '(funapp 1822 39))
                                              (display "\n")
                                              (any/c j7412 k7413 x8048)))))
                                         g8047))))
                                    g8046))
                                 xj7408
                                 xk7409
                                 main))))
                            g8045)))
                         (x8043 (input))
                         (x8042 (input)))
                        (begin
                          (write '(funapp 1831 21))
                          (display "\n")
                          (x8044 x8043 x8042)))))))))
               g8041))))
           g7443))))
       g7426)))
    g7425)))
