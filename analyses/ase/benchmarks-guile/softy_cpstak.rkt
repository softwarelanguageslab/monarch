(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7410 #t)) g7410)))
    (meta (lambda (v) (letrec* ((g7411 v)) g7411)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7412
          (letrec*
           ((g7413
             (letrec*
              ((x-e7414 lst))
              (letrec*
               ((v1742 x-e7414))
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
                   ((x-cnd7415
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7415
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
           g7413)))
        g7412)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7416 (lambda (v) (letrec* ((g7417 v)) g7417)))) g7416)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7418
          (letrec*
           ((x7419 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7419)))))
        g7418))))
   (letrec*
    ((g7420
      (letrec*
       ((g7421
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7422
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7422)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7423
                 (letrec*
                  ((x7425
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7425))))
                (g7424
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7426
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7427 (if val7245 val7245 #f))) g7427)))))
                   g7426))))
               g7424)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7428
                 (letrec*
                  ((x7430
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7430))))
                (g7429
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7431
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7432 (if val7247 val7247 #f))) g7432)))))
                   g7431))))
               g7429)))
           (>
            (lambda (x y)
              (letrec*
               ((g7433
                 (letrec*
                  ((x7435
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7435))))
                (g7434
                 (letrec*
                  ((x7436
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7436)))))
               g7434)))
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
           ((g7437 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7438
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7439
                     (lambda (k j lst)
                       (letrec*
                        ((g7440
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7441
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7441))
                             lst))))
                        g7440))))
                   g7439)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7443
                        g7265
                        (begin
                          (write '(blame g7263 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7442)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7445
                        g7268
                        (begin
                          (write '(blame g7266 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7444)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7447
                        g7271
                        (begin
                          (write '(blame g7269 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7446)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7450 #t)) g7450)) g7274))))
                      (if x-cnd7449
                        g7274
                        (begin
                          (write '(blame g7272 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7448)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7453 #t)) g7453)) g7277))))
                      (if x-cnd7452
                        g7277
                        (begin
                          (write '(blame g7275 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7451)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7455
                        g7280
                        (begin
                          (write '(blame g7278 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7454)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7456
                     (lambda (k j v)
                       (letrec*
                        ((g7457
                          (letrec*
                           ((x7460
                             (letrec*
                              ((x7461
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7461))))
                            (x7458
                             (letrec*
                              ((x7459
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7459)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7460 x7458)))))
                        g7457))))
                   g7456)))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x-cnd7463
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7463
                        g7283
                        (begin
                          (write '(blame g7281 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7462)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x-cnd7465
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7465
                        g7286
                        (begin
                          (write '(blame g7284 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7464)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x-cnd7467
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7467
                        g7289
                        (begin
                          (write '(blame g7287 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7466)))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x-cnd7469
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7292))))
                      (if x-cnd7469
                        g7292
                        (begin
                          (write '(blame g7290 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7468)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7470
                     (lambda (k j v)
                       (letrec*
                        ((g7471
                          (letrec*
                           ((x-cnd7472
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7472
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7471))))
                   g7470)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7473
                     (lambda (k j v)
                       (letrec*
                        ((g7474
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7475
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7475))))
                        g7474))))
                   g7473)))
               (null?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x-cnd7477
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7295))))
                      (if x-cnd7477
                        g7295
                        (begin
                          (write '(blame g7293 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7476)))
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
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7480
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7484
                                (letrec*
                                 ((x7485
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7485))))
                               (x7481
                                (letrec*
                                 ((x7483
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7482
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7483 k j x7482)))))
                              (begin
                                (write '(funapp 267 31))
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
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7488)))))
                   g7487)))
               (nonzero?/c
                (lambda (g7296 g7297 g7298)
                  (letrec*
                   ((g7489
                     (letrec*
                      ((x-cnd7490
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7491
                                (letrec*
                                 ((x7492
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7492)))))
                              g7491))
                           g7298))))
                      (if x-cnd7490
                        g7298
                        (begin
                          (write '(blame g7296 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7296)))))))
                   g7489)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7493
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7494
                          (letrec*
                           ((x-cnd7495
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7496
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7496))
                                g7301))))
                           (if x-cnd7495
                             g7301
                             (begin
                               (write '(blame g7299 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7494))))
                   g7493)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7497
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7498
                          (letrec*
                           ((x-cnd7499
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7500
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7500))
                                g7304))))
                           (if x-cnd7499
                             g7304
                             (begin
                               (write '(blame g7302 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7498))))
                   g7497)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7501
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7502
                          (letrec*
                           ((x-cnd7503
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7504
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7504))
                                g7307))))
                           (if x-cnd7503
                             g7307
                             (begin
                               (write '(blame g7305 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7502))))
                   g7501)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7505
                     (lambda (g7308 g7309 g7310)
                       (letrec*
                        ((g7506
                          (letrec*
                           ((x-cnd7507
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7508
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7508))
                                g7310))))
                           (if x-cnd7507
                             g7310
                             (begin
                               (write '(blame g7308 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7506))))
                   g7505)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7509
                     (lambda (g7311 g7312 g7313)
                       (letrec*
                        ((g7510
                          (letrec*
                           ((x-cnd7511
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7512
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7512))
                                g7313))))
                           (if x-cnd7511
                             g7313
                             (begin
                               (write '(blame g7311 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7311)))))))
                        g7510))))
                   g7509)))
               (meta (lambda (v) (letrec* ((g7513 v)) g7513)))
               (+
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7514
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7516
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7517
                                 (letrec*
                                  ((x7518
                                    (letrec*
                                     ((x7520
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7519
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7320 x7520 x7519)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7518)))))
                               g7517))))
                          g7516))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7515
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7515))))))
                  g7514)))
               (-
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7521
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7523
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7524
                                 (letrec*
                                  ((x7525
                                    (letrec*
                                     ((x7527
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7526
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7327 x7527 x7526)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7525)))))
                               g7524))))
                          g7523))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7522
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7522))))))
                  g7521)))
               (*
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7528
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7530
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7531
                                 (letrec*
                                  ((x7532
                                    (letrec*
                                     ((x7534
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7533
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7334 x7534 x7533)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7332 k7333 x7532)))))
                               g7531))))
                          g7530))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7529
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7529))))))
                  g7528)))
               (<
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7535
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7537
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7538
                                 (letrec*
                                  ((x7539
                                    (letrec*
                                     ((x7541
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7540
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7341 x7541 x7540)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7539)))))
                               g7538))))
                          g7537))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7536
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7536))))))
                  g7535)))
               (>
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7542
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7544
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7545
                                 (letrec*
                                  ((x7546
                                    (letrec*
                                     ((x7548
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7547
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7348 x7548 x7547)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7546)))))
                               g7545))))
                          g7544))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7543
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7543))))))
                  g7542)))
               (<=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7549
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7551
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7552
                                 (letrec*
                                  ((x7553
                                    (letrec*
                                     ((x7555
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7554
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7355 x7555 x7554)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7553)))))
                               g7552))))
                          g7551))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7550
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7550))))))
                  g7549)))
               (>=
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7556
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7558
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7559
                                 (letrec*
                                  ((x7560
                                    (letrec*
                                     ((x7562
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7561
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7362 x7562 x7561)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7360 k7361 x7560)))))
                               g7559))))
                          g7558))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7557
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7557))))))
                  g7556)))
               (add1
                (lambda (x)
                  (letrec*
                   ((g7563
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7563)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7564
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7566
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7567
                                 (letrec*
                                  ((x7568
                                    (letrec*
                                     ((x7570
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7569
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7369 x7570 x7569)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7568)))))
                               g7567))))
                          g7566))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7565
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7565))))))
                  g7564)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7571
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7573
                            (lambda (g7372)
                              (letrec*
                               ((g7574
                                 (letrec*
                                  ((x7575
                                    (letrec*
                                     ((x7576
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7375 x7576)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7575)))))
                               g7574))))
                          g7573))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7572
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7572))))))
                  g7571)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7577
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7579
                            (lambda (g7378)
                              (letrec*
                               ((g7580
                                 (letrec*
                                  ((x7581
                                    (letrec*
                                     ((x7582
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7381 x7582)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7581)))))
                               g7580))))
                          g7579))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7578
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7578))))))
                  g7577)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7583
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7585
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7586
                                 (letrec*
                                  ((x7587
                                    (letrec*
                                     ((x7589
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7588
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7388 x7589 x7588)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7587)))))
                               g7586))))
                          g7585))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7584
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7584))))))
                  g7583)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7590
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7592
                            (lambda (g7391)
                              (letrec*
                               ((g7593
                                 (letrec*
                                  ((x7594
                                    (letrec*
                                     ((x7595
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7394 x7595)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7594)))))
                               g7593))))
                          g7592))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7591
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7591))))))
                  g7590)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7596
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7598
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7599
                                 (letrec*
                                  ((x7600
                                    (letrec*
                                     ((x7602
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7601
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7401 x7602 x7601)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7600)))))
                               g7599))))
                          g7598))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7597
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7597))))))
                  g7596)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7604
                        (letrec*
                         ((x7605
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7605)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7604)))))
                   g7603)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7609
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7609))))
                    (g7607
                     (letrec*
                      ((x7610
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7610))))
                    (g7608
                     (letrec*
                      ((x-cnd7611
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7611
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7614
                           (letrec*
                            ((x7615
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7615))))
                          (x7612
                           (letrec*
                            ((x7613
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7613)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7614 x7612)))))))
                   g7608)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7617)))))
                   g7616)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7619
                        (letrec*
                         ((x7620
                           (letrec*
                            ((x7621
                              (begin
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7621)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7620)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7619)))))
                   g7618)))
               (cdadar
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
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7625)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7624)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7623)))))
                   g7622)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7629))))
                    (g7627
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7630))))
                    (g7628
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
                       ((g7631
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7632 res))
                       g7632))))
                   g7628)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (letrec*
                         ((x7635
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7635)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7634)))))
                   g7633)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7637
                        (letrec*
                         ((x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7639)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7638)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7637)))))
                   g7636)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7642))))
                    (g7641
                     (letrec*
                      ((x-cnd7643
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7643
                        #f
                        (letrec*
                         ((x-cnd7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7645 k)))))
                         (if x-cnd7644
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7646
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7646)))))))))
                   g7641)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7648)))))
                   g7647)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7651))))
                    (g7650
                     (letrec*
                      ((x-cnd7652
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7652
                        ""
                        (letrec*
                         ((x7655
                           (letrec*
                            ((x7656
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7656))))
                          (x7653
                           (letrec*
                            ((x7654
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7654)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7655 x7653)))))))
                   g7650)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7661))))
                    (g7659
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7662
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7662))))
                   g7659)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7664
                        (letrec*
                         ((x7665
                           (letrec*
                            ((x7666
                              (begin
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7666)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7665)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7664)))))
                   g7663)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7670))))
                    (g7668
                     (letrec*
                      ((x7671
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7671))))
                    (g7669
                     (letrec*
                      ((x-cnd7672
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7672
                        x
                        (letrec*
                         ((x7674
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7673
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7674 x7673)))))))
                   g7669)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7675
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7675)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((x-cnd7677
                        (letrec*
                         ((x7678 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7678)))))
                      (if x-cnd7677
                        (letrec*
                         ((x7679 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7679)))
                        #f))))
                   g7676)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7681
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7681 9)))))
                      (letrec*
                       ((g7682
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7683
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7683 10)))))
                            (letrec*
                             ((g7684
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7685
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7685 32))))))
                             g7684)))))
                       g7682))))
                   g7680)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((x7687
                        (letrec*
                         ((x7688
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7688)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7687)))))
                   g7686)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x7691
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7691))))
                    (g7690
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7690)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7692
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7692)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7693 #f)) g7693)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7694
                     (letrec*
                      ((x7695
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7695)))))
                   g7694)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7696
                     (letrec*
                      ((x7698
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7698))))
                    (g7697
                     (letrec*
                      ((x-cnd7699
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7699
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7697)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7700
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7701
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7702
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7702
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7703
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7704
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7704
                                       (letrec*
                                        ((x-cnd7705
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7705
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7706
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7707
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7707
                                             (letrec*
                                              ((x-cnd7708
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7708
                                                (letrec*
                                                 ((x-cnd7709
                                                   (letrec*
                                                    ((x7711
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7710
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7711 x7710)))))
                                                 (if x-cnd7709
                                                   (letrec*
                                                    ((x7713
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7712
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7713 x7712)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7714
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7715
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7715
                                                (letrec*
                                                 ((x-cnd7716
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7716
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7717
                                                       (letrec*
                                                        ((x-cnd7718
                                                          (letrec*
                                                           ((x7719
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
                                                             (= x7719 n)))))
                                                        (if x-cnd7718
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7720
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
                                                                    ((g7721
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7722
                                                                           (letrec*
                                                                            ((x7724
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
                                                                             (x7723
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
                                                                               x7724
                                                                               x7723)))))
                                                                         (if x-cnd7722
                                                                           (letrec*
                                                                            ((x7725
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
                                                                               x7725)))
                                                                           #f)))))
                                                                    g7721))))
                                                                g7720))))
                                                           (letrec*
                                                            ((g7726
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7726))
                                                          #f))))
                                                     g7717))
                                                   #f))
                                                #f)))))
                                         g7714)))))
                                   g7706)))))
                             g7703)))))
                       g7701))))
                   g7700)))
               (cdaaar
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
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7730)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7729)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x7728)))))
                   g7727)))
               (caaddr
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
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7734)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7733)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7732)))))
                   g7731)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7735
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g7735)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7739))))
                    (g7737
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7740))))
                    (g7738
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
                       ((g7741
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7742 res))
                       g7742))))
                   g7738)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7743
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g7743)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7747))))
                    (g7745
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7748))))
                    (g7746
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7749
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7749))))
                   g7746)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7751
                        (letrec*
                         ((x7752
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7752)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7751)))))
                   g7750)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7754
                        (letrec*
                         ((x7755
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7756)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7755)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x7754)))))
                   g7753)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7758
                        (letrec*
                         ((x7759
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x7759)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x7758)))))
                   g7757)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7761
                        (letrec*
                         ((x7762
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x7762)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x7761)))))
                   g7760)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7766))))
                    (g7764
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7767))))
                    (g7765
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x7768)))))
                   g7765)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7770
                        (letrec*
                         ((x7771
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x7772)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x7771)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x7770)))))
                   g7769)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x7775))))
                    (g7774
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g7774)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7776
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g7776)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7778
                        (letrec*
                         ((x7779
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x7779)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x7778)))))
                   g7777)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7780
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g7780)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x7783))))
                    (g7782
                     (letrec*
                      ((x-cnd7784
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7784
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x7787
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x7788))))
                          (x7785
                           (letrec*
                            ((x7786
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x7786)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x7787 x7785)))))))
                   g7782)))
               (caaadr
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
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x7792)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x7791)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x7790)))))
                   g7789)))
               (cddadr
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
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x7796)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x7795)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x7794)))))
                   g7793)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x7799))))
                    (g7798
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x7800)))))
                   g7798)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7802
                        (letrec*
                         ((x7803
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x7804)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x7803)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7802)))))
                   g7801)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x7808))))
                    (g7806
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x7809))))
                    (g7807
                     (letrec*
                      ((x-cnd7810
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7810
                        (letrec*
                         ((g7811
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g7811)
                        (letrec*
                         ((x-cnd7812
                           (letrec*
                            ((x7813
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x7813)))))
                         (if x-cnd7812
                           (letrec*
                            ((g7814
                              (letrec*
                               ((x7815
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x7815)))))
                            g7814)
                           (letrec*
                            ((x-cnd7816
                              (letrec*
                               ((x7817
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x7817)))))
                            (if x-cnd7816
                              (letrec*
                               ((g7818
                                 (letrec*
                                  ((x7820
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x7819
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x7820 x7819)))))
                               g7818)
                              (letrec*
                               ((x-cnd7821
                                 (letrec*
                                  ((x7822
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x7822)))))
                               (if x-cnd7821
                                 (letrec*
                                  ((g7823
                                    (letrec*
                                     ((x7826
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x7825
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7824
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x7826 x7825 x7824)))))
                                  g7823)
                                 (letrec*
                                  ((x-cnd7827
                                    (letrec*
                                     ((x7828
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x7828)))))
                                  (if x-cnd7827
                                    (letrec*
                                     ((g7829
                                       (letrec*
                                        ((x7833
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x7832
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7831
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7830
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x7833 x7832 x7831 x7830)))))
                                     g7829)
                                    (letrec*
                                     ((x-cnd7834
                                       (letrec*
                                        ((x7835
                                          (letrec*
                                           ((x7836
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x7836)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x7835)))))
                                     (if x-cnd7834
                                       (letrec*
                                        ((g7837
                                          (letrec*
                                           ((x7843
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x7842
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7841
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7840
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7838
                                             (letrec*
                                              ((x7839
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x7839)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x7843
                                              x7842
                                              x7841
                                              x7840
                                              x7838)))))
                                        g7837)
                                       (letrec*
                                        ((x-cnd7844
                                          (letrec*
                                           ((x7845
                                             (letrec*
                                              ((x7846
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x7846)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x7845)))))
                                        (if x-cnd7844
                                          (letrec*
                                           ((g7847
                                             (letrec*
                                              ((x7855
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7854
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7853
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7852
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7850
                                                (letrec*
                                                 ((x7851
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x7851))))
                                               (x7848
                                                (letrec*
                                                 ((x7849
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x7849)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x7855
                                                 x7854
                                                 x7853
                                                 x7852
                                                 x7850
                                                 x7848)))))
                                           g7847)
                                          (letrec*
                                           ((x-cnd7856
                                             (letrec*
                                              ((x7857
                                                (letrec*
                                                 ((x7858
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x7858)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x7857)))))
                                           (if x-cnd7856
                                             (letrec*
                                              ((g7859
                                                (letrec*
                                                 ((x7869
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7868
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7867
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7866
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7864
                                                   (letrec*
                                                    ((x7865
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x7865))))
                                                  (x7862
                                                   (letrec*
                                                    ((x7863
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x7863))))
                                                  (x7860
                                                   (letrec*
                                                    ((x7861
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x7861)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x7869
                                                    x7868
                                                    x7867
                                                    x7866
                                                    x7864
                                                    x7862
                                                    x7860)))))
                                              g7859)
                                             (letrec*
                                              ((g7870
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7870)))))))))))))))))))
                   g7807)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x7873))))
                    (g7872
                     (letrec*
                      ((x-cnd7874
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7874
                        #f
                        (letrec*
                         ((x-cnd7875
                           (letrec*
                            ((x7876
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x7876 e)))))
                         (if x-cnd7875
                           l
                           (letrec*
                            ((x7877
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x7877)))))))))
                   g7872)))
               (cddddr
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
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x7881)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x7880)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x7879)))))
                   g7878)))
               (cadddr
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
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x7885)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x7884)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x7883)))))
                   g7882)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7886
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g7886)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x7889
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x7889))))
                    (g7888
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g7888)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7891
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7891))))
                   g7890)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7893
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x7893)))))
                   g7892)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7895
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7895
                           (letrec*
                            ((x7896
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x7896)))
                           #f))))
                      (letrec*
                       ((g7897
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g7897))))
                   g7894)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7899
                        (letrec*
                         ((x7900
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x7901)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x7900)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x7899)))))
                   g7898)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x-cnd7903
                        (letrec*
                         ((x7904 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x7904 c)))))
                      (if x-cnd7903
                        (letrec*
                         ((x7905 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x7905)))
                        #f))))
                   g7902)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7908
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7908))))
                    (g7907
                     (letrec*
                      ((x-cnd7909
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7909
                        #f
                        (letrec*
                         ((x-cnd7910
                           (letrec*
                            ((x7911
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x7911 k)))))
                         (if x-cnd7910
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7912
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x7912)))))))))
                   g7907)))
               (not (lambda (x) (letrec* ((g7913 (if x #f #t))) g7913)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7914
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g7914)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7917
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x7917))))
                    (g7916
                     (letrec*
                      ((x-cnd7918
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7918
                        #f
                        (letrec*
                         ((x-cnd7919
                           (letrec*
                            ((x7920
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x7920 e)))))
                         (if x-cnd7919
                           l
                           (letrec*
                            ((x7921
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x7921)))))))))
                   g7916)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7923
                        (letrec*
                         ((x7924
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x7925)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x7924)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x7923)))))
                   g7922)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7928))))
                    (g7927
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7929
                             (letrec*
                              ((x-cnd7930
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7930
                                0
                                (letrec*
                                 ((x7931
                                   (letrec*
                                    ((x7932
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x7932)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x7931)))))))
                           g7929))))
                      (letrec*
                       ((g7933
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g7933))))
                   g7927)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7937))))
                    (g7935
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7938))))
                    (g7936
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7939
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7939))))
                   g7936)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x7941)))))
                   g7940)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7943
                        (letrec*
                         ((x7944
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x7944)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x7943)))))
                   g7942)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x7947))))
                    (g7946
                     (letrec*
                      ((x-cnd7948
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7948
                        #f
                        (letrec*
                         ((x-cnd7949
                           (letrec*
                            ((x7950
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x7950 k)))))
                         (if x-cnd7949
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7951
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x7951)))))))))
                   g7946)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x7953)))))
                   g7952)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7957))))
                    (g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7958))))
                    (g7956
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x7959)))))
                   g7956)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7961
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7961))))
                   g7960)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x7965))))
                    (g7963
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x7966))))
                    (g7964
                     (letrec*
                      ((x-cnd7967
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7967
                        #t
                        (letrec*
                         ((x-cnd7968
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7968
                           (letrec*
                            ((g7969
                              (letrec*
                               ((x7971
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x7971))))
                             (g7970
                              (letrec*
                               ((x7972
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x7972)))))
                            g7970)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g7964)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7975
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x7975))))
                    (g7974
                     (letrec*
                      ((x-cnd7976
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7976
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7974)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7977
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7980))))
                    (g7978
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7981))))
                    (g7979
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7982
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7982))))
                   g7979)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x7984
                        (letrec*
                         ((x7985
                           (letrec*
                            ((x7986
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x7986)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x7985)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x7984)))))
                   g7983)))
               (newline (lambda () (letrec* ((g7987 #f)) g7987)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7988
                     (letrec*
                      ((x7990
                        (letrec*
                         ((x7991
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x7991))))
                       (x7989
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x7990 x7989)))))
                   g7988)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7992
                     (letrec*
                      ((x7996
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x7996))))
                    (g7993
                     (letrec*
                      ((x7997
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x7997))))
                    (g7994
                     (letrec*
                      ((x7998
                        (letrec*
                         ((x7999
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x7999)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x7998))))
                    (g7995
                     (letrec*
                      ((x-cnd8000
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8000
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8002
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x8001
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x8002 x8001)))))))
                   g7995)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x-cnd8004
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8004
                        a
                        (letrec*
                         ((x8005
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8005)))))))
                   g8003)))
               (tak
                (lambda (x y z k)
                  (letrec*
                   ((g8006
                     (letrec*
                      ((x-cnd8007
                        (letrec*
                         ((x8008
                           (begin
                             (write '(funapp 1701 52))
                             (display "\n")
                             (< y x))))
                         (begin
                           (write '(funapp 1701 62))
                           (display "\n")
                           (not x8008)))))
                      (if x-cnd8007
                        (begin (write '(funapp 1703 25)) (display "\n") (k z))
                        (letrec*
                         ((x8014
                           (begin
                             (write '(funapp 1705 34))
                             (display "\n")
                             (- x 1))))
                         (begin
                           (write '(funapp 1706 26))
                           (display "\n")
                           (tak
                            x8014
                            y
                            z
                            (lambda (v1)
                              (letrec*
                               ((g8009
                                 (letrec*
                                  ((x8013
                                    (begin
                                      (write '(funapp 1714 41))
                                      (display "\n")
                                      (- y 1))))
                                  (begin
                                    (write '(funapp 1715 33))
                                    (display "\n")
                                    (tak
                                     x8013
                                     z
                                     x
                                     (lambda (v2)
                                       (letrec*
                                        ((g8010
                                          (letrec*
                                           ((x8012
                                             (begin
                                               (write '(funapp 1723 48))
                                               (display "\n")
                                               (- z 1))))
                                           (begin
                                             (write '(funapp 1724 40))
                                             (display "\n")
                                             (tak
                                              x8012
                                              x
                                              y
                                              (lambda (v3)
                                                (letrec*
                                                 ((g8011
                                                   (begin
                                                     (write '(funapp 1730 52))
                                                     (display "\n")
                                                     (tak v1 v2 v3 k))))
                                                 g8011)))))))
                                        g8010)))))))
                               g8009)))))))))
                   g8006)))
               (tak-main
                (lambda (x y z)
                  (letrec*
                   ((g8015
                     (begin
                       (write '(funapp 1739 22))
                       (display "\n")
                       (tak x y z (lambda (x) (letrec* ((g8016 x)) g8016))))))
                   g8015))))
              (letrec*
               ((g8017
                 (begin
                   (write '(funapp 1743 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1744 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8021
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1748 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1748 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1748 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1748 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8022
                              (begin
                                (write '(funapp 1751 27))
                                (display "\n")
                                ((lambda (j7407 k7408 f7409)
                                   (letrec*
                                    ((g8023
                                      (lambda (g7404 g7405 g7406)
                                        (letrec*
                                         ((g8024
                                           (letrec*
                                            ((x8025
                                              (letrec*
                                               ((x8028
                                                 (begin
                                                   (write '(funapp 1761 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7404)))
                                                (x8027
                                                 (begin
                                                   (write '(funapp 1763 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7405)))
                                                (x8026
                                                 (begin
                                                   (write '(funapp 1765 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7406))))
                                               (begin
                                                 (write '(funapp 1766 42))
                                                 (display "\n")
                                                 (f7409 x8028 x8027 x8026)))))
                                            (begin
                                              (write '(funapp 1767 39))
                                              (display "\n")
                                              (integer?/c
                                               j7407
                                               k7408
                                               x8025)))))
                                         g8024))))
                                    g8023))
                                 xj7402
                                 xk7403
                                 tak-main))))
                            g8022)))
                         (x8020 (input))
                         (x8019 (input))
                         (x8018 (input)))
                        (begin
                          (write '(funapp 1777 21))
                          (display "\n")
                          (x8021 x8020 x8019 x8018)))))))))
               g8017))))
           g7438))))
       g7421)))
    g7420)))
