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
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7569
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7569)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7570
                    (begin
                      (write '(funapp 552 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7572
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7573
                                 (letrec*
                                  ((x7574
                                    (letrec*
                                     ((x7576
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7575
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7369 x7576 x7575)))))
                                  (begin
                                    (write '(funapp 564 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7574)))))
                               g7573))))
                          g7572))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7571
                            (begin
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7571))))))
                  g7570)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7577
                    (begin
                      (write '(funapp 576 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7579
                            (lambda (g7372)
                              (letrec*
                               ((g7580
                                 (letrec*
                                  ((x7581
                                    (letrec*
                                     ((x7582
                                       (begin
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7375 x7582)))))
                                  (begin
                                    (write '(funapp 587 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7581)))))
                               g7580))))
                          g7579))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7578
                            (begin
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7578))))))
                  g7577)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7583
                    (begin
                      (write '(funapp 599 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7585
                            (lambda (g7378)
                              (letrec*
                               ((g7586
                                 (letrec*
                                  ((x7587
                                    (letrec*
                                     ((x7588
                                       (begin
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7381 x7588)))))
                                  (begin
                                    (write '(funapp 610 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7587)))))
                               g7586))))
                          g7585))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7584
                            (begin
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7584))))))
                  g7583)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7589
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7591
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7592
                                 (letrec*
                                  ((x7593
                                    (letrec*
                                     ((x7595
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7594
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7388 x7595 x7594)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7593)))))
                               g7592))))
                          g7591))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7590
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7590))))))
                  g7589)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7596
                    (begin
                      (write '(funapp 647 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7598
                            (lambda (g7391)
                              (letrec*
                               ((g7599
                                 (letrec*
                                  ((x7600
                                    (letrec*
                                     ((x7601
                                       (begin
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7394 x7601)))))
                                  (begin
                                    (write '(funapp 658 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7600)))))
                               g7599))))
                          g7598))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7597
                            (begin
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7597))))))
                  g7596)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7602
                    (begin
                      (write '(funapp 671 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7604
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7605
                                 (letrec*
                                  ((x7606
                                    (letrec*
                                     ((x7608
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7607
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7401 x7608 x7607)))))
                                  (begin
                                    (write '(funapp 683 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7606)))))
                               g7605))))
                          g7604))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7603
                            (begin
                              (write '(funapp 689 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7603))))))
                  g7602)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (begin
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7611)))))
                      (begin
                        (write '(funapp 697 23))
                        (display "\n")
                        (cdr x7610)))))
                   g7609)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7615))))
                    (g7613
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7616))))
                    (g7614
                     (letrec*
                      ((x-cnd7617
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7617
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7620
                           (letrec*
                            ((x7621
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7621))))
                          (x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7619)))))
                         (begin
                           (write '(funapp 713 26))
                           (display "\n")
                           (cons x7620 x7618)))))))
                   g7614)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
                        (display "\n")
                        (cdr x7623)))))
                   g7622)))
               (cadadr
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
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7627)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7626)))))
                      (begin
                        (write '(funapp 729 23))
                        (display "\n")
                        (car x7625)))))
                   g7624)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7629
                        (letrec*
                         ((x7630
                           (letrec*
                            ((x7631
                              (begin
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7631)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7630)))))
                      (begin
                        (write '(funapp 740 23))
                        (display "\n")
                        (cdr x7629)))))
                   g7628)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x7635))))
                    (g7633
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x7636))))
                    (g7634
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 751 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 752 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7637
                         (begin
                           (write '(funapp 754 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7638 res))
                       g7638))))
                   g7634)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7640
                        (letrec*
                         ((x7641
                           (begin
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x7641)))))
                      (begin
                        (write '(funapp 763 23))
                        (display "\n")
                        (car x7640)))))
                   g7639)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7643
                        (letrec*
                         ((x7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x7645)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x7644)))))
                      (begin
                        (write '(funapp 774 23))
                        (display "\n")
                        (cdr x7643)))))
                   g7642)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x7648))))
                    (g7647
                     (letrec*
                      ((x-cnd7649
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7649
                        #f
                        (letrec*
                         ((x-cnd7650
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x7651 k)))))
                         (if x-cnd7650
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7652
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
                              (display "\n")
                              (assq k x7652)))))))))
                   g7647)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
                        (display "\n")
                        (= 0 x7654)))))
                   g7653)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x7657))))
                    (g7656
                     (letrec*
                      ((x-cnd7658
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7658
                        ""
                        (letrec*
                         ((x7661
                           (letrec*
                            ((x7662
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x7662))))
                          (x7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x7660)))))
                         (begin
                           (write '(funapp 811 26))
                           (display "\n")
                           (string-append x7661 x7659)))))))
                   g7656)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7666))))
                    (g7664
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x7667))))
                    (g7665
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7668
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7668))))
                   g7665)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7670
                        (letrec*
                         ((x7671
                           (letrec*
                            ((x7672
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7672)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x7671)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7670)))))
                   g7669)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7676))))
                    (g7674
                     (letrec*
                      ((x7677
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x7677))))
                    (g7675
                     (letrec*
                      ((x-cnd7678
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7678
                        x
                        (letrec*
                         ((x7680
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x7679
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x7680 x7679)))))))
                   g7675)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7681
                     (begin (write '(funapp 850 49)) (display "\n") '())))
                   g7681)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((x-cnd7683
                        (letrec*
                         ((x7684 #\a))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x7684)))))
                      (if x-cnd7683
                        (letrec*
                         ((x7685 #\z))
                         (begin
                           (write '(funapp 859 48))
                           (display "\n")
                           (char-ci<=? c x7685)))
                        #f))))
                   g7682)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7687
                           (begin
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
                           (display "\n")
                           (= x7687 9)))))
                      (letrec*
                       ((g7688
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7689
                                 (begin
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x7689 10)))))
                            (letrec*
                             ((g7690
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7691
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
                                    (display "\n")
                                    (= x7691 32))))))
                             g7690)))))
                       g7688))))
                   g7686)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7692
                     (letrec*
                      ((x7693
                        (letrec*
                         ((x7694
                           (begin
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x7694)))))
                      (begin
                        (write '(funapp 894 23))
                        (display "\n")
                        (cdr x7693)))))
                   g7692)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7695
                     (letrec*
                      ((x7697
                        (begin
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x7697))))
                    (g7696
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g7696)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7698
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g7698)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7699 #f)) g7699)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7700
                     (letrec*
                      ((x7701
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
                        (display "\n")
                        (cdr x7701)))))
                   g7700)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7702
                     (letrec*
                      ((x7704
                        (begin
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x7704))))
                    (g7703
                     (letrec*
                      ((x-cnd7705
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7705
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g7703)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7706
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7707
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7708
                                 (begin
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7708
                                 (begin
                                   (write '(funapp 935 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7709
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7710
                                       (begin
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7710
                                       (letrec*
                                        ((x-cnd7711
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7711
                                          (begin
                                            (write '(funapp 947 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7712
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7713
                                             (begin
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7713
                                             (letrec*
                                              ((x-cnd7714
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7714
                                                (letrec*
                                                 ((x-cnd7715
                                                   (letrec*
                                                    ((x7717
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7716
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x7717 x7716)))))
                                                 (if x-cnd7715
                                                   (letrec*
                                                    ((x7719
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7718
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
                                                      (display "\n")
                                                      (equal? x7719 x7718)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7720
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7721
                                                (begin
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7721
                                                (letrec*
                                                 ((x-cnd7722
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7722
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7723
                                                       (letrec*
                                                        ((x-cnd7724
                                                          (letrec*
                                                           ((x7725
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  993
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 995 60))
                                                             (display "\n")
                                                             (= x7725 n)))))
                                                        (if x-cnd7724
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7726
                                                                  (letrec*
                                                                   ((val7256
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1004
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7727
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7728
                                                                           (letrec*
                                                                            ((x7730
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1013
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7729
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1017
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1020
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7730
                                                                               x7729)))))
                                                                         (if x-cnd7728
                                                                           (letrec*
                                                                            ((x7731
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1026
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 1029
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7731)))
                                                                           #f)))))
                                                                    g7727))))
                                                                g7726))))
                                                           (letrec*
                                                            ((g7732
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7732))
                                                          #f))))
                                                     g7723))
                                                   #f))
                                                #f)))))
                                         g7720)))))
                                   g7712)))))
                             g7709)))))
                       g7707))))
                   g7706)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7734
                        (letrec*
                         ((x7735
                           (letrec*
                            ((x7736
                              (begin
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x7736)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x7735)))))
                      (begin
                        (write '(funapp 1055 23))
                        (display "\n")
                        (cdr x7734)))))
                   g7733)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7738
                        (letrec*
                         ((x7739
                           (letrec*
                            ((x7740
                              (begin
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x7740)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x7739)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x7738)))))
                   g7737)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7741
                     (begin
                       (write '(funapp 1068 53))
                       (display "\n")
                       (eq? x y))))
                   g7741)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x7745))))
                    (g7743
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x7746))))
                    (g7744
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1078 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1079 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7747
                         (begin
                           (write '(funapp 1081 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7748 res))
                       g7748))))
                   g7744)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7749
                     (begin
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
                          (display "\n")
                          '())))))
                   g7749)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7753))))
                    (g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7754))))
                    (g7752
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7755
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7755))))
                   g7752)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (letrec*
                         ((x7758
                           (begin
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x7758)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (cdr x7757)))))
                   g7756)))
               (cdaddr
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
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x7762)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x7761)))))
                      (begin
                        (write '(funapp 1114 23))
                        (display "\n")
                        (cdr x7760)))))
                   g7759)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7764
                        (letrec*
                         ((x7765
                           (begin
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x7765)))))
                      (begin
                        (write '(funapp 1123 23))
                        (display "\n")
                        (car x7764)))))
                   g7763)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7767
                        (letrec*
                         ((x7768
                           (begin
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x7768)))))
                      (begin
                        (write '(funapp 1131 23))
                        (display "\n")
                        (car x7767)))))
                   g7766)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x7773))))
                    (g7771
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
                        (display "\n")
                        (not x7774)))))
                   g7771)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x7778)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x7777)))))
                      (begin
                        (write '(funapp 1150 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x7781))))
                    (g7780
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g7780)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7782
                     (begin
                       (write '(funapp 1158 53))
                       (display "\n")
                       (memq e l))))
                   g7782)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7784
                        (letrec*
                         ((x7785
                           (begin
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x7785)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x7784)))))
                   g7783)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7786
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g7786)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x7789))))
                    (g7788
                     (letrec*
                      ((x-cnd7790
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7790
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x7794))))
                          (x7791
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x7792)))))
                         (begin
                           (write '(funapp 1180 26))
                           (display "\n")
                           (append x7793 x7791)))))))
                   g7788)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7796
                        (letrec*
                         ((x7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x7798)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x7797)))))
                      (begin
                        (write '(funapp 1191 23))
                        (display "\n")
                        (car x7796)))))
                   g7795)))
               (cddadr
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
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x7802)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x7801)))))
                      (begin
                        (write '(funapp 1202 23))
                        (display "\n")
                        (cdr x7800)))))
                   g7799)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x7805))))
                    (g7804
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
                        (display "\n")
                        (= 1 x7806)))))
                   g7804)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7808
                        (letrec*
                         ((x7809
                           (letrec*
                            ((x7810
                              (begin
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x7810)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x7809)))))
                      (begin
                        (write '(funapp 1219 23))
                        (display "\n")
                        (car x7808)))))
                   g7807)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x-cnd7816
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7816
                        (letrec*
                         ((g7817
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g7817)
                        (letrec*
                         ((x-cnd7818
                           (letrec*
                            ((x7819
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x7819)))))
                         (if x-cnd7818
                           (letrec*
                            ((g7820
                              (letrec*
                               ((x7821
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x7821)))))
                            g7820)
                           (letrec*
                            ((x-cnd7822
                              (letrec*
                               ((x7823
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x7823)))))
                            (if x-cnd7822
                              (letrec*
                               ((g7824
                                 (letrec*
                                  ((x7826
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x7825
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x7826 x7825)))))
                               g7824)
                              (letrec*
                               ((x-cnd7827
                                 (letrec*
                                  ((x7828
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x7828)))))
                               (if x-cnd7827
                                 (letrec*
                                  ((g7829
                                    (letrec*
                                     ((x7832
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x7831
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7830
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x7832 x7831 x7830)))))
                                  g7829)
                                 (letrec*
                                  ((x-cnd7833
                                    (letrec*
                                     ((x7834
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x7834)))))
                                  (if x-cnd7833
                                    (letrec*
                                     ((g7835
                                       (letrec*
                                        ((x7839
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x7838
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7837
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7836
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
                                          (display "\n")
                                          (proc x7839 x7838 x7837 x7836)))))
                                     g7835)
                                    (letrec*
                                     ((x-cnd7840
                                       (letrec*
                                        ((x7841
                                          (letrec*
                                           ((x7842
                                             (begin
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x7842)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x7841)))))
                                     (if x-cnd7840
                                       (letrec*
                                        ((g7843
                                          (letrec*
                                           ((x7849
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x7848
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7847
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7846
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7844
                                             (letrec*
                                              ((x7845
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x7845)))))
                                           (begin
                                             (write '(funapp 1299 44))
                                             (display "\n")
                                             (proc
                                              x7849
                                              x7848
                                              x7847
                                              x7846
                                              x7844)))))
                                        g7843)
                                       (letrec*
                                        ((x-cnd7850
                                          (letrec*
                                           ((x7851
                                             (letrec*
                                              ((x7852
                                                (begin
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x7852)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x7851)))))
                                        (if x-cnd7850
                                          (letrec*
                                           ((g7853
                                             (letrec*
                                              ((x7861
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7860
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7859
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7858
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7856
                                                (letrec*
                                                 ((x7857
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x7857))))
                                               (x7854
                                                (letrec*
                                                 ((x7855
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x7855)))))
                                              (begin
                                                (write '(funapp 1330 47))
                                                (display "\n")
                                                (proc
                                                 x7861
                                                 x7860
                                                 x7859
                                                 x7858
                                                 x7856
                                                 x7854)))))
                                           g7853)
                                          (letrec*
                                           ((x-cnd7862
                                             (letrec*
                                              ((x7863
                                                (letrec*
                                                 ((x7864
                                                   (begin
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x7864)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x7863)))))
                                           (if x-cnd7862
                                             (letrec*
                                              ((g7865
                                                (letrec*
                                                 ((x7875
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7874
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7873
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7872
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7870
                                                   (letrec*
                                                    ((x7871
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x7871))))
                                                  (x7868
                                                   (letrec*
                                                    ((x7869
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x7869))))
                                                  (x7866
                                                   (letrec*
                                                    ((x7867
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x7867)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
                                                   (display "\n")
                                                   (proc
                                                    x7875
                                                    x7874
                                                    x7873
                                                    x7872
                                                    x7870
                                                    x7868
                                                    x7866)))))
                                              g7865)
                                             (letrec*
                                              ((g7876
                                                (begin
                                                  (write '(funapp 1377 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7876)))))))))))))))))))
                   g7813)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x7879))))
                    (g7878
                     (letrec*
                      ((x-cnd7880
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7880
                        #f
                        (letrec*
                         ((x-cnd7881
                           (letrec*
                            ((x7882
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x7882 e)))))
                         (if x-cnd7881
                           l
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
                              (display "\n")
                              (member e x7883)))))))))
                   g7878)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7885
                        (letrec*
                         ((x7886
                           (letrec*
                            ((x7887
                              (begin
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x7887)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x7886)))))
                      (begin
                        (write '(funapp 1405 23))
                        (display "\n")
                        (cdr x7885)))))
                   g7884)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7889
                        (letrec*
                         ((x7890
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x7891)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x7890)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x7889)))))
                   g7888)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7892
                     (begin
                       (write '(funapp 1418 53))
                       (display "\n")
                       (random 42))))
                   g7892)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x7895))))
                    (g7894
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g7894)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7897
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7897))))
                   g7896)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7899
                        (begin
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
                        (display "\n")
                        (car x7899)))))
                   g7898)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7901
                           (begin
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7901
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x7902)))
                           #f))))
                      (letrec*
                       ((g7903
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
                             (display "\n")
                             (null? l)))))
                       g7903))))
                   g7900)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7905
                        (letrec*
                         ((x7906
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x7907)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x7906)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (cdr x7905)))))
                   g7904)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x-cnd7909
                        (letrec*
                         ((x7910 #\0))
                         (begin
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x7910 c)))))
                      (if x-cnd7909
                        (letrec*
                         ((x7911 #\9))
                         (begin
                           (write '(funapp 1474 48))
                           (display "\n")
                           (char<=? c x7911)))
                        #f))))
                   g7908)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x7914))))
                    (g7913
                     (letrec*
                      ((x-cnd7915
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7915
                        #f
                        (letrec*
                         ((x-cnd7916
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x7917 k)))))
                         (if x-cnd7916
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x7918)))))))))
                   g7913)))
               (not (lambda (x) (letrec* ((g7919 (if x #f #t))) g7919)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7920
                     (begin
                       (write '(funapp 1496 50))
                       (display "\n")
                       (append l1 l2))))
                   g7920)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x7923))))
                    (g7922
                     (letrec*
                      ((x-cnd7924
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7924
                        #f
                        (letrec*
                         ((x-cnd7925
                           (letrec*
                            ((x7926
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x7926 e)))))
                         (if x-cnd7925
                           l
                           (letrec*
                            ((x7927
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
                              (display "\n")
                              (memq e x7927)))))))))
                   g7922)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7929
                        (letrec*
                         ((x7930
                           (letrec*
                            ((x7931
                              (begin
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x7931)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x7930)))))
                      (begin
                        (write '(funapp 1522 23))
                        (display "\n")
                        (car x7929)))))
                   g7928)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
                        (display "\n")
                        (assert x7934))))
                    (g7933
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7935
                             (letrec*
                              ((x-cnd7936
                                (begin
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7936
                                0
                                (letrec*
                                 ((x7937
                                   (letrec*
                                    ((x7938
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x7938)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x7937)))))))
                           g7935))))
                      (letrec*
                       ((g7939
                         (begin
                           (write '(funapp 1543 40))
                           (display "\n")
                           (rec l))))
                       g7939))))
                   g7933)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7944))))
                    (g7942
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7945
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7945))))
                   g7942)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
                        (display "\n")
                        (not x7947)))))
                   g7946)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7949
                        (letrec*
                         ((x7950
                           (begin
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x7950)))))
                      (begin
                        (write '(funapp 1568 23))
                        (display "\n")
                        (cdr x7949)))))
                   g7948)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x7953))))
                    (g7952
                     (letrec*
                      ((x-cnd7954
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7954
                        #f
                        (letrec*
                         ((x-cnd7955
                           (letrec*
                            ((x7956
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x7956 k)))))
                         (if x-cnd7955
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7957
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
                              (display "\n")
                              (assoc k x7957)))))))))
                   g7952)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
                        (display "\n")
                        (car x7959)))))
                   g7958)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x7964))))
                    (g7962
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
                        (display "\n")
                        (not x7965)))))
                   g7962)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7967
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7967))))
                   g7966)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x7971))))
                    (g7969
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x7972))))
                    (g7970
                     (letrec*
                      ((x-cnd7973
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7973
                        #t
                        (letrec*
                         ((x-cnd7974
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7974
                           (letrec*
                            ((g7975
                              (letrec*
                               ((x7977
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x7977))))
                             (g7976
                              (letrec*
                               ((x7978
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x7978)))))
                            g7976)
                           (begin
                             (write '(funapp 1626 27))
                             (display "\n")
                             '())))))))
                   g7970)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x7981))))
                    (g7980
                     (letrec*
                      ((x-cnd7982
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7982
                        (begin
                          (write '(funapp 1633 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7980)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x7986
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7986))))
                    (g7984
                     (letrec*
                      ((x7987
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x7987))))
                    (g7985
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7988
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7988))))
                   g7985)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x7990
                        (letrec*
                         ((x7991
                           (letrec*
                            ((x7992
                              (begin
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x7992)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x7991)))))
                      (begin
                        (write '(funapp 1656 23))
                        (display "\n")
                        (car x7990)))))
                   g7989)))
               (newline (lambda () (letrec* ((g7993 #f)) g7993)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x7996
                        (letrec*
                         ((x7997
                           (begin
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x7997))))
                       (x7995
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
                        (display "\n")
                        (/ x7996 x7995)))))
                   g7994)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x8002
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x8002))))
                    (g7999
                     (letrec*
                      ((x8003
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x8003))))
                    (g8000
                     (letrec*
                      ((x8004
                        (letrec*
                         ((x8005
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x8005)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x8004))))
                    (g8001
                     (letrec*
                      ((x-cnd8006
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8006
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8008
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x8007
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
                           (display "\n")
                           (list-ref x8008 x8007)))))))
                   g8001)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8009
                     (letrec*
                      ((x-cnd8010
                        (begin
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8010
                        a
                        (letrec*
                         ((x8011
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x8011)))))))
                   g8009)))
               (STATE/C
                (lambda (g7405 g7406 g7407)
                  (letrec*
                   ((g8012
                     (letrec*
                      ((x-cnd8013
                        (begin
                          (write '(funapp 1703 25))
                          (display "\n")
                          ((lambda (v7404)
                             (letrec*
                              ((g8014
                                (letrec*
                                 ((x-cnd8015
                                   (begin
                                     (write '(funapp 1707 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1707 48))
                                        (display "\n")
                                        'init)
                                      v7404))))
                                 (if x-cnd8015
                                   #t
                                   (letrec*
                                    ((x-cnd8016
                                      (begin
                                        (write '(funapp 1711 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1711 51))
                                           (display "\n")
                                           'opened)
                                         v7404))))
                                    (if x-cnd8016
                                      #t
                                      (letrec*
                                       ((x-cnd8017
                                         (begin
                                           (write '(funapp 1715 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1715 54))
                                              (display "\n")
                                              'closed)
                                            v7404))))
                                       (if x-cnd8017
                                         #t
                                         (begin
                                           (write '(funapp 1718 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1718 44))
                                              (display "\n")
                                              'ignore)
                                            v7404))))))))))
                              g8014))
                           g7407))))
                      (if x-cnd8013
                        g7407
                        (begin
                          (write '(blame g7405 1723 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7405)))))))
                   g8012)))
               (loop
                (lambda ()
                  (letrec*
                   ((g8018
                     (begin (write '(funapp 1734 50)) (display "\n") (loop))))
                   g8018)))
               (readit
                (lambda (st)
                  (letrec*
                   ((g8019
                     (letrec*
                      ((x-cnd8020
                        (begin
                          (write '(funapp 1740 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1740 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd8020
                        (begin
                          (write '(funapp 1741 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1741 44))
                          (display "\n")
                          'ignore)))))
                   g8019)))
               (read_
                (lambda (x st)
                  (letrec*
                   ((g8021
                     (if x
                       (begin
                         (write '(funapp 1745 42))
                         (display "\n")
                         (readit st))
                       st)))
                   g8021)))
               (closeit
                (lambda (st)
                  (letrec*
                   ((g8022
                     (letrec*
                      ((x-cnd8023
                        (begin
                          (write '(funapp 1751 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1751 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd8023
                        (letrec*
                         ((g8024
                           (begin
                             (write '(funapp 1753 41))
                             (display "\n")
                             'closed)))
                         g8024)
                        (letrec*
                         ((x-cnd8025
                           (begin
                             (write '(funapp 1755 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1755 45))
                                (display "\n")
                                'ignore)
                              st))))
                         (if x-cnd8025
                           (letrec*
                            ((g8026
                              (begin
                                (write '(funapp 1757 44))
                                (display "\n")
                                'ignore)))
                            g8026)
                           (letrec*
                            ((g8027
                              (begin
                                (write '(funapp 1758 45))
                                (display "\n")
                                (loop)))
                             (g8028 0))
                            g8028)))))))
                   g8022)))
               (close_
                (lambda (x st)
                  (letrec*
                   ((g8029
                     (if x
                       (begin
                         (write '(funapp 1762 42))
                         (display "\n")
                         (closeit st))
                       st)))
                   g8029)))
               (f
                (lambda (x y st)
                  (letrec*
                   ((g8030
                     (letrec*
                      ((x8032
                        (begin
                          (write '(funapp 1766 45))
                          (display "\n")
                          (close_ x st))))
                      (begin
                        (write '(funapp 1766 61))
                        (display "\n")
                        (close_ y x8032))))
                    (g8031
                     (letrec*
                      ((x8033
                        (letrec*
                         ((x8034
                           (begin
                             (write '(funapp 1770 42))
                             (display "\n")
                             (read_ x st))))
                         (begin
                           (write '(funapp 1770 57))
                           (display "\n")
                           (read_ y x8034)))))
                      (begin
                        (write '(funapp 1771 23))
                        (display "\n")
                        (f x y x8033)))))
                   g8031)))
               (next
                (lambda (st)
                  (letrec*
                   ((g8035
                     (letrec*
                      ((x-cnd8036
                        (begin
                          (write '(funapp 1778 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1778 42))
                             (display "\n")
                             'init)
                           st))))
                      (if x-cnd8036
                        (begin
                          (write '(funapp 1779 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1779 44))
                          (display "\n")
                          'ignore)))))
                   g8035)))
               (g
                (lambda (b3 x st)
                  (letrec*
                   ((g8037
                     (letrec*
                      ((x-cnd8038
                        (begin
                          (write '(funapp 1786 35))
                          (display "\n")
                          (> b3 0))))
                      (if x-cnd8038
                        (letrec*
                         ((x8039
                           (begin
                             (write '(funapp 1788 42))
                             (display "\n")
                             (next st))))
                         (begin
                           (write '(funapp 1788 54))
                           (display "\n")
                           (f x #t x8039)))
                        (begin
                          (write '(funapp 1789 25))
                          (display "\n")
                          (f x #f st))))))
                   g8037)))
               (main
                (lambda (b2 b3)
                  (letrec*
                   ((g8040
                     (letrec*
                      ((x-cnd8042
                        (begin
                          (write '(funapp 1796 35))
                          (display "\n")
                          (> b2 0))))
                      (if x-cnd8042
                        (begin
                          (write '(funapp 1797 37))
                          (display "\n")
                          (g
                           b3
                           #t
                           (begin
                             (write '(funapp 1797 45))
                             (display "\n")
                             'opened)))
                        (begin
                          (write '(funapp 1797 55))
                          (display "\n")
                          (g
                           b3
                           #f
                           (begin
                             (write '(funapp 1797 63))
                             (display "\n")
                             'init))))))
                    (g8041
                     (begin (write '(funapp 1798 27)) (display "\n") 'unit)))
                   g8041))))
              (letrec*
               ((g8043
                 (begin
                   (write '(funapp 1802 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1803 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8046
                          (letrec*
                           ((xj7408
                             (begin
                               (write '(funapp 1807 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1807 37))
                                  (display "\n")
                                  'module))))
                            (xk7409
                             (begin
                               (write '(funapp 1807 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1807 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8047
                              (begin
                                (write '(funapp 1810 27))
                                (display "\n")
                                ((lambda (j7412 k7413 f7414)
                                   (letrec*
                                    ((g8048
                                      (lambda (g7410 g7411)
                                        (letrec*
                                         ((g8049
                                           (letrec*
                                            ((x8050
                                              (letrec*
                                               ((x8052
                                                 (begin
                                                   (write '(funapp 1820 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7412
                                                    k7413
                                                    g7410)))
                                                (x8051
                                                 (begin
                                                   (write '(funapp 1822 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7412
                                                    k7413
                                                    g7411))))
                                               (begin
                                                 (write '(funapp 1823 42))
                                                 (display "\n")
                                                 (f7414 x8052 x8051)))))
                                            (begin
                                              (write '(funapp 1824 39))
                                              (display "\n")
                                              (any/c j7412 k7413 x8050)))))
                                         g8049))))
                                    g8048))
                                 xj7408
                                 xk7409
                                 main))))
                            g8047)))
                         (x8045 (input))
                         (x8044 (input)))
                        (begin
                          (write '(funapp 1833 21))
                          (display "\n")
                          (x8046 x8045 x8044)))))))))
               g8043))))
           g7443))))
       g7426)))
    g7425)))
