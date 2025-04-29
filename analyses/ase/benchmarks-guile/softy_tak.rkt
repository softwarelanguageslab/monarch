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
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7564
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7564)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7565
                    (begin
                      (write '(funapp 552 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7567
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7568
                                 (letrec*
                                  ((x7569
                                    (letrec*
                                     ((x7571
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7570
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7369 x7571 x7570)))))
                                  (begin
                                    (write '(funapp 564 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7569)))))
                               g7568))))
                          g7567))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7566
                            (begin
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7566))))))
                  g7565)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7572
                    (begin
                      (write '(funapp 576 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7574
                            (lambda (g7372)
                              (letrec*
                               ((g7575
                                 (letrec*
                                  ((x7576
                                    (letrec*
                                     ((x7577
                                       (begin
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7375 x7577)))))
                                  (begin
                                    (write '(funapp 587 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7576)))))
                               g7575))))
                          g7574))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7573
                            (begin
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7573))))))
                  g7572)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7578
                    (begin
                      (write '(funapp 599 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7580
                            (lambda (g7378)
                              (letrec*
                               ((g7581
                                 (letrec*
                                  ((x7582
                                    (letrec*
                                     ((x7583
                                       (begin
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7381 x7583)))))
                                  (begin
                                    (write '(funapp 610 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7582)))))
                               g7581))))
                          g7580))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7579
                            (begin
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7579))))))
                  g7578)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7584
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7586
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7587
                                 (letrec*
                                  ((x7588
                                    (letrec*
                                     ((x7590
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7589
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7388 x7590 x7589)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7588)))))
                               g7587))))
                          g7586))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7585
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7585))))))
                  g7584)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7591
                    (begin
                      (write '(funapp 647 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7593
                            (lambda (g7391)
                              (letrec*
                               ((g7594
                                 (letrec*
                                  ((x7595
                                    (letrec*
                                     ((x7596
                                       (begin
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7394 x7596)))))
                                  (begin
                                    (write '(funapp 658 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7595)))))
                               g7594))))
                          g7593))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7592
                            (begin
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7592))))))
                  g7591)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7597
                    (begin
                      (write '(funapp 671 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7599
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7600
                                 (letrec*
                                  ((x7601
                                    (letrec*
                                     ((x7603
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7602
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7401 x7603 x7602)))))
                                  (begin
                                    (write '(funapp 683 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7601)))))
                               g7600))))
                          g7599))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7598
                            (begin
                              (write '(funapp 689 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7598))))))
                  g7597)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7605
                        (letrec*
                         ((x7606
                           (begin
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7606)))))
                      (begin
                        (write '(funapp 697 23))
                        (display "\n")
                        (cdr x7605)))))
                   g7604)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7610
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7610))))
                    (g7608
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7611))))
                    (g7609
                     (letrec*
                      ((x-cnd7612
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7612
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7615
                           (letrec*
                            ((x7616
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7616))))
                          (x7613
                           (letrec*
                            ((x7614
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7614)))))
                         (begin
                           (write '(funapp 713 26))
                           (display "\n")
                           (cons x7615 x7613)))))))
                   g7609)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
                        (display "\n")
                        (cdr x7618)))))
                   g7617)))
               (cadadr
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
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7622)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7621)))))
                      (begin
                        (write '(funapp 729 23))
                        (display "\n")
                        (car x7620)))))
                   g7619)))
               (cdadar
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
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7626)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7625)))))
                      (begin
                        (write '(funapp 740 23))
                        (display "\n")
                        (cdr x7624)))))
                   g7623)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x7630))))
                    (g7628
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x7631))))
                    (g7629
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
                       ((g7632
                         (begin
                           (write '(funapp 754 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7633 res))
                       g7633))))
                   g7629)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7635
                        (letrec*
                         ((x7636
                           (begin
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x7636)))))
                      (begin
                        (write '(funapp 763 23))
                        (display "\n")
                        (car x7635)))))
                   g7634)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7638
                        (letrec*
                         ((x7639
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x7640)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x7639)))))
                      (begin
                        (write '(funapp 774 23))
                        (display "\n")
                        (cdr x7638)))))
                   g7637)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x7643))))
                    (g7642
                     (letrec*
                      ((x-cnd7644
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7644
                        #f
                        (letrec*
                         ((x-cnd7645
                           (letrec*
                            ((x7646
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x7646 k)))))
                         (if x-cnd7645
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7647
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
                              (display "\n")
                              (assq k x7647)))))))))
                   g7642)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
                        (display "\n")
                        (= 0 x7649)))))
                   g7648)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x7652))))
                    (g7651
                     (letrec*
                      ((x-cnd7653
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7653
                        ""
                        (letrec*
                         ((x7656
                           (letrec*
                            ((x7657
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x7657))))
                          (x7654
                           (letrec*
                            ((x7655
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x7655)))))
                         (begin
                           (write '(funapp 811 26))
                           (display "\n")
                           (string-append x7656 x7654)))))))
                   g7651)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7661))))
                    (g7659
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x7662))))
                    (g7660
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7663
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7663))))
                   g7660)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7665
                        (letrec*
                         ((x7666
                           (letrec*
                            ((x7667
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7667)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x7666)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7665)))))
                   g7664)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x7671
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7671))))
                    (g7669
                     (letrec*
                      ((x7672
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x7672))))
                    (g7670
                     (letrec*
                      ((x-cnd7673
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7673
                        x
                        (letrec*
                         ((x7675
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x7674
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x7675 x7674)))))))
                   g7670)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7676
                     (begin (write '(funapp 850 49)) (display "\n") '())))
                   g7676)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x-cnd7678
                        (letrec*
                         ((x7679 #\a))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x7679)))))
                      (if x-cnd7678
                        (letrec*
                         ((x7680 #\z))
                         (begin
                           (write '(funapp 859 48))
                           (display "\n")
                           (char-ci<=? c x7680)))
                        #f))))
                   g7677)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7682
                           (begin
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
                           (display "\n")
                           (= x7682 9)))))
                      (letrec*
                       ((g7683
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7684
                                 (begin
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x7684 10)))))
                            (letrec*
                             ((g7685
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7686
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
                                    (display "\n")
                                    (= x7686 32))))))
                             g7685)))))
                       g7683))))
                   g7681)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x7688
                        (letrec*
                         ((x7689
                           (begin
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x7689)))))
                      (begin
                        (write '(funapp 894 23))
                        (display "\n")
                        (cdr x7688)))))
                   g7687)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((x7692
                        (begin
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x7692))))
                    (g7691
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g7691)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7693
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g7693)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7694 #f)) g7694)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7695
                     (letrec*
                      ((x7696
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
                        (display "\n")
                        (cdr x7696)))))
                   g7695)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7697
                     (letrec*
                      ((x7699
                        (begin
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x7699))))
                    (g7698
                     (letrec*
                      ((x-cnd7700
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7700
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g7698)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7701
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7702
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7703
                                 (begin
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7703
                                 (begin
                                   (write '(funapp 935 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7704
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7705
                                       (begin
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7705
                                       (letrec*
                                        ((x-cnd7706
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7706
                                          (begin
                                            (write '(funapp 947 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7707
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7708
                                             (begin
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7708
                                             (letrec*
                                              ((x-cnd7709
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7709
                                                (letrec*
                                                 ((x-cnd7710
                                                   (letrec*
                                                    ((x7712
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7711
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x7712 x7711)))))
                                                 (if x-cnd7710
                                                   (letrec*
                                                    ((x7714
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7713
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
                                                      (display "\n")
                                                      (equal? x7714 x7713)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7715
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7716
                                                (begin
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7716
                                                (letrec*
                                                 ((x-cnd7717
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7717
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7718
                                                       (letrec*
                                                        ((x-cnd7719
                                                          (letrec*
                                                           ((x7720
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
                                                             (= x7720 n)))))
                                                        (if x-cnd7719
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7721
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
                                                                    ((g7722
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7723
                                                                           (letrec*
                                                                            ((x7725
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
                                                                             (x7724
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
                                                                               x7725
                                                                               x7724)))))
                                                                         (if x-cnd7723
                                                                           (letrec*
                                                                            ((x7726
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
                                                                               x7726)))
                                                                           #f)))))
                                                                    g7722))))
                                                                g7721))))
                                                           (letrec*
                                                            ((g7727
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7727))
                                                          #f))))
                                                     g7718))
                                                   #f))
                                                #f)))))
                                         g7715)))))
                                   g7707)))))
                             g7704)))))
                       g7702))))
                   g7701)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7729
                        (letrec*
                         ((x7730
                           (letrec*
                            ((x7731
                              (begin
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x7731)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x7730)))))
                      (begin
                        (write '(funapp 1055 23))
                        (display "\n")
                        (cdr x7729)))))
                   g7728)))
               (caaddr
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
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x7735)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x7734)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x7733)))))
                   g7732)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7736
                     (begin
                       (write '(funapp 1068 53))
                       (display "\n")
                       (eq? x y))))
                   g7736)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x7740))))
                    (g7738
                     (letrec*
                      ((x7741
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x7741))))
                    (g7739
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
                       ((g7742
                         (begin
                           (write '(funapp 1081 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7743 res))
                       g7743))))
                   g7739)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7744
                     (begin
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
                          (display "\n")
                          '())))))
                   g7744)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7748))))
                    (g7746
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7749))))
                    (g7747
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7750
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7750))))
                   g7747)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7752
                        (letrec*
                         ((x7753
                           (begin
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x7753)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (cdr x7752)))))
                   g7751)))
               (cdaddr
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
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x7757)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x7756)))))
                      (begin
                        (write '(funapp 1114 23))
                        (display "\n")
                        (cdr x7755)))))
                   g7754)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (begin
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x7760)))))
                      (begin
                        (write '(funapp 1123 23))
                        (display "\n")
                        (car x7759)))))
                   g7758)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7762
                        (letrec*
                         ((x7763
                           (begin
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x7763)))))
                      (begin
                        (write '(funapp 1131 23))
                        (display "\n")
                        (car x7762)))))
                   g7761)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x7768))))
                    (g7766
                     (letrec*
                      ((x7769
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
                        (display "\n")
                        (not x7769)))))
                   g7766)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x7773)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x7772)))))
                      (begin
                        (write '(funapp 1150 23))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x7776))))
                    (g7775
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g7775)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7777
                     (begin
                       (write '(funapp 1158 53))
                       (display "\n")
                       (memq e l))))
                   g7777)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7779
                        (letrec*
                         ((x7780
                           (begin
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x7780)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x7779)))))
                   g7778)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7781
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g7781)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x7784))))
                    (g7783
                     (letrec*
                      ((x-cnd7785
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7785
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x7789))))
                          (x7786
                           (letrec*
                            ((x7787
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x7787)))))
                         (begin
                           (write '(funapp 1180 26))
                           (display "\n")
                           (append x7788 x7786)))))))
                   g7783)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7791
                        (letrec*
                         ((x7792
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x7793)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x7792)))))
                      (begin
                        (write '(funapp 1191 23))
                        (display "\n")
                        (car x7791)))))
                   g7790)))
               (cddadr
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
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x7797)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x7796)))))
                      (begin
                        (write '(funapp 1202 23))
                        (display "\n")
                        (cdr x7795)))))
                   g7794)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x7800))))
                    (g7799
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
                        (display "\n")
                        (= 1 x7801)))))
                   g7799)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7803
                        (letrec*
                         ((x7804
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x7805)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x7804)))))
                      (begin
                        (write '(funapp 1219 23))
                        (display "\n")
                        (car x7803)))))
                   g7802)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x7809))))
                    (g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x7810))))
                    (g7808
                     (letrec*
                      ((x-cnd7811
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7811
                        (letrec*
                         ((g7812
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g7812)
                        (letrec*
                         ((x-cnd7813
                           (letrec*
                            ((x7814
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x7814)))))
                         (if x-cnd7813
                           (letrec*
                            ((g7815
                              (letrec*
                               ((x7816
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x7816)))))
                            g7815)
                           (letrec*
                            ((x-cnd7817
                              (letrec*
                               ((x7818
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x7818)))))
                            (if x-cnd7817
                              (letrec*
                               ((g7819
                                 (letrec*
                                  ((x7821
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x7820
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x7821 x7820)))))
                               g7819)
                              (letrec*
                               ((x-cnd7822
                                 (letrec*
                                  ((x7823
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x7823)))))
                               (if x-cnd7822
                                 (letrec*
                                  ((g7824
                                    (letrec*
                                     ((x7827
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x7826
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7825
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x7827 x7826 x7825)))))
                                  g7824)
                                 (letrec*
                                  ((x-cnd7828
                                    (letrec*
                                     ((x7829
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x7829)))))
                                  (if x-cnd7828
                                    (letrec*
                                     ((g7830
                                       (letrec*
                                        ((x7834
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x7833
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7832
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7831
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
                                          (display "\n")
                                          (proc x7834 x7833 x7832 x7831)))))
                                     g7830)
                                    (letrec*
                                     ((x-cnd7835
                                       (letrec*
                                        ((x7836
                                          (letrec*
                                           ((x7837
                                             (begin
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x7837)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x7836)))))
                                     (if x-cnd7835
                                       (letrec*
                                        ((g7838
                                          (letrec*
                                           ((x7844
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x7843
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7842
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7841
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7839
                                             (letrec*
                                              ((x7840
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x7840)))))
                                           (begin
                                             (write '(funapp 1299 44))
                                             (display "\n")
                                             (proc
                                              x7844
                                              x7843
                                              x7842
                                              x7841
                                              x7839)))))
                                        g7838)
                                       (letrec*
                                        ((x-cnd7845
                                          (letrec*
                                           ((x7846
                                             (letrec*
                                              ((x7847
                                                (begin
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x7847)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x7846)))))
                                        (if x-cnd7845
                                          (letrec*
                                           ((g7848
                                             (letrec*
                                              ((x7856
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7855
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7854
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7853
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7851
                                                (letrec*
                                                 ((x7852
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x7852))))
                                               (x7849
                                                (letrec*
                                                 ((x7850
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x7850)))))
                                              (begin
                                                (write '(funapp 1330 47))
                                                (display "\n")
                                                (proc
                                                 x7856
                                                 x7855
                                                 x7854
                                                 x7853
                                                 x7851
                                                 x7849)))))
                                           g7848)
                                          (letrec*
                                           ((x-cnd7857
                                             (letrec*
                                              ((x7858
                                                (letrec*
                                                 ((x7859
                                                   (begin
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x7859)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x7858)))))
                                           (if x-cnd7857
                                             (letrec*
                                              ((g7860
                                                (letrec*
                                                 ((x7870
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7869
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7868
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7867
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7865
                                                   (letrec*
                                                    ((x7866
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x7866))))
                                                  (x7863
                                                   (letrec*
                                                    ((x7864
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x7864))))
                                                  (x7861
                                                   (letrec*
                                                    ((x7862
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x7862)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
                                                   (display "\n")
                                                   (proc
                                                    x7870
                                                    x7869
                                                    x7868
                                                    x7867
                                                    x7865
                                                    x7863
                                                    x7861)))))
                                              g7860)
                                             (letrec*
                                              ((g7871
                                                (begin
                                                  (write '(funapp 1377 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7871)))))))))))))))))))
                   g7808)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7874
                        (begin
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x7874))))
                    (g7873
                     (letrec*
                      ((x-cnd7875
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7875
                        #f
                        (letrec*
                         ((x-cnd7876
                           (letrec*
                            ((x7877
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x7877 e)))))
                         (if x-cnd7876
                           l
                           (letrec*
                            ((x7878
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
                              (display "\n")
                              (member e x7878)))))))))
                   g7873)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7880
                        (letrec*
                         ((x7881
                           (letrec*
                            ((x7882
                              (begin
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x7882)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x7881)))))
                      (begin
                        (write '(funapp 1405 23))
                        (display "\n")
                        (cdr x7880)))))
                   g7879)))
               (cadddr
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
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x7886)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x7885)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x7884)))))
                   g7883)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7887
                     (begin
                       (write '(funapp 1418 53))
                       (display "\n")
                       (random 42))))
                   g7887)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7890
                        (begin
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x7890))))
                    (g7889
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g7889)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7892
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7892))))
                   g7891)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
                        (display "\n")
                        (car x7894)))))
                   g7893)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7896
                           (begin
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7896
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x7897)))
                           #f))))
                      (letrec*
                       ((g7898
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
                             (display "\n")
                             (null? l)))))
                       g7898))))
                   g7895)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7900
                        (letrec*
                         ((x7901
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x7902)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x7901)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (cdr x7900)))))
                   g7899)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x-cnd7904
                        (letrec*
                         ((x7905 #\0))
                         (begin
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x7905 c)))))
                      (if x-cnd7904
                        (letrec*
                         ((x7906 #\9))
                         (begin
                           (write '(funapp 1474 48))
                           (display "\n")
                           (char<=? c x7906)))
                        #f))))
                   g7903)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7909
                        (begin
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x7909))))
                    (g7908
                     (letrec*
                      ((x-cnd7910
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7910
                        #f
                        (letrec*
                         ((x-cnd7911
                           (letrec*
                            ((x7912
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x7912 k)))))
                         (if x-cnd7911
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7913
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x7913)))))))))
                   g7908)))
               (not (lambda (x) (letrec* ((g7914 (if x #f #t))) g7914)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7915
                     (begin
                       (write '(funapp 1496 50))
                       (display "\n")
                       (append l1 l2))))
                   g7915)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x7918))))
                    (g7917
                     (letrec*
                      ((x-cnd7919
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7919
                        #f
                        (letrec*
                         ((x-cnd7920
                           (letrec*
                            ((x7921
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x7921 e)))))
                         (if x-cnd7920
                           l
                           (letrec*
                            ((x7922
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
                              (display "\n")
                              (memq e x7922)))))))))
                   g7917)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7924
                        (letrec*
                         ((x7925
                           (letrec*
                            ((x7926
                              (begin
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x7926)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x7925)))))
                      (begin
                        (write '(funapp 1522 23))
                        (display "\n")
                        (car x7924)))))
                   g7923)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
                        (display "\n")
                        (assert x7929))))
                    (g7928
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7930
                             (letrec*
                              ((x-cnd7931
                                (begin
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7931
                                0
                                (letrec*
                                 ((x7932
                                   (letrec*
                                    ((x7933
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x7933)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x7932)))))))
                           g7930))))
                      (letrec*
                       ((g7934
                         (begin
                           (write '(funapp 1543 40))
                           (display "\n")
                           (rec l))))
                       g7934))))
                   g7928)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7938))))
                    (g7936
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7939))))
                    (g7937
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7940
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7940))))
                   g7937)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
                        (display "\n")
                        (not x7942)))))
                   g7941)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7944
                        (letrec*
                         ((x7945
                           (begin
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x7945)))))
                      (begin
                        (write '(funapp 1568 23))
                        (display "\n")
                        (cdr x7944)))))
                   g7943)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x7948))))
                    (g7947
                     (letrec*
                      ((x-cnd7949
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7949
                        #f
                        (letrec*
                         ((x-cnd7950
                           (letrec*
                            ((x7951
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x7951 k)))))
                         (if x-cnd7950
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7952
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
                              (display "\n")
                              (assoc k x7952)))))))))
                   g7947)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
                        (display "\n")
                        (car x7954)))))
                   g7953)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x7959))))
                    (g7957
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
                        (display "\n")
                        (not x7960)))))
                   g7957)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7962
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7962))))
                   g7961)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x7966))))
                    (g7964
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x7967))))
                    (g7965
                     (letrec*
                      ((x-cnd7968
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7968
                        #t
                        (letrec*
                         ((x-cnd7969
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7969
                           (letrec*
                            ((g7970
                              (letrec*
                               ((x7972
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x7972))))
                             (g7971
                              (letrec*
                               ((x7973
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x7973)))))
                            g7971)
                           (begin
                             (write '(funapp 1626 27))
                             (display "\n")
                             '())))))))
                   g7965)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x7976
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x7976))))
                    (g7975
                     (letrec*
                      ((x-cnd7977
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7977
                        (begin
                          (write '(funapp 1633 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7975)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7978
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7981))))
                    (g7979
                     (letrec*
                      ((x7982
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x7982))))
                    (g7980
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7983
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7983))))
                   g7980)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x7985
                        (letrec*
                         ((x7986
                           (letrec*
                            ((x7987
                              (begin
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x7987)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x7986)))))
                      (begin
                        (write '(funapp 1656 23))
                        (display "\n")
                        (car x7985)))))
                   g7984)))
               (newline (lambda () (letrec* ((g7988 #f)) g7988)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x7991
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x7992))))
                       (x7990
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
                        (display "\n")
                        (/ x7991 x7990)))))
                   g7989)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x7997
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x7997))))
                    (g7994
                     (letrec*
                      ((x7998
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x7998))))
                    (g7995
                     (letrec*
                      ((x7999
                        (letrec*
                         ((x8000
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x8000)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x7999))))
                    (g7996
                     (letrec*
                      ((x-cnd8001
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8001
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8003
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x8002
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
                           (display "\n")
                           (list-ref x8003 x8002)))))))
                   g7996)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((x-cnd8005
                        (begin
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8005
                        a
                        (letrec*
                         ((x8006
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x8006)))))))
                   g8004)))
               (tak
                (lambda (x y z)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((x-cnd8008
                        (begin
                          (write '(funapp 1702 35))
                          (display "\n")
                          (< y x))))
                      (if x-cnd8008
                        (letrec*
                         ((x8013
                           (letrec*
                            ((x8014
                              (begin
                                (write '(funapp 1705 51))
                                (display "\n")
                                (- x 1))))
                            (begin
                              (write '(funapp 1705 61))
                              (display "\n")
                              (tak x8014 y z))))
                          (x8011
                           (letrec*
                            ((x8012
                              (begin
                                (write '(funapp 1706 51))
                                (display "\n")
                                (- y 1))))
                            (begin
                              (write '(funapp 1706 61))
                              (display "\n")
                              (tak x8012 z x))))
                          (x8009
                           (letrec*
                            ((x8010
                              (begin
                                (write '(funapp 1707 51))
                                (display "\n")
                                (- z 1))))
                            (begin
                              (write '(funapp 1707 61))
                              (display "\n")
                              (tak x8010 x y)))))
                         (begin
                           (write '(funapp 1708 26))
                           (display "\n")
                           (tak x8013 x8011 x8009)))
                        z))))
                   g8007))))
              (letrec*
               ((g8015
                 (begin
                   (write '(funapp 1713 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1714 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8019
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1718 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1718 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1718 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1718 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8020
                              (begin
                                (write '(funapp 1721 27))
                                (display "\n")
                                ((lambda (j7407 k7408 f7409)
                                   (letrec*
                                    ((g8021
                                      (lambda (g7404 g7405 g7406)
                                        (letrec*
                                         ((g8022
                                           (letrec*
                                            ((x8023
                                              (letrec*
                                               ((x8026
                                                 (begin
                                                   (write '(funapp 1730 50))
                                                   (display "\n")
                                                   (number?/c
                                                    j7407
                                                    k7408
                                                    g7404)))
                                                (x8025
                                                 (begin
                                                   (write '(funapp 1731 50))
                                                   (display "\n")
                                                   (number?/c
                                                    j7407
                                                    k7408
                                                    g7405)))
                                                (x8024
                                                 (begin
                                                   (write '(funapp 1733 44))
                                                   (display "\n")
                                                   (number?/c
                                                    j7407
                                                    k7408
                                                    g7406))))
                                               (begin
                                                 (write '(funapp 1734 42))
                                                 (display "\n")
                                                 (f7409 x8026 x8025 x8024)))))
                                            (begin
                                              (write '(funapp 1735 39))
                                              (display "\n")
                                              (number?/c j7407 k7408 x8023)))))
                                         g8022))))
                                    g8021))
                                 xj7402
                                 xk7403
                                 tak))))
                            g8020)))
                         (x8018 (input))
                         (x8017 (input))
                         (x8016 (input)))
                        (begin
                          (write '(funapp 1745 21))
                          (display "\n")
                          (x8019 x8018 x8017 x8016)))))))))
               g8015))))
           g7438))))
       g7421)))
    g7420)))
