(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7413 #t)) g7413)))
    (meta (lambda (v) (letrec* ((g7414 v)) g7414)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7415
          (letrec*
           ((g7416
             (letrec*
              ((x-e7417 lst))
              (letrec*
               ((v1742 x-e7417))
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
                   ((x-cnd7418
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7418
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
           g7416)))
        g7415)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7419 (lambda (v) (letrec* ((g7420 v)) g7420)))) g7419)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7421
          (letrec*
           ((x7422 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7422)))))
        g7421))))
   (letrec*
    ((g7423
      (letrec*
       ((g7424
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7425
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7425)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7426
                 (letrec*
                  ((x7428
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7428))))
                (g7427
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7429
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7430 (if val7245 val7245 #f))) g7430)))))
                   g7429))))
               g7427)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7431
                 (letrec*
                  ((x7433
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7433))))
                (g7432
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7434
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7435 (if val7247 val7247 #f))) g7435)))))
                   g7434))))
               g7432)))
           (>
            (lambda (x y)
              (letrec*
               ((g7436
                 (letrec*
                  ((x7438
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7438))))
                (g7437
                 (letrec*
                  ((x7439
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7439)))))
               g7437)))
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
           ((g7440 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7441
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7442
                     (lambda (k j lst)
                       (letrec*
                        ((g7443
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7444
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7444))
                             lst))))
                        g7443))))
                   g7442)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x-cnd7446
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7446
                        g7265
                        (begin
                          (write '(blame g7263 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7445)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7448
                        g7268
                        (begin
                          (write '(blame g7266 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7447)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7450
                        g7271
                        (begin
                          (write '(blame g7269 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7449)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7453 #t)) g7453)) g7274))))
                      (if x-cnd7452
                        g7274
                        (begin
                          (write '(blame g7272 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7451)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7456 #t)) g7456)) g7277))))
                      (if x-cnd7455
                        g7277
                        (begin
                          (write '(blame g7275 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7454)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7458
                        g7280
                        (begin
                          (write '(blame g7278 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7457)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7459
                     (lambda (k j v)
                       (letrec*
                        ((g7460
                          (letrec*
                           ((x7463
                             (letrec*
                              ((x7464
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7464))))
                            (x7461
                             (letrec*
                              ((x7462
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7462)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7463 x7461)))))
                        g7460))))
                   g7459)))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x-cnd7466
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7466
                        g7283
                        (begin
                          (write '(blame g7281 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7465)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x-cnd7468
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7468
                        g7286
                        (begin
                          (write '(blame g7284 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7467)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x-cnd7470
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7470
                        g7289
                        (begin
                          (write '(blame g7287 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7469)))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x-cnd7472
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7292))))
                      (if x-cnd7472
                        g7292
                        (begin
                          (write '(blame g7290 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
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
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7475
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7474))))
                   g7473)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7476
                     (lambda (k j v)
                       (letrec*
                        ((g7477
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7478
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7478))))
                        g7477))))
                   g7476)))
               (null?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x-cnd7480
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7295))))
                      (if x-cnd7480
                        g7295
                        (begin
                          (write '(blame g7293 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7479)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7481
                     (lambda (k j v)
                       (letrec*
                        ((g7482
                          (letrec*
                           ((x-cnd7483
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7483
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7487
                                (letrec*
                                 ((x7488
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7488))))
                               (x7484
                                (letrec*
                                 ((x7486
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7485
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7486 k j x7485)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7487 x7484)))))))
                        g7482))))
                   g7481)))
               (any? (lambda (v) (letrec* ((g7489 #t)) g7489)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x7491
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7491)))))
                   g7490)))
               (nonzero?/c
                (lambda (g7296 g7297 g7298)
                  (letrec*
                   ((g7492
                     (letrec*
                      ((x-cnd7493
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7494
                                (letrec*
                                 ((x7495
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7495)))))
                              g7494))
                           g7298))))
                      (if x-cnd7493
                        g7298
                        (begin
                          (write '(blame g7296 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7296)))))))
                   g7492)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7496
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7497
                          (letrec*
                           ((x-cnd7498
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7499
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7499))
                                g7301))))
                           (if x-cnd7498
                             g7301
                             (begin
                               (write '(blame g7299 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7497))))
                   g7496)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7500
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7501
                          (letrec*
                           ((x-cnd7502
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7503
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7503))
                                g7304))))
                           (if x-cnd7502
                             g7304
                             (begin
                               (write '(blame g7302 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7501))))
                   g7500)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7504
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7505
                          (letrec*
                           ((x-cnd7506
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7507
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7507))
                                g7307))))
                           (if x-cnd7506
                             g7307
                             (begin
                               (write '(blame g7305 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7505))))
                   g7504)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7508
                     (lambda (g7308 g7309 g7310)
                       (letrec*
                        ((g7509
                          (letrec*
                           ((x-cnd7510
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7511
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7511))
                                g7310))))
                           (if x-cnd7510
                             g7310
                             (begin
                               (write '(blame g7308 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7509))))
                   g7508)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7512
                     (lambda (g7311 g7312 g7313)
                       (letrec*
                        ((g7513
                          (letrec*
                           ((x-cnd7514
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7515
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7515))
                                g7313))))
                           (if x-cnd7514
                             g7313
                             (begin
                               (write '(blame g7311 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7311)))))))
                        g7513))))
                   g7512)))
               (meta (lambda (v) (letrec* ((g7516 v)) g7516)))
               (+
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7517
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7519
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7520
                                 (letrec*
                                  ((x7521
                                    (letrec*
                                     ((x7523
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7522
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7320 x7523 x7522)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7521)))))
                               g7520))))
                          g7519))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7518
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7518))))))
                  g7517)))
               (-
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7524
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7526
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7527
                                 (letrec*
                                  ((x7528
                                    (letrec*
                                     ((x7530
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7529
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7327 x7530 x7529)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7528)))))
                               g7527))))
                          g7526))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7525
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7525))))))
                  g7524)))
               (*
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7531
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7533
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7534
                                 (letrec*
                                  ((x7535
                                    (letrec*
                                     ((x7537
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7536
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7334 x7537 x7536)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7332 k7333 x7535)))))
                               g7534))))
                          g7533))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7532
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7532))))))
                  g7531)))
               (<
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7538
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7540
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7541
                                 (letrec*
                                  ((x7542
                                    (letrec*
                                     ((x7544
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7543
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7341 x7544 x7543)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7542)))))
                               g7541))))
                          g7540))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7539
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7539))))))
                  g7538)))
               (>
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7545
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7547
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7548
                                 (letrec*
                                  ((x7549
                                    (letrec*
                                     ((x7551
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7550
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7348 x7551 x7550)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7549)))))
                               g7548))))
                          g7547))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7546
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7546))))))
                  g7545)))
               (<=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7552
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7554
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7555
                                 (letrec*
                                  ((x7556
                                    (letrec*
                                     ((x7558
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7557
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7355 x7558 x7557)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7556)))))
                               g7555))))
                          g7554))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7553
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7553))))))
                  g7552)))
               (>=
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7559
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7561
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7562
                                 (letrec*
                                  ((x7563
                                    (letrec*
                                     ((x7565
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7564
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7362 x7565 x7564)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7360 k7361 x7563)))))
                               g7562))))
                          g7561))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7560
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7560))))))
                  g7559)))
               (add1
                (lambda (x)
                  (letrec*
                   ((g7566
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7566)))
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7567
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7567)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7568
                    (begin
                      (write '(funapp 552 21))
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
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7573
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7369 x7574 x7573)))))
                                  (begin
                                    (write '(funapp 564 33))
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
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7569))))))
                  g7568)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7575
                    (begin
                      (write '(funapp 576 21))
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
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7375 x7580)))))
                                  (begin
                                    (write '(funapp 587 33))
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
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7576))))))
                  g7575)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7581
                    (begin
                      (write '(funapp 599 21))
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
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7381 x7586)))))
                                  (begin
                                    (write '(funapp 610 33))
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
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7582))))))
                  g7581)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7587
                    (begin
                      (write '(funapp 622 21))
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
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7592
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7388 x7593 x7592)))))
                                  (begin
                                    (write '(funapp 634 33))
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
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7588))))))
                  g7587)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7594
                    (begin
                      (write '(funapp 647 21))
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
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7394 x7599)))))
                                  (begin
                                    (write '(funapp 658 33))
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
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7595))))))
                  g7594)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7600
                    (begin
                      (write '(funapp 671 21))
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
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7605
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7401 x7606 x7605)))))
                                  (begin
                                    (write '(funapp 683 33))
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
                              (write '(funapp 689 41))
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
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7609)))))
                      (begin
                        (write '(funapp 697 23))
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
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7613))))
                    (g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7614))))
                    (g7612
                     (letrec*
                      ((x-cnd7615
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7615
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7619))))
                          (x7616
                           (letrec*
                            ((x7617
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7617)))))
                         (begin
                           (write '(funapp 713 26))
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
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
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
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7625)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7624)))))
                      (begin
                        (write '(funapp 729 23))
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
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7629)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7628)))))
                      (begin
                        (write '(funapp 740 23))
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
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x7633))))
                    (g7631
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x7634))))
                    (g7632
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
                       ((g7635
                         (begin
                           (write '(funapp 754 32))
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
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x7639)))))
                      (begin
                        (write '(funapp 763 23))
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
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x7643)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x7642)))))
                      (begin
                        (write '(funapp 774 23))
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
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x7646))))
                    (g7645
                     (letrec*
                      ((x-cnd7647
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7647
                        #f
                        (letrec*
                         ((x-cnd7648
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x7649 k)))))
                         (if x-cnd7648
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
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
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
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
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x7655))))
                    (g7654
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7656
                        ""
                        (letrec*
                         ((x7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x7660))))
                          (x7657
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x7658)))))
                         (begin
                           (write '(funapp 811 26))
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
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7664))))
                    (g7662
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x7665))))
                    (g7663
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7666
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
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
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7670)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x7669)))))
                      (begin
                        (write '(funapp 834 23))
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
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7674))))
                    (g7672
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x7675))))
                    (g7673
                     (letrec*
                      ((x-cnd7676
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7676
                        x
                        (letrec*
                         ((x7678
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x7677
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x7678 x7677)))))))
                   g7673)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7679
                     (begin (write '(funapp 850 49)) (display "\n") '())))
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
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x7682)))))
                      (if x-cnd7681
                        (letrec*
                         ((x7683 #\z))
                         (begin
                           (write '(funapp 859 48))
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
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
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
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x7687 10)))))
                            (letrec*
                             ((g7688
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7689
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
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
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x7692)))))
                      (begin
                        (write '(funapp 894 23))
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
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x7695))))
                    (g7694
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g7694)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7696
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g7696)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7697 #f)) g7697)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7698
                     (letrec*
                      ((x7699
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
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
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x7702))))
                    (g7701
                     (letrec*
                      ((x-cnd7703
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7703
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g7701)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7704
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
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
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7706
                                 (begin
                                   (write '(funapp 935 46))
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
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7708
                                       (letrec*
                                        ((x-cnd7709
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7709
                                          (begin
                                            (write '(funapp 947 55))
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
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7711
                                             (letrec*
                                              ((x-cnd7712
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7712
                                                (letrec*
                                                 ((x-cnd7713
                                                   (letrec*
                                                    ((x7715
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7714
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x7715 x7714)))))
                                                 (if x-cnd7713
                                                   (letrec*
                                                    ((x7717
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7716
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
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
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7719
                                                (letrec*
                                                 ((x-cnd7720
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7720
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
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
                                                                  993
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 995 60))
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
                                                                          1004
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
                                                                                   1013
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
                                                                               x7728
                                                                               x7727)))))
                                                                         (if x-cnd7726
                                                                           (letrec*
                                                                            ((x7729
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
                                                                               x7729)))
                                                                           #f)))))
                                                                    g7725))))
                                                                g7724))))
                                                           (letrec*
                                                            ((g7730
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
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
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x7734)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x7733)))))
                      (begin
                        (write '(funapp 1055 23))
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
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x7738)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x7737)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x7736)))))
                   g7735)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7739
                     (begin
                       (write '(funapp 1068 53))
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
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x7743))))
                    (g7741
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x7744))))
                    (g7742
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
                       ((g7745
                         (begin
                           (write '(funapp 1081 32))
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
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
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
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7751))))
                    (g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7752))))
                    (g7750
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7753
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
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
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x7756)))))
                      (begin
                        (write '(funapp 1103 23))
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
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x7760)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x7759)))))
                      (begin
                        (write '(funapp 1114 23))
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
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x7763)))))
                      (begin
                        (write '(funapp 1123 23))
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
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x7766)))))
                      (begin
                        (write '(funapp 1131 23))
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
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7770))))
                    (g7768
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x7771))))
                    (g7769
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
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
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x7776)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x7775)))))
                      (begin
                        (write '(funapp 1150 23))
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
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x7779))))
                    (g7778
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g7778)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7780
                     (begin
                       (write '(funapp 1158 53))
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
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x7783)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x7782)))))
                   g7781)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7784
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g7784)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x7787))))
                    (g7786
                     (letrec*
                      ((x-cnd7788
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7788
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x7791
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x7792))))
                          (x7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x7790)))))
                         (begin
                           (write '(funapp 1180 26))
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
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x7796)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x7795)))))
                      (begin
                        (write '(funapp 1191 23))
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
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x7800)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x7799)))))
                      (begin
                        (write '(funapp 1202 23))
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
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x7803))))
                    (g7802
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
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
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x7808)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x7807)))))
                      (begin
                        (write '(funapp 1219 23))
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
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x7812))))
                    (g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x-cnd7814
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7814
                        (letrec*
                         ((g7815
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g7815)
                        (letrec*
                         ((x-cnd7816
                           (letrec*
                            ((x7817
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x7817)))))
                         (if x-cnd7816
                           (letrec*
                            ((g7818
                              (letrec*
                               ((x7819
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x7819)))))
                            g7818)
                           (letrec*
                            ((x-cnd7820
                              (letrec*
                               ((x7821
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x7821)))))
                            (if x-cnd7820
                              (letrec*
                               ((g7822
                                 (letrec*
                                  ((x7824
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x7823
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x7824 x7823)))))
                               g7822)
                              (letrec*
                               ((x-cnd7825
                                 (letrec*
                                  ((x7826
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x7826)))))
                               (if x-cnd7825
                                 (letrec*
                                  ((g7827
                                    (letrec*
                                     ((x7830
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x7829
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7828
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x7830 x7829 x7828)))))
                                  g7827)
                                 (letrec*
                                  ((x-cnd7831
                                    (letrec*
                                     ((x7832
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x7832)))))
                                  (if x-cnd7831
                                    (letrec*
                                     ((g7833
                                       (letrec*
                                        ((x7837
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x7836
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7835
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7834
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
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
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x7840)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x7839)))))
                                     (if x-cnd7838
                                       (letrec*
                                        ((g7841
                                          (letrec*
                                           ((x7847
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x7846
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7845
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7844
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7842
                                             (letrec*
                                              ((x7843
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x7843)))))
                                           (begin
                                             (write '(funapp 1299 44))
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
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x7850)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x7849)))))
                                        (if x-cnd7848
                                          (letrec*
                                           ((g7851
                                             (letrec*
                                              ((x7859
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7858
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7857
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7856
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7854
                                                (letrec*
                                                 ((x7855
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x7855))))
                                               (x7852
                                                (letrec*
                                                 ((x7853
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x7853)))))
                                              (begin
                                                (write '(funapp 1330 47))
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
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x7862)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x7861)))))
                                           (if x-cnd7860
                                             (letrec*
                                              ((g7863
                                                (letrec*
                                                 ((x7873
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7872
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7871
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7870
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7868
                                                   (letrec*
                                                    ((x7869
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x7869))))
                                                  (x7866
                                                   (letrec*
                                                    ((x7867
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x7867))))
                                                  (x7864
                                                   (letrec*
                                                    ((x7865
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x7865)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
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
                                                  (write '(funapp 1377 49))
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
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x7877))))
                    (g7876
                     (letrec*
                      ((x-cnd7878
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7878
                        #f
                        (letrec*
                         ((x-cnd7879
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x7880 e)))))
                         (if x-cnd7879
                           l
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
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
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x7885)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x7884)))))
                      (begin
                        (write '(funapp 1405 23))
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
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x7889)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x7888)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x7887)))))
                   g7886)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7890
                     (begin
                       (write '(funapp 1418 53))
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
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x7893))))
                    (g7892
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g7892)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7895
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
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
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
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
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7899
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x7900)))
                           #f))))
                      (letrec*
                       ((g7901
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
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
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x7905)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x7904)))))
                      (begin
                        (write '(funapp 1465 23))
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
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x7908 c)))))
                      (if x-cnd7907
                        (letrec*
                         ((x7909 #\9))
                         (begin
                           (write '(funapp 1474 48))
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
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x7912))))
                    (g7911
                     (letrec*
                      ((x-cnd7913
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7913
                        #f
                        (letrec*
                         ((x-cnd7914
                           (letrec*
                            ((x7915
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x7915 k)))))
                         (if x-cnd7914
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7916
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x7916)))))))))
                   g7911)))
               (not (lambda (x) (letrec* ((g7917 (if x #f #t))) g7917)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7918
                     (begin
                       (write '(funapp 1496 50))
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
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x7921))))
                    (g7920
                     (letrec*
                      ((x-cnd7922
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7922
                        #f
                        (letrec*
                         ((x-cnd7923
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x7924 e)))))
                         (if x-cnd7923
                           l
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
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
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x7929)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x7928)))))
                      (begin
                        (write '(funapp 1522 23))
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
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
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
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7934
                                0
                                (letrec*
                                 ((x7935
                                   (letrec*
                                    ((x7936
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x7936)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x7935)))))))
                           g7933))))
                      (letrec*
                       ((g7937
                         (begin
                           (write '(funapp 1543 40))
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
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7941))))
                    (g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7943
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
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
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
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
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x7948)))))
                      (begin
                        (write '(funapp 1568 23))
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
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x7951))))
                    (g7950
                     (letrec*
                      ((x-cnd7952
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7952
                        #f
                        (letrec*
                         ((x-cnd7953
                           (letrec*
                            ((x7954
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x7954 k)))))
                         (if x-cnd7953
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7955
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
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
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
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
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x7962))))
                    (g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
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
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7965
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
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
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x7969))))
                    (g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((x-cnd7971
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7971
                        #t
                        (letrec*
                         ((x-cnd7972
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7972
                           (letrec*
                            ((g7973
                              (letrec*
                               ((x7975
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x7975))))
                             (g7974
                              (letrec*
                               ((x7976
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x7976)))))
                            g7974)
                           (begin
                             (write '(funapp 1626 27))
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
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x7979))))
                    (g7978
                     (letrec*
                      ((x-cnd7980
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7980
                        (begin
                          (write '(funapp 1633 67))
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
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7984))))
                    (g7982
                     (letrec*
                      ((x7985
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x7985))))
                    (g7983
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7986
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
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
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x7990)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x7989)))))
                      (begin
                        (write '(funapp 1656 23))
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
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x7995))))
                       (x7993
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
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
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x8000))))
                    (g7997
                     (letrec*
                      ((x8001
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x8001))))
                    (g7998
                     (letrec*
                      ((x8002
                        (letrec*
                         ((x8003
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x8003)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x8002))))
                    (g7999
                     (letrec*
                      ((x-cnd8004
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8004
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8006
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x8005
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
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
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8008
                        a
                        (letrec*
                         ((x8009
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x8009)))))))
                   g8007)))
               (foldl
                (lambda (f z l)
                  (letrec*
                   ((g8010
                     (letrec*
                      ((x-cnd8011
                        (begin
                          (write '(funapp 1702 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd8011
                        z
                        (letrec*
                         ((x8013
                           (letrec*
                            ((x8014
                              (begin
                                (write '(funapp 1706 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1706 61))
                              (display "\n")
                              (f z x8014))))
                          (x8012
                           (begin
                             (write '(funapp 1707 34))
                             (display "\n")
                             (cdr l))))
                         (begin
                           (write '(funapp 1708 26))
                           (display "\n")
                           (foldl f x8013 x8012)))))))
                   g8010)))
               (randpos
                (lambda (rand)
                  (letrec*
                   ((g8015
                     (letrec*
                      ((n
                        (begin
                          (write '(funapp 1715 27))
                          (display "\n")
                          (rand))))
                      (letrec*
                       ((g8016
                         (letrec*
                          ((x-cnd8017
                            (begin
                              (write '(funapp 1719 39))
                              (display "\n")
                              (> n 0))))
                          (if x-cnd8017
                            n
                            (begin
                              (write '(funapp 1720 43))
                              (display "\n")
                              (randpos rand))))))
                       g8016))))
                   g8015)))
               (mk-list
                (lambda (rand n)
                  (letrec*
                   ((g8018
                     (letrec*
                      ((x-cnd8019
                        (begin
                          (write '(funapp 1728 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd8019
                        empty
                        (letrec*
                         ((x8022
                           (begin
                             (write '(funapp 1732 34))
                             (display "\n")
                             (randpos rand)))
                          (x8020
                           (letrec*
                            ((x8021
                              (begin
                                (write '(funapp 1734 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1734 55))
                              (display "\n")
                              (mk-list rand x8021)))))
                         (begin
                           (write '(funapp 1735 26))
                           (display "\n")
                           (cons x8022 x8020)))))))
                   g8018)))
               (main
                (lambda (rand n m)
                  (letrec*
                   ((g8023
                     (letrec*
                      ((x8024
                        (begin
                          (write '(funapp 1741 39))
                          (display "\n")
                          (mk-list rand n))))
                      (begin
                        (write '(funapp 1741 58))
                        (display "\n")
                        (foldl / m x8024)))))
                   g8023))))
              (letrec*
               ((g8025
                 (begin
                   (write '(funapp 1745 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1746 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8029
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1750 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1750 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1750 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1750 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8030
                              (begin
                                (write '(funapp 1753 27))
                                (display "\n")
                                ((lambda (j7407 k7408 f7409)
                                   (letrec*
                                    ((g8031
                                      (lambda (g7404 g7405 g7406)
                                        (letrec*
                                         ((g8032
                                           (letrec*
                                            ((x8033
                                              (letrec*
                                               ((x8036
                                                 (begin
                                                   (write '(funapp 1763 44))
                                                   (display "\n")
                                                   ((lambda (j7410 k7411 f7412)
                                                      (letrec*
                                                       ((g8037
                                                         (lambda ()
                                                           (letrec*
                                                            ((g8038
                                                              (letrec*
                                                               ((x8039
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1770
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (f7412))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1771
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7410
                                                                  k7411
                                                                  x8039)))))
                                                            g8038))))
                                                       g8037))
                                                    j7407
                                                    k7408
                                                    g7404)))
                                                (x8035
                                                 (begin
                                                   (write '(funapp 1781 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7405)))
                                                (x8034
                                                 (begin
                                                   (write '(funapp 1783 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7406))))
                                               (begin
                                                 (write '(funapp 1784 42))
                                                 (display "\n")
                                                 (f7409 x8036 x8035 x8034)))))
                                            (begin
                                              (write '(funapp 1785 39))
                                              (display "\n")
                                              (real?/c j7407 k7408 x8033)))))
                                         g8032))))
                                    g8031))
                                 xj7402
                                 xk7403
                                 main))))
                            g8030)))
                         (x8028 (input))
                         (x8027 (input))
                         (x8026 (input)))
                        (begin
                          (write '(funapp 1795 21))
                          (display "\n")
                          (x8029 x8028 x8027 x8026)))))))))
               g8025))))
           g7441))))
       g7424)))
    g7423)))
