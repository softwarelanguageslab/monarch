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
               (add1
                (lambda (x)
                  (letrec*
                   ((g7568
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7568)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7569
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7571
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7572
                                 (letrec*
                                  ((x7573
                                    (letrec*
                                     ((x7575
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7574
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7369 x7575 x7574)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7573)))))
                               g7572))))
                          g7571))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7570
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7570))))))
                  g7569)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7576
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7578
                            (lambda (g7372)
                              (letrec*
                               ((g7579
                                 (letrec*
                                  ((x7580
                                    (letrec*
                                     ((x7581
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7375 x7581)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7580)))))
                               g7579))))
                          g7578))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7577
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7577))))))
                  g7576)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7582
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7584
                            (lambda (g7378)
                              (letrec*
                               ((g7585
                                 (letrec*
                                  ((x7586
                                    (letrec*
                                     ((x7587
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7381 x7587)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7586)))))
                               g7585))))
                          g7584))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7583
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7583))))))
                  g7582)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7588
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7590
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7591
                                 (letrec*
                                  ((x7592
                                    (letrec*
                                     ((x7594
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7593
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7388 x7594 x7593)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7592)))))
                               g7591))))
                          g7590))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7589
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7589))))))
                  g7588)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7595
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7597
                            (lambda (g7391)
                              (letrec*
                               ((g7598
                                 (letrec*
                                  ((x7599
                                    (letrec*
                                     ((x7600
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7394 x7600)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7599)))))
                               g7598))))
                          g7597))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7596
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7596))))))
                  g7595)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7601
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7603
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7604
                                 (letrec*
                                  ((x7605
                                    (letrec*
                                     ((x7607
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7606
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7401 x7607 x7606)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7605)))))
                               g7604))))
                          g7603))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7602
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7602))))))
                  g7601)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7609
                        (letrec*
                         ((x7610
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7610)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7609)))))
                   g7608)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7614))))
                    (g7612
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7615))))
                    (g7613
                     (letrec*
                      ((x-cnd7616
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7616
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7619
                           (letrec*
                            ((x7620
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7620))))
                          (x7617
                           (letrec*
                            ((x7618
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7618)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7619 x7617)))))))
                   g7613)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7622)))))
                   g7621)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7624
                        (letrec*
                         ((x7625
                           (letrec*
                            ((x7626
                              (begin
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7626)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7625)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7624)))))
                   g7623)))
               (cdadar
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
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7630)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7629)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7628)))))
                   g7627)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7634))))
                    (g7632
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7635))))
                    (g7633
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 750 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 751 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7636
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7637 res))
                       g7637))))
                   g7633)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7639
                        (letrec*
                         ((x7640
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7640)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7639)))))
                   g7638)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (letrec*
                         ((x7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7644)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7643)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7642)))))
                   g7641)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7647))))
                    (g7646
                     (letrec*
                      ((x-cnd7648
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7648
                        #f
                        (letrec*
                         ((x-cnd7649
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7650 k)))))
                         (if x-cnd7649
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7651)))))))))
                   g7646)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7653)))))
                   g7652)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7656))))
                    (g7655
                     (letrec*
                      ((x-cnd7657
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7657
                        ""
                        (letrec*
                         ((x7660
                           (letrec*
                            ((x7661
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7661))))
                          (x7658
                           (letrec*
                            ((x7659
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7659)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7660 x7658)))))))
                   g7655)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7665))))
                    (g7663
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7666))))
                    (g7664
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7667
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7667))))
                   g7664)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x7669
                        (letrec*
                         ((x7670
                           (letrec*
                            ((x7671
                              (begin
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7671)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7670)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7669)))))
                   g7668)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7675))))
                    (g7673
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7676))))
                    (g7674
                     (letrec*
                      ((x-cnd7677
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7677
                        x
                        (letrec*
                         ((x7679
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7678
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7679 x7678)))))))
                   g7674)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7680
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7680)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((x-cnd7682
                        (letrec*
                         ((x7683 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7683)))))
                      (if x-cnd7682
                        (letrec*
                         ((x7684 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7684)))
                        #f))))
                   g7681)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7685
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7686
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7686 9)))))
                      (letrec*
                       ((g7687
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7688
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7688 10)))))
                            (letrec*
                             ((g7689
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7690
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7690 32))))))
                             g7689)))))
                       g7687))))
                   g7685)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7691
                     (letrec*
                      ((x7692
                        (letrec*
                         ((x7693
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7693)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7692)))))
                   g7691)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7694
                     (letrec*
                      ((x7696
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7696))))
                    (g7695
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7695)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7697
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7697)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7698 #f)) g7698)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7699
                     (letrec*
                      ((x7700
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7700)))))
                   g7699)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7701
                     (letrec*
                      ((x7703
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7703))))
                    (g7702
                     (letrec*
                      ((x-cnd7704
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7704
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7702)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7705
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7706
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7707
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7707
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7708
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7709
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7709
                                       (letrec*
                                        ((x-cnd7710
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7710
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7711
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7712
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7712
                                             (letrec*
                                              ((x-cnd7713
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7713
                                                (letrec*
                                                 ((x-cnd7714
                                                   (letrec*
                                                    ((x7716
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7715
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7716 x7715)))))
                                                 (if x-cnd7714
                                                   (letrec*
                                                    ((x7718
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7717
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7718 x7717)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7719
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7720
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7720
                                                (letrec*
                                                 ((x-cnd7721
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7721
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7722
                                                       (letrec*
                                                        ((x-cnd7723
                                                          (letrec*
                                                           ((x7724
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  992
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 994 60))
                                                             (display "\n")
                                                             (= x7724 n)))))
                                                        (if x-cnd7723
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7725
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1003
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7726
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7727
                                                                           (letrec*
                                                                            ((x7729
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1012
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7728
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1016
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1019
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7729
                                                                               x7728)))))
                                                                         (if x-cnd7727
                                                                           (letrec*
                                                                            ((x7730
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1025
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1028
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7730)))
                                                                           #f)))))
                                                                    g7726))))
                                                                g7725))))
                                                           (letrec*
                                                            ((g7731
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7731))
                                                          #f))))
                                                     g7722))
                                                   #f))
                                                #f)))))
                                         g7719)))))
                                   g7711)))))
                             g7708)))))
                       g7706))))
                   g7705)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7732
                     (letrec*
                      ((x7733
                        (letrec*
                         ((x7734
                           (letrec*
                            ((x7735
                              (begin
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7735)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7734)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x7733)))))
                   g7732)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7737
                        (letrec*
                         ((x7738
                           (letrec*
                            ((x7739
                              (begin
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7739)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7738)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7737)))))
                   g7736)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7740
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g7740)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7744))))
                    (g7742
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7745))))
                    (g7743
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1077 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1078 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7746
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7747 res))
                       g7747))))
                   g7743)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7748
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g7748)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7752))))
                    (g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7753))))
                    (g7751
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7754
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7754))))
                   g7751)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7757)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7756)))))
                   g7755)))
               (cdaddr
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7761)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7760)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x7759)))))
                   g7758)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7763
                        (letrec*
                         ((x7764
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x7764)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x7763)))))
                   g7762)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7766
                        (letrec*
                         ((x7767
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x7767)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x7766)))))
                   g7765)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7772))))
                    (g7770
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x7773)))))
                   g7770)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x7777)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x7776)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x7775)))))
                   g7774)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x7780))))
                    (g7779
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g7779)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7781
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g7781)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7783
                        (letrec*
                         ((x7784
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x7784)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x7783)))))
                   g7782)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7785
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g7785)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x7788))))
                    (g7787
                     (letrec*
                      ((x-cnd7789
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7789
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x7792
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x7793))))
                          (x7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x7791)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x7792 x7790)))))))
                   g7787)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7795
                        (letrec*
                         ((x7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x7797)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x7796)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x7795)))))
                   g7794)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7799
                        (letrec*
                         ((x7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x7801)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x7800)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x7799)))))
                   g7798)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x7804))))
                    (g7803
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x7805)))))
                   g7803)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7807
                        (letrec*
                         ((x7808
                           (letrec*
                            ((x7809
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x7809)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x7808)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7807)))))
                   g7806)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x-cnd7815
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7815
                        (letrec*
                         ((g7816
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g7816)
                        (letrec*
                         ((x-cnd7817
                           (letrec*
                            ((x7818
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x7818)))))
                         (if x-cnd7817
                           (letrec*
                            ((g7819
                              (letrec*
                               ((x7820
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x7820)))))
                            g7819)
                           (letrec*
                            ((x-cnd7821
                              (letrec*
                               ((x7822
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x7822)))))
                            (if x-cnd7821
                              (letrec*
                               ((g7823
                                 (letrec*
                                  ((x7825
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x7824
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x7825 x7824)))))
                               g7823)
                              (letrec*
                               ((x-cnd7826
                                 (letrec*
                                  ((x7827
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x7827)))))
                               (if x-cnd7826
                                 (letrec*
                                  ((g7828
                                    (letrec*
                                     ((x7831
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x7830
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7829
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x7831 x7830 x7829)))))
                                  g7828)
                                 (letrec*
                                  ((x-cnd7832
                                    (letrec*
                                     ((x7833
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x7833)))))
                                  (if x-cnd7832
                                    (letrec*
                                     ((g7834
                                       (letrec*
                                        ((x7838
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x7837
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7836
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7835
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x7838 x7837 x7836 x7835)))))
                                     g7834)
                                    (letrec*
                                     ((x-cnd7839
                                       (letrec*
                                        ((x7840
                                          (letrec*
                                           ((x7841
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x7841)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x7840)))))
                                     (if x-cnd7839
                                       (letrec*
                                        ((g7842
                                          (letrec*
                                           ((x7848
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x7847
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7846
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7845
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7843
                                             (letrec*
                                              ((x7844
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x7844)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x7848
                                              x7847
                                              x7846
                                              x7845
                                              x7843)))))
                                        g7842)
                                       (letrec*
                                        ((x-cnd7849
                                          (letrec*
                                           ((x7850
                                             (letrec*
                                              ((x7851
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x7851)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x7850)))))
                                        (if x-cnd7849
                                          (letrec*
                                           ((g7852
                                             (letrec*
                                              ((x7860
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7859
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7858
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7857
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7855
                                                (letrec*
                                                 ((x7856
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x7856))))
                                               (x7853
                                                (letrec*
                                                 ((x7854
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x7854)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x7860
                                                 x7859
                                                 x7858
                                                 x7857
                                                 x7855
                                                 x7853)))))
                                           g7852)
                                          (letrec*
                                           ((x-cnd7861
                                             (letrec*
                                              ((x7862
                                                (letrec*
                                                 ((x7863
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x7863)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x7862)))))
                                           (if x-cnd7861
                                             (letrec*
                                              ((g7864
                                                (letrec*
                                                 ((x7874
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7873
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7872
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7871
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7869
                                                   (letrec*
                                                    ((x7870
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x7870))))
                                                  (x7867
                                                   (letrec*
                                                    ((x7868
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x7868))))
                                                  (x7865
                                                   (letrec*
                                                    ((x7866
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x7866)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x7874
                                                    x7873
                                                    x7872
                                                    x7871
                                                    x7869
                                                    x7867
                                                    x7865)))))
                                              g7864)
                                             (letrec*
                                              ((g7875
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7875)))))))))))))))))))
                   g7812)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x7878))))
                    (g7877
                     (letrec*
                      ((x-cnd7879
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7879
                        #f
                        (letrec*
                         ((x-cnd7880
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x7881 e)))))
                         (if x-cnd7880
                           l
                           (letrec*
                            ((x7882
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x7882)))))))))
                   g7877)))
               (cddddr
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
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x7886)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x7885)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x7884)))))
                   g7883)))
               (cadddr
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
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x7890)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x7889)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x7888)))))
                   g7887)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7891
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g7891)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x7894))))
                    (g7893
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g7893)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7896
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7896))))
                   g7895)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x7898
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x7898)))))
                   g7897)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7900
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7900
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x7901)))
                           #f))))
                      (letrec*
                       ((g7902
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g7902))))
                   g7899)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7904
                        (letrec*
                         ((x7905
                           (letrec*
                            ((x7906
                              (begin
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x7906)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x7905)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x7904)))))
                   g7903)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x-cnd7908
                        (letrec*
                         ((x7909 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x7909 c)))))
                      (if x-cnd7908
                        (letrec*
                         ((x7910 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x7910)))
                        #f))))
                   g7907)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7913
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7913))))
                    (g7912
                     (letrec*
                      ((x-cnd7914
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7914
                        #f
                        (letrec*
                         ((x-cnd7915
                           (letrec*
                            ((x7916
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x7916 k)))))
                         (if x-cnd7915
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x7917)))))))))
                   g7912)))
               (not (lambda (x) (letrec* ((g7918 (if x #f #t))) g7918)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7919
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g7919)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x7922))))
                    (g7921
                     (letrec*
                      ((x-cnd7923
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7923
                        #f
                        (letrec*
                         ((x-cnd7924
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x7925 e)))))
                         (if x-cnd7924
                           l
                           (letrec*
                            ((x7926
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x7926)))))))))
                   g7921)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7928
                        (letrec*
                         ((x7929
                           (letrec*
                            ((x7930
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x7930)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x7929)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x7928)))))
                   g7927)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7933))))
                    (g7932
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7934
                             (letrec*
                              ((x-cnd7935
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7935
                                0
                                (letrec*
                                 ((x7936
                                   (letrec*
                                    ((x7937
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x7937)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x7936)))))))
                           g7934))))
                      (letrec*
                       ((g7938
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g7938))))
                   g7932)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7944
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7944))))
                   g7941)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x7946)))))
                   g7945)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7948
                        (letrec*
                         ((x7949
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x7949)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x7948)))))
                   g7947)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x7952))))
                    (g7951
                     (letrec*
                      ((x-cnd7953
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7953
                        #f
                        (letrec*
                         ((x-cnd7954
                           (letrec*
                            ((x7955
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x7955 k)))))
                         (if x-cnd7954
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7956
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x7956)))))))))
                   g7951)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x7958)))))
                   g7957)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7963))))
                    (g7961
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x7964)))))
                   g7961)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7966
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7966))))
                   g7965)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x7971))))
                    (g7969
                     (letrec*
                      ((x-cnd7972
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7972
                        #t
                        (letrec*
                         ((x-cnd7973
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7973
                           (letrec*
                            ((g7974
                              (letrec*
                               ((x7976
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x7976))))
                             (g7975
                              (letrec*
                               ((x7977
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x7977)))))
                            g7975)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g7969)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7978
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x7980))))
                    (g7979
                     (letrec*
                      ((x-cnd7981
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7981
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7979)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7982
                     (letrec*
                      ((x7985
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7985))))
                    (g7983
                     (letrec*
                      ((x7986
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7986))))
                    (g7984
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7987
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7987))))
                   g7984)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7988
                     (letrec*
                      ((x7989
                        (letrec*
                         ((x7990
                           (letrec*
                            ((x7991
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x7991)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x7990)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x7989)))))
                   g7988)))
               (newline (lambda () (letrec* ((g7992 #f)) g7992)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x7995
                        (letrec*
                         ((x7996
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x7996))))
                       (x7994
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x7995 x7994)))))
                   g7993)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7997
                     (letrec*
                      ((x8001
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x8001))))
                    (g7998
                     (letrec*
                      ((x8002
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x8002))))
                    (g7999
                     (letrec*
                      ((x8003
                        (letrec*
                         ((x8004
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x8004)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x8003))))
                    (g8000
                     (letrec*
                      ((x-cnd8005
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8005
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8007
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x8006
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x8007 x8006)))))))
                   g8000)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8008
                     (letrec*
                      ((x-cnd8009
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8009
                        a
                        (letrec*
                         ((x8010
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8010)))))))
                   g8008)))
               (STATE/C
                (lambda (g7405 g7406 g7407)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x-cnd8012
                        (begin
                          (write '(funapp 1702 25))
                          (display "\n")
                          ((lambda (v7404)
                             (letrec*
                              ((g8013
                                (letrec*
                                 ((x-cnd8014
                                   (begin
                                     (write '(funapp 1706 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1706 48))
                                        (display "\n")
                                        'init)
                                      v7404))))
                                 (if x-cnd8014
                                   #t
                                   (letrec*
                                    ((x-cnd8015
                                      (begin
                                        (write '(funapp 1710 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1710 51))
                                           (display "\n")
                                           'opened)
                                         v7404))))
                                    (if x-cnd8015
                                      #t
                                      (letrec*
                                       ((x-cnd8016
                                         (begin
                                           (write '(funapp 1714 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1714 54))
                                              (display "\n")
                                              'closed)
                                            v7404))))
                                       (if x-cnd8016
                                         #t
                                         (begin
                                           (write '(funapp 1717 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1717 44))
                                              (display "\n")
                                              'ignore)
                                            v7404))))))))))
                              g8013))
                           g7407))))
                      (if x-cnd8012
                        g7407
                        (begin
                          (write '(blame g7405 1722 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7405)))))))
                   g8011)))
               (loop
                (lambda ()
                  (letrec*
                   ((g8017
                     (begin (write '(funapp 1733 50)) (display "\n") (loop))))
                   g8017)))
               (readit
                (lambda (st)
                  (letrec*
                   ((g8018
                     (letrec*
                      ((x-cnd8019
                        (begin
                          (write '(funapp 1739 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1739 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd8019
                        (begin
                          (write '(funapp 1740 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1740 44))
                          (display "\n")
                          'ignore)))))
                   g8018)))
               (read_
                (lambda (x st)
                  (letrec*
                   ((g8020
                     (if x
                       (begin
                         (write '(funapp 1744 42))
                         (display "\n")
                         (readit st))
                       st)))
                   g8020)))
               (closeit
                (lambda (st)
                  (letrec*
                   ((g8021
                     (letrec*
                      ((x-cnd8022
                        (begin
                          (write '(funapp 1750 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1750 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd8022
                        (letrec*
                         ((g8023
                           (begin
                             (write '(funapp 1752 41))
                             (display "\n")
                             'closed)))
                         g8023)
                        (letrec*
                         ((x-cnd8024
                           (begin
                             (write '(funapp 1754 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1754 45))
                                (display "\n")
                                'ignore)
                              st))))
                         (if x-cnd8024
                           (letrec*
                            ((g8025
                              (begin
                                (write '(funapp 1756 44))
                                (display "\n")
                                'ignore)))
                            g8025)
                           (letrec*
                            ((g8026
                              (begin
                                (write '(funapp 1757 45))
                                (display "\n")
                                (loop)))
                             (g8027 0))
                            g8027)))))))
                   g8021)))
               (close_
                (lambda (x st)
                  (letrec*
                   ((g8028
                     (if x
                       (begin
                         (write '(funapp 1761 42))
                         (display "\n")
                         (closeit st))
                       st)))
                   g8028)))
               (f
                (lambda (x y st)
                  (letrec*
                   ((g8029
                     (letrec*
                      ((x8031
                        (begin
                          (write '(funapp 1765 45))
                          (display "\n")
                          (close_ x st))))
                      (begin
                        (write '(funapp 1765 61))
                        (display "\n")
                        (close_ y x8031))))
                    (g8030
                     (letrec*
                      ((x8032
                        (letrec*
                         ((x8033
                           (begin
                             (write '(funapp 1769 42))
                             (display "\n")
                             (read_ x st))))
                         (begin
                           (write '(funapp 1769 57))
                           (display "\n")
                           (read_ y x8033)))))
                      (begin
                        (write '(funapp 1770 23))
                        (display "\n")
                        (f x y x8032)))))
                   g8030)))
               (next
                (lambda (st)
                  (letrec*
                   ((g8034
                     (letrec*
                      ((x-cnd8035
                        (begin
                          (write '(funapp 1777 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1777 42))
                             (display "\n")
                             'init)
                           st))))
                      (if x-cnd8035
                        (begin
                          (write '(funapp 1778 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1778 44))
                          (display "\n")
                          'ignore)))))
                   g8034)))
               (g
                (lambda (b3 x st)
                  (letrec*
                   ((g8036
                     (letrec*
                      ((x-cnd8037
                        (begin
                          (write '(funapp 1785 35))
                          (display "\n")
                          (> b3 0))))
                      (if x-cnd8037
                        (letrec*
                         ((x8038
                           (begin
                             (write '(funapp 1787 42))
                             (display "\n")
                             (next st))))
                         (begin
                           (write '(funapp 1787 54))
                           (display "\n")
                           (f x #t x8038)))
                        (begin
                          (write '(funapp 1788 25))
                          (display "\n")
                          (f x #f st))))))
                   g8036)))
               (main
                (lambda (b2 b3)
                  (letrec*
                   ((g8039
                     (letrec*
                      ((x-cnd8041
                        (begin
                          (write '(funapp 1795 35))
                          (display "\n")
                          (> b2 0))))
                      (if x-cnd8041
                        (begin
                          (write '(funapp 1796 37))
                          (display "\n")
                          (g
                           b3
                           #t
                           (begin
                             (write '(funapp 1796 45))
                             (display "\n")
                             'opened)))
                        (begin
                          (write '(funapp 1796 55))
                          (display "\n")
                          (g
                           b3
                           #f
                           (begin
                             (write '(funapp 1796 63))
                             (display "\n")
                             'init))))))
                    (g8040
                     (begin (write '(funapp 1797 27)) (display "\n") 'unit)))
                   g8040))))
              (letrec*
               ((g8042
                 (begin
                   (write '(funapp 1801 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1802 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8045
                          (letrec*
                           ((xj7408
                             (begin
                               (write '(funapp 1806 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1806 37))
                                  (display "\n")
                                  'module))))
                            (xk7409
                             (begin
                               (write '(funapp 1806 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1806 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8046
                              (begin
                                (write '(funapp 1809 27))
                                (display "\n")
                                ((lambda (j7412 k7413 f7414)
                                   (letrec*
                                    ((g8047
                                      (lambda (g7410 g7411)
                                        (letrec*
                                         ((g8048
                                           (letrec*
                                            ((x8049
                                              (letrec*
                                               ((x8051
                                                 (begin
                                                   (write '(funapp 1819 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7412
                                                    k7413
                                                    g7410)))
                                                (x8050
                                                 (begin
                                                   (write '(funapp 1821 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7412
                                                    k7413
                                                    g7411))))
                                               (begin
                                                 (write '(funapp 1822 42))
                                                 (display "\n")
                                                 (f7414 x8051 x8050)))))
                                            (begin
                                              (write '(funapp 1823 39))
                                              (display "\n")
                                              (any/c j7412 k7413 x8049)))))
                                         g8048))))
                                    g8047))
                                 xj7408
                                 xk7409
                                 main))))
                            g8046)))
                         (x8044 (input))
                         (x8043 (input)))
                        (begin
                          (write '(funapp 1832 21))
                          (display "\n")
                          (x8045 x8044 x8043)))))))))
               g8042))))
           g7443))))
       g7426)))
    g7425)))
