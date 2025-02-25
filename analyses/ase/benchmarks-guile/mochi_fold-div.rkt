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
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7566
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7568
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7569
                                 (letrec*
                                  ((x7570
                                    (letrec*
                                     ((x7572
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7571
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 561 36))
                                       (display "\n")
                                       (f7369 x7572 x7571)))))
                                  (begin
                                    (write '(funapp 562 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7570)))))
                               g7569))))
                          g7568))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7567
                            (begin
                              (write '(funapp 567 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7567))))))
                  g7566)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 571 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 571 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7573
                    (begin
                      (write '(funapp 574 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7575
                            (lambda (g7372)
                              (letrec*
                               ((g7576
                                 (letrec*
                                  ((x7577
                                    (letrec*
                                     ((x7578
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7375 x7578)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7577)))))
                               g7576))))
                          g7575))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7574
                            (begin
                              (write '(funapp 590 51))
                              (display "\n")
                              (orig-car p))))
                          g7574))))))
                  g7573)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 594 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 594 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7579
                    (begin
                      (write '(funapp 597 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7581
                            (lambda (g7378)
                              (letrec*
                               ((g7582
                                 (letrec*
                                  ((x7583
                                    (letrec*
                                     ((x7584
                                       (begin
                                         (write '(funapp 606 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 607 36))
                                       (display "\n")
                                       (f7381 x7584)))))
                                  (begin
                                    (write '(funapp 608 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7583)))))
                               g7582))))
                          g7581))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7580
                            (begin
                              (write '(funapp 613 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7580))))))
                  g7579)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 617 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 617 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7585
                    (begin
                      (write '(funapp 620 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7587
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7588
                                 (letrec*
                                  ((x7589
                                    (letrec*
                                     ((x7591
                                       (begin
                                         (write '(funapp 629 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7590
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 631 36))
                                       (display "\n")
                                       (f7388 x7591 x7590)))))
                                  (begin
                                    (write '(funapp 632 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7589)))))
                               g7588))))
                          g7587))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7586
                            (begin
                              (write '(funapp 638 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7586))))))
                  g7585)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 642 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 642 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7592
                    (begin
                      (write '(funapp 645 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7594
                            (lambda (g7391)
                              (letrec*
                               ((g7595
                                 (letrec*
                                  ((x7596
                                    (letrec*
                                     ((x7597
                                       (begin
                                         (write '(funapp 654 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 655 36))
                                       (display "\n")
                                       (f7394 x7597)))))
                                  (begin
                                    (write '(funapp 656 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7596)))))
                               g7595))))
                          g7594))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7593
                            (begin
                              (write '(funapp 662 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7593))))))
                  g7592)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 666 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 666 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7598
                    (begin
                      (write '(funapp 669 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7600
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7601
                                 (letrec*
                                  ((x7602
                                    (letrec*
                                     ((x7604
                                       (begin
                                         (write '(funapp 678 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7603
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 680 36))
                                       (display "\n")
                                       (f7401 x7604 x7603)))))
                                  (begin
                                    (write '(funapp 681 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7602)))))
                               g7601))))
                          g7600))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7599
                            (begin
                              (write '(funapp 687 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7599))))))
                  g7598)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (letrec*
                         ((x7607
                           (begin
                             (write '(funapp 694 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 694 58))
                           (display "\n")
                           (cdr x7607)))))
                      (begin
                        (write '(funapp 695 23))
                        (display "\n")
                        (cdr x7606)))))
                   g7605)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 701 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 701 62))
                        (display "\n")
                        (assert x7611))))
                    (g7609
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 702 57))
                        (display "\n")
                        (assert x7612))))
                    (g7610
                     (letrec*
                      ((x-cnd7613
                        (begin
                          (write '(funapp 705 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7613
                        (begin (write '(funapp 707 24)) (display "\n") '())
                        (letrec*
                         ((x7616
                           (letrec*
                            ((x7617
                              (begin
                                (write '(funapp 709 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 709 61))
                              (display "\n")
                              (f x7617))))
                          (x7614
                           (letrec*
                            ((x7615
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (map f x7615)))))
                         (begin
                           (write '(funapp 711 26))
                           (display "\n")
                           (cons x7616 x7614)))))))
                   g7610)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 716 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 716 55))
                        (display "\n")
                        (cdr x7619)))))
                   g7618)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7621
                        (letrec*
                         ((x7622
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 725 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 725 61))
                              (display "\n")
                              (car x7623)))))
                         (begin
                           (write '(funapp 726 26))
                           (display "\n")
                           (cdr x7622)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7621)))))
                   g7620)))
               (cdadar
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
                                (write '(funapp 736 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (cdr x7627)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7626)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7625)))))
                   g7624)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 744 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 744 60))
                        (display "\n")
                        (assert x7631))))
                    (g7629
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 746 59))
                        (display "\n")
                        (assert x7632))))
                    (g7630
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
                       ((g7633
                         (begin
                           (write '(funapp 752 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7634 res))
                       g7634))))
                   g7630)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7636
                        (letrec*
                         ((x7637
                           (begin
                             (write '(funapp 760 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 760 58))
                           (display "\n")
                           (cdr x7637)))))
                      (begin
                        (write '(funapp 761 23))
                        (display "\n")
                        (car x7636)))))
                   g7635)))
               (cdaadr
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
                                (write '(funapp 770 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 770 61))
                              (display "\n")
                              (car x7641)))))
                         (begin
                           (write '(funapp 771 26))
                           (display "\n")
                           (car x7640)))))
                      (begin
                        (write '(funapp 772 23))
                        (display "\n")
                        (cdr x7639)))))
                   g7638)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 777 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 777 57))
                        (display "\n")
                        (assert x7644))))
                    (g7643
                     (letrec*
                      ((x-cnd7645
                        (begin
                          (write '(funapp 780 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7645
                        #f
                        (letrec*
                         ((x-cnd7646
                           (letrec*
                            ((x7647
                              (begin
                                (write '(funapp 785 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 785 56))
                              (display "\n")
                              (eq? x7647 k)))))
                         (if x-cnd7646
                           (begin
                             (write '(funapp 787 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 788 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 788 55))
                              (display "\n")
                              (assq k x7648)))))))))
                   g7643)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 793 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (= 0 x7650)))))
                   g7649)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 798 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 798 57))
                        (display "\n")
                        (assert x7653))))
                    (g7652
                     (letrec*
                      ((x-cnd7654
                        (begin
                          (write '(funapp 801 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7654
                        ""
                        (letrec*
                         ((x7657
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 806 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 806 55))
                              (display "\n")
                              (char->string x7658))))
                          (x7655
                           (letrec*
                            ((x7656
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (list->string x7656)))))
                         (begin
                           (write '(funapp 809 26))
                           (display "\n")
                           (string-append x7657 x7655)))))))
                   g7652)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 814 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 814 58))
                        (display "\n")
                        (assert x7662))))
                    (g7660
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7663))))
                    (g7661
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 818 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7664
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 820 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7664))))
                   g7661)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7666
                        (letrec*
                         ((x7667
                           (letrec*
                            ((x7668
                              (begin
                                (write '(funapp 830 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 830 61))
                              (display "\n")
                              (cdr x7668)))))
                         (begin
                           (write '(funapp 831 26))
                           (display "\n")
                           (cdr x7667)))))
                      (begin
                        (write '(funapp 832 23))
                        (display "\n")
                        (cdr x7666)))))
                   g7665)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7672
                        (begin
                          (write '(funapp 837 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 837 57))
                        (display "\n")
                        (assert x7672))))
                    (g7670
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7673))))
                    (g7671
                     (letrec*
                      ((x-cnd7674
                        (begin
                          (write '(funapp 841 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7674
                        x
                        (letrec*
                         ((x7676
                           (begin
                             (write '(funapp 845 34))
                             (display "\n")
                             (cdr x)))
                          (x7675
                           (begin
                             (write '(funapp 845 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (list-tail x7676 x7675)))))))
                   g7671)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7677
                     (begin (write '(funapp 848 49)) (display "\n") '())))
                   g7677)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((x-cnd7679
                        (letrec*
                         ((x7680 #\a))
                         (begin
                           (write '(funapp 855 48))
                           (display "\n")
                           (char-ci>=? c x7680)))))
                      (if x-cnd7679
                        (letrec*
                         ((x7681 #\z))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci<=? c x7681)))
                        #f))))
                   g7678)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7683
                           (begin
                             (write '(funapp 866 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 866 62))
                           (display "\n")
                           (= x7683 9)))))
                      (letrec*
                       ((g7684
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7685
                                 (begin
                                   (write '(funapp 874 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 875 32))
                                 (display "\n")
                                 (= x7685 10)))))
                            (letrec*
                             ((g7686
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7687
                                    (begin
                                      (write '(funapp 881 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 882 35))
                                    (display "\n")
                                    (= x7687 32))))))
                             g7686)))))
                       g7684))))
                   g7682)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7688
                     (letrec*
                      ((x7689
                        (letrec*
                         ((x7690
                           (begin
                             (write '(funapp 891 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 891 58))
                           (display "\n")
                           (cdr x7690)))))
                      (begin
                        (write '(funapp 892 23))
                        (display "\n")
                        (cdr x7689)))))
                   g7688)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7691
                     (letrec*
                      ((x7693
                        (begin
                          (write '(funapp 897 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 897 59))
                        (display "\n")
                        (assert x7693))))
                    (g7692
                     (begin (write '(funapp 898 28)) (display "\n") (> x 0))))
                   g7692)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7694
                     (begin
                       (write '(funapp 900 59))
                       (display "\n")
                       (bool-top))))
                   g7694)))
               ($pc (begin (write '(funapp 901 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7695 #f)) g7695)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7696
                     (letrec*
                      ((x7697
                        (begin
                          (write '(funapp 907 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 907 55))
                        (display "\n")
                        (cdr x7697)))))
                   g7696)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7698
                     (letrec*
                      ((x7700
                        (begin
                          (write '(funapp 912 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 912 59))
                        (display "\n")
                        (assert x7700))))
                    (g7699
                     (letrec*
                      ((x-cnd7701
                        (begin
                          (write '(funapp 915 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7701
                        (begin
                          (write '(funapp 916 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 916 49))
                          (display "\n")
                          (floor x))))))
                   g7699)))
               ($cmp (begin (write '(funapp 918 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7702
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 924 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7703
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7704
                                 (begin
                                   (write '(funapp 932 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7704
                                 (begin
                                   (write '(funapp 933 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7705
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7706
                                       (begin
                                         (write '(funapp 941 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7706
                                       (letrec*
                                        ((x-cnd7707
                                          (begin
                                            (write '(funapp 944 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7707
                                          (begin
                                            (write '(funapp 945 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7708
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7709
                                             (begin
                                               (write '(funapp 954 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7709
                                             (letrec*
                                              ((x-cnd7710
                                                (begin
                                                  (write '(funapp 957 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7710
                                                (letrec*
                                                 ((x-cnd7711
                                                   (letrec*
                                                    ((x7713
                                                      (begin
                                                        (write
                                                         '(funapp 962 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7712
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 964 53))
                                                      (display "\n")
                                                      (equal? x7713 x7712)))))
                                                 (if x-cnd7711
                                                   (letrec*
                                                    ((x7715
                                                      (begin
                                                        (write
                                                         '(funapp 967 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7714
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 969 53))
                                                      (display "\n")
                                                      (equal? x7715 x7714)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7716
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7717
                                                (begin
                                                  (write '(funapp 978 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7717
                                                (letrec*
                                                 ((x-cnd7718
                                                   (begin
                                                     (write '(funapp 981 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7718
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 984 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7719
                                                       (letrec*
                                                        ((x-cnd7720
                                                          (letrec*
                                                           ((x7721
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
                                                             (= x7721 n)))))
                                                        (if x-cnd7720
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7722
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
                                                                    ((g7723
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7724
                                                                           (letrec*
                                                                            ((x7726
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
                                                                             (x7725
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
                                                                               x7726
                                                                               x7725)))))
                                                                         (if x-cnd7724
                                                                           (letrec*
                                                                            ((x7727
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
                                                                               x7727)))
                                                                           #f)))))
                                                                    g7723))))
                                                                g7722))))
                                                           (letrec*
                                                            ((g7728
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1033
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7728))
                                                          #f))))
                                                     g7719))
                                                   #f))
                                                #f)))))
                                         g7716)))))
                                   g7708)))))
                             g7705)))))
                       g7703))))
                   g7702)))
               (cdaaar
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
                                (write '(funapp 1051 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1051 61))
                              (display "\n")
                              (car x7732)))))
                         (begin
                           (write '(funapp 1052 26))
                           (display "\n")
                           (car x7731)))))
                      (begin
                        (write '(funapp 1053 23))
                        (display "\n")
                        (cdr x7730)))))
                   g7729)))
               (caaddr
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
                                (write '(funapp 1062 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1062 61))
                              (display "\n")
                              (cdr x7736)))))
                         (begin
                           (write '(funapp 1063 26))
                           (display "\n")
                           (car x7735)))))
                      (begin
                        (write '(funapp 1064 23))
                        (display "\n")
                        (car x7734)))))
                   g7733)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7737
                     (begin
                       (write '(funapp 1066 53))
                       (display "\n")
                       (eq? x y))))
                   g7737)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7741
                        (begin
                          (write '(funapp 1071 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1071 60))
                        (display "\n")
                        (assert x7741))))
                    (g7739
                     (letrec*
                      ((x7742
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1073 59))
                        (display "\n")
                        (assert x7742))))
                    (g7740
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
                       ((g7743
                         (begin
                           (write '(funapp 1079 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7744 res))
                       g7744))))
                   g7740)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7745
                     (begin
                       (write '(funapp 1082 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1082 57))
                          (display "\n")
                          '())))))
                   g7745)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1086 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1086 58))
                        (display "\n")
                        (assert x7749))))
                    (g7747
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7750))))
                    (g7748
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1090 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7751
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1092 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7751))))
                   g7748)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7753
                        (letrec*
                         ((x7754
                           (begin
                             (write '(funapp 1100 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1100 58))
                           (display "\n")
                           (car x7754)))))
                      (begin
                        (write '(funapp 1101 23))
                        (display "\n")
                        (cdr x7753)))))
                   g7752)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 1110 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1110 61))
                              (display "\n")
                              (cdr x7758)))))
                         (begin
                           (write '(funapp 1111 26))
                           (display "\n")
                           (car x7757)))))
                      (begin
                        (write '(funapp 1112 23))
                        (display "\n")
                        (cdr x7756)))))
                   g7755)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (begin
                             (write '(funapp 1120 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1120 58))
                           (display "\n")
                           (cdr x7761)))))
                      (begin
                        (write '(funapp 1121 23))
                        (display "\n")
                        (car x7760)))))
                   g7759)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7763
                        (letrec*
                         ((x7764
                           (begin
                             (write '(funapp 1128 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1128 58))
                           (display "\n")
                           (car x7764)))))
                      (begin
                        (write '(funapp 1129 23))
                        (display "\n")
                        (car x7763)))))
                   g7762)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1134 58))
                        (display "\n")
                        (assert x7768))))
                    (g7766
                     (letrec*
                      ((x7769
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7769))))
                    (g7767
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1136 66))
                        (display "\n")
                        (not x7770)))))
                   g7767)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7772
                        (letrec*
                         ((x7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (car x7774)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (car x7773)))))
                      (begin
                        (write '(funapp 1148 23))
                        (display "\n")
                        (car x7772)))))
                   g7771)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 1153 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1153 59))
                        (display "\n")
                        (assert x7777))))
                    (g7776
                     (begin (write '(funapp 1154 28)) (display "\n") (< x 0))))
                   g7776)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7778
                     (begin
                       (write '(funapp 1156 53))
                       (display "\n")
                       (memq e l))))
                   g7778)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7780
                        (letrec*
                         ((x7781
                           (begin
                             (write '(funapp 1162 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1162 58))
                           (display "\n")
                           (car x7781)))))
                      (begin
                        (write '(funapp 1163 23))
                        (display "\n")
                        (car x7780)))))
                   g7779)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7782
                     (begin (write '(funapp 1165 51)) (display "\n") '())))
                   g7782)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1169 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1169 57))
                        (display "\n")
                        (assert x7785))))
                    (g7784
                     (letrec*
                      ((x-cnd7786
                        (begin
                          (write '(funapp 1172 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7786
                        (begin (write '(funapp 1174 24)) (display "\n") '())
                        (letrec*
                         ((x7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1176 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1176 61))
                              (display "\n")
                              (reverse x7790))))
                          (x7787
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (list x7788)))))
                         (begin
                           (write '(funapp 1178 26))
                           (display "\n")
                           (append x7789 x7787)))))))
                   g7784)))
               (caaadr
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
                                (write '(funapp 1187 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1187 61))
                              (display "\n")
                              (car x7794)))))
                         (begin
                           (write '(funapp 1188 26))
                           (display "\n")
                           (car x7793)))))
                      (begin
                        (write '(funapp 1189 23))
                        (display "\n")
                        (car x7792)))))
                   g7791)))
               (cddadr
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
                                (write '(funapp 1198 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1198 61))
                              (display "\n")
                              (car x7798)))))
                         (begin
                           (write '(funapp 1199 26))
                           (display "\n")
                           (cdr x7797)))))
                      (begin
                        (write '(funapp 1200 23))
                        (display "\n")
                        (cdr x7796)))))
                   g7795)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1205 59))
                        (display "\n")
                        (assert x7801))))
                    (g7800
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1206 60))
                        (display "\n")
                        (= 1 x7802)))))
                   g7800)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7804
                        (letrec*
                         ((x7805
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 1215 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1215 61))
                              (display "\n")
                              (cdr x7806)))))
                         (begin
                           (write '(funapp 1216 26))
                           (display "\n")
                           (car x7805)))))
                      (begin
                        (write '(funapp 1217 23))
                        (display "\n")
                        (car x7804)))))
                   g7803)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1223 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1223 59))
                        (display "\n")
                        (assert x7810))))
                    (g7808
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1224 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1224 60))
                        (display "\n")
                        (assert x7811))))
                    (g7809
                     (letrec*
                      ((x-cnd7812
                        (begin
                          (write '(funapp 1227 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7812
                        (letrec*
                         ((g7813
                           (begin
                             (write '(funapp 1229 42))
                             (display "\n")
                             (proc))))
                         g7813)
                        (letrec*
                         ((x-cnd7814
                           (letrec*
                            ((x7815
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1232 58))
                              (display "\n")
                              (null? x7815)))))
                         (if x-cnd7814
                           (letrec*
                            ((g7816
                              (letrec*
                               ((x7817
                                 (begin
                                   (write '(funapp 1236 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1236 61))
                                 (display "\n")
                                 (proc x7817)))))
                            g7816)
                           (letrec*
                            ((x-cnd7818
                              (letrec*
                               ((x7819
                                 (begin
                                   (write '(funapp 1240 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1240 62))
                                 (display "\n")
                                 (null? x7819)))))
                            (if x-cnd7818
                              (letrec*
                               ((g7820
                                 (letrec*
                                  ((x7822
                                    (begin
                                      (write '(funapp 1245 43))
                                      (display "\n")
                                      (car args)))
                                   (x7821
                                    (begin
                                      (write '(funapp 1245 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1246 35))
                                    (display "\n")
                                    (proc x7822 x7821)))))
                               g7820)
                              (letrec*
                               ((x-cnd7823
                                 (letrec*
                                  ((x7824
                                    (begin
                                      (write '(funapp 1251 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1252 35))
                                    (display "\n")
                                    (null? x7824)))))
                               (if x-cnd7823
                                 (letrec*
                                  ((g7825
                                    (letrec*
                                     ((x7828
                                       (begin
                                         (write '(funapp 1257 46))
                                         (display "\n")
                                         (car args)))
                                      (x7827
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7826
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1260 38))
                                       (display "\n")
                                       (proc x7828 x7827 x7826)))))
                                  g7825)
                                 (letrec*
                                  ((x-cnd7829
                                    (letrec*
                                     ((x7830
                                       (begin
                                         (write '(funapp 1265 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1266 38))
                                       (display "\n")
                                       (null? x7830)))))
                                  (if x-cnd7829
                                    (letrec*
                                     ((g7831
                                       (letrec*
                                        ((x7835
                                          (begin
                                            (write '(funapp 1271 49))
                                            (display "\n")
                                            (car args)))
                                         (x7834
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7833
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7832
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1275 41))
                                          (display "\n")
                                          (proc x7835 x7834 x7833 x7832)))))
                                     g7831)
                                    (letrec*
                                     ((x-cnd7836
                                       (letrec*
                                        ((x7837
                                          (letrec*
                                           ((x7838
                                             (begin
                                               (write '(funapp 1282 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1283 44))
                                             (display "\n")
                                             (cdr x7838)))))
                                        (begin
                                          (write '(funapp 1284 41))
                                          (display "\n")
                                          (null? x7837)))))
                                     (if x-cnd7836
                                       (letrec*
                                        ((g7839
                                          (letrec*
                                           ((x7845
                                             (begin
                                               (write '(funapp 1289 52))
                                               (display "\n")
                                               (car args)))
                                            (x7844
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7843
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7842
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7840
                                             (letrec*
                                              ((x7841
                                                (begin
                                                  (write '(funapp 1295 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1296 47))
                                                (display "\n")
                                                (car x7841)))))
                                           (begin
                                             (write '(funapp 1297 44))
                                             (display "\n")
                                             (proc
                                              x7845
                                              x7844
                                              x7843
                                              x7842
                                              x7840)))))
                                        g7839)
                                       (letrec*
                                        ((x-cnd7846
                                          (letrec*
                                           ((x7847
                                             (letrec*
                                              ((x7848
                                                (begin
                                                  (write '(funapp 1309 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1310 47))
                                                (display "\n")
                                                (cddr x7848)))))
                                           (begin
                                             (write '(funapp 1311 44))
                                             (display "\n")
                                             (null? x7847)))))
                                        (if x-cnd7846
                                          (letrec*
                                           ((g7849
                                             (letrec*
                                              ((x7857
                                                (begin
                                                  (write '(funapp 1316 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7856
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7855
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7854
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7852
                                                (letrec*
                                                 ((x7853
                                                   (begin
                                                     (write '(funapp 1322 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1323 50))
                                                   (display "\n")
                                                   (car x7853))))
                                               (x7850
                                                (letrec*
                                                 ((x7851
                                                   (begin
                                                     (write '(funapp 1326 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1327 50))
                                                   (display "\n")
                                                   (cadr x7851)))))
                                              (begin
                                                (write '(funapp 1328 47))
                                                (display "\n")
                                                (proc
                                                 x7857
                                                 x7856
                                                 x7855
                                                 x7854
                                                 x7852
                                                 x7850)))))
                                           g7849)
                                          (letrec*
                                           ((x-cnd7858
                                             (letrec*
                                              ((x7859
                                                (letrec*
                                                 ((x7860
                                                   (begin
                                                     (write '(funapp 1341 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1342 50))
                                                   (display "\n")
                                                   (cdddr x7860)))))
                                              (begin
                                                (write '(funapp 1343 47))
                                                (display "\n")
                                                (null? x7859)))))
                                           (if x-cnd7858
                                             (letrec*
                                              ((g7861
                                                (letrec*
                                                 ((x7871
                                                   (begin
                                                     (write '(funapp 1348 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7870
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7869
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7868
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7866
                                                   (letrec*
                                                    ((x7867
                                                      (begin
                                                        (write
                                                         '(funapp 1354 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1355 53))
                                                      (display "\n")
                                                      (car x7867))))
                                                  (x7864
                                                   (letrec*
                                                    ((x7865
                                                      (begin
                                                        (write
                                                         '(funapp 1358 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1359 53))
                                                      (display "\n")
                                                      (cadr x7865))))
                                                  (x7862
                                                   (letrec*
                                                    ((x7863
                                                      (begin
                                                        (write
                                                         '(funapp 1362 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1363 53))
                                                      (display "\n")
                                                      (caddr x7863)))))
                                                 (begin
                                                   (write '(funapp 1364 50))
                                                   (display "\n")
                                                   (proc
                                                    x7871
                                                    x7870
                                                    x7869
                                                    x7868
                                                    x7866
                                                    x7864
                                                    x7862)))))
                                              g7861)
                                             (letrec*
                                              ((g7872
                                                (begin
                                                  (write '(funapp 1375 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7872)))))))))))))))))))
                   g7809)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7875
                        (begin
                          (write '(funapp 1381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1381 57))
                        (display "\n")
                        (assert x7875))))
                    (g7874
                     (letrec*
                      ((x-cnd7876
                        (begin
                          (write '(funapp 1384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7876
                        #f
                        (letrec*
                         ((x-cnd7877
                           (letrec*
                            ((x7878
                              (begin
                                (write '(funapp 1389 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1389 55))
                              (display "\n")
                              (equal? x7878 e)))))
                         (if x-cnd7877
                           l
                           (letrec*
                            ((x7879
                              (begin
                                (write '(funapp 1392 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1392 55))
                              (display "\n")
                              (member e x7879)))))))))
                   g7874)))
               (cddddr
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
                                (write '(funapp 1401 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1401 61))
                              (display "\n")
                              (cdr x7883)))))
                         (begin
                           (write '(funapp 1402 26))
                           (display "\n")
                           (cdr x7882)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (cdr x7881)))))
                   g7880)))
               (cadddr
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
                                (write '(funapp 1412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1412 61))
                              (display "\n")
                              (cdr x7887)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cdr x7886)))))
                      (begin
                        (write '(funapp 1414 23))
                        (display "\n")
                        (car x7885)))))
                   g7884)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7888
                     (begin
                       (write '(funapp 1416 53))
                       (display "\n")
                       (random 42))))
                   g7888)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7891
                        (begin
                          (write '(funapp 1420 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1420 59))
                        (display "\n")
                        (assert x7891))))
                    (g7890
                     (begin (write '(funapp 1421 28)) (display "\n") (= x 0))))
                   g7890)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1428 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7893
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1430 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7893))))
                   g7892)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1436 55))
                        (display "\n")
                        (car x7895)))))
                   g7894)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7897
                           (begin
                             (write '(funapp 1446 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7897
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1448 55))
                              (display "\n")
                              (list? x7898)))
                           #f))))
                      (letrec*
                       ((g7899
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1451 52))
                             (display "\n")
                             (null? l)))))
                       g7899))))
                   g7896)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7901
                        (letrec*
                         ((x7902
                           (letrec*
                            ((x7903
                              (begin
                                (write '(funapp 1461 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1461 61))
                              (display "\n")
                              (car x7903)))))
                         (begin
                           (write '(funapp 1462 26))
                           (display "\n")
                           (cdr x7902)))))
                      (begin
                        (write '(funapp 1463 23))
                        (display "\n")
                        (cdr x7901)))))
                   g7900)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x-cnd7905
                        (letrec*
                         ((x7906 #\0))
                         (begin
                           (write '(funapp 1470 58))
                           (display "\n")
                           (char<=? x7906 c)))))
                      (if x-cnd7905
                        (letrec*
                         ((x7907 #\9))
                         (begin
                           (write '(funapp 1472 48))
                           (display "\n")
                           (char<=? c x7907)))
                        #f))))
                   g7904)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1479 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1479 57))
                        (display "\n")
                        (assert x7910))))
                    (g7909
                     (letrec*
                      ((x-cnd7911
                        (begin
                          (write '(funapp 1482 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7911
                        #f
                        (letrec*
                         ((x-cnd7912
                           (letrec*
                            ((x7913
                              (begin
                                (write '(funapp 1487 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1487 56))
                              (display "\n")
                              (eqv? x7913 k)))))
                         (if x-cnd7912
                           (begin
                             (write '(funapp 1489 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7914
                              (begin
                                (write '(funapp 1490 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1490 55))
                              (display "\n")
                              (assq k x7914)))))))))
                   g7909)))
               (not (lambda (x) (letrec* ((g7915 (if x #f #t))) g7915)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7916
                     (begin
                       (write '(funapp 1494 50))
                       (display "\n")
                       (append l1 l2))))
                   g7916)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 1498 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1498 57))
                        (display "\n")
                        (assert x7919))))
                    (g7918
                     (letrec*
                      ((x-cnd7920
                        (begin
                          (write '(funapp 1501 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7920
                        #f
                        (letrec*
                         ((x-cnd7921
                           (letrec*
                            ((x7922
                              (begin
                                (write '(funapp 1506 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1506 55))
                              (display "\n")
                              (eq? x7922 e)))))
                         (if x-cnd7921
                           l
                           (letrec*
                            ((x7923
                              (begin
                                (write '(funapp 1509 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1509 55))
                              (display "\n")
                              (memq e x7923)))))))))
                   g7918)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7925
                        (letrec*
                         ((x7926
                           (letrec*
                            ((x7927
                              (begin
                                (write '(funapp 1518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1518 61))
                              (display "\n")
                              (car x7927)))))
                         (begin
                           (write '(funapp 1519 26))
                           (display "\n")
                           (cdr x7926)))))
                      (begin
                        (write '(funapp 1520 23))
                        (display "\n")
                        (car x7925)))))
                   g7924)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1525 57))
                        (display "\n")
                        (assert x7930))))
                    (g7929
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7931
                             (letrec*
                              ((x-cnd7932
                                (begin
                                  (write '(funapp 1533 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7932
                                0
                                (letrec*
                                 ((x7933
                                   (letrec*
                                    ((x7934
                                      (begin
                                        (write '(funapp 1538 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1538 63))
                                      (display "\n")
                                      (rec x7934)))))
                                 (begin
                                   (write '(funapp 1539 34))
                                   (display "\n")
                                   (+ 1 x7933)))))))
                           g7931))))
                      (letrec*
                       ((g7935
                         (begin
                           (write '(funapp 1541 40))
                           (display "\n")
                           (rec l))))
                       g7935))))
                   g7929)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1546 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1546 58))
                        (display "\n")
                        (assert x7939))))
                    (g7937
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7940))))
                    (g7938
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1550 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7941
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1552 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7941))))
                   g7938)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1558 65))
                        (display "\n")
                        (not x7943)))))
                   g7942)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7945
                        (letrec*
                         ((x7946
                           (begin
                             (write '(funapp 1565 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1565 58))
                           (display "\n")
                           (car x7946)))))
                      (begin
                        (write '(funapp 1566 23))
                        (display "\n")
                        (cdr x7945)))))
                   g7944)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1571 57))
                        (display "\n")
                        (assert x7949))))
                    (g7948
                     (letrec*
                      ((x-cnd7950
                        (begin
                          (write '(funapp 1574 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7950
                        #f
                        (letrec*
                         ((x-cnd7951
                           (letrec*
                            ((x7952
                              (begin
                                (write '(funapp 1579 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1579 56))
                              (display "\n")
                              (equal? x7952 k)))))
                         (if x-cnd7951
                           (begin
                             (write '(funapp 1581 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7953
                              (begin
                                (write '(funapp 1582 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1582 55))
                              (display "\n")
                              (assoc k x7953)))))))))
                   g7948)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1587 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1587 55))
                        (display "\n")
                        (car x7955)))))
                   g7954)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7959))))
                    (g7957
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7960))))
                    (g7958
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1594 63))
                        (display "\n")
                        (not x7961)))))
                   g7958)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1601 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7963
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1603 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7963))))
                   g7962)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1609 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1609 62))
                        (display "\n")
                        (assert x7967))))
                    (g7965
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1610 57))
                        (display "\n")
                        (assert x7968))))
                    (g7966
                     (letrec*
                      ((x-cnd7969
                        (begin
                          (write '(funapp 1613 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7969
                        #t
                        (letrec*
                         ((x-cnd7970
                           (begin
                             (write '(funapp 1617 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7970
                           (letrec*
                            ((g7971
                              (letrec*
                               ((x7973
                                 (begin
                                   (write '(funapp 1620 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1620 64))
                                 (display "\n")
                                 (f x7973))))
                             (g7972
                              (letrec*
                               ((x7974
                                 (begin
                                   (write '(funapp 1622 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1622 58))
                                 (display "\n")
                                 (for-each f x7974)))))
                            g7972)
                           (begin
                             (write '(funapp 1624 27))
                             (display "\n")
                             '())))))))
                   g7966)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 1629 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1629 59))
                        (display "\n")
                        (assert x7977))))
                    (g7976
                     (letrec*
                      ((x-cnd7978
                        (begin
                          (write '(funapp 1631 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7978
                        (begin
                          (write '(funapp 1631 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7976)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x7982
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1636 58))
                        (display "\n")
                        (assert x7982))))
                    (g7980
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7983))))
                    (g7981
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1640 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7984
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1642 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7984))))
                   g7981)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x7986
                        (letrec*
                         ((x7987
                           (letrec*
                            ((x7988
                              (begin
                                (write '(funapp 1652 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1652 61))
                              (display "\n")
                              (cdr x7988)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (cdr x7987)))))
                      (begin
                        (write '(funapp 1654 23))
                        (display "\n")
                        (car x7986)))))
                   g7985)))
               (newline (lambda () (letrec* ((g7989 #f)) g7989)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x7992
                        (letrec*
                         ((x7993
                           (begin
                             (write '(funapp 1662 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1662 58))
                           (display "\n")
                           (abs x7993))))
                       (x7991
                        (begin
                          (write '(funapp 1663 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1664 23))
                        (display "\n")
                        (/ x7992 x7991)))))
                   g7990)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x7998
                        (begin
                          (write '(funapp 1670 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (assert x7998))))
                    (g7995
                     (letrec*
                      ((x7999
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1671 63))
                        (display "\n")
                        (assert x7999))))
                    (g7996
                     (letrec*
                      ((x8000
                        (letrec*
                         ((x8001
                           (begin
                             (write '(funapp 1674 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1674 61))
                           (display "\n")
                           (< index x8001)))))
                      (begin
                        (write '(funapp 1675 23))
                        (display "\n")
                        (assert x8000))))
                    (g7997
                     (letrec*
                      ((x-cnd8002
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8002
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8004
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (cdr l)))
                          (x8003
                           (begin
                             (write '(funapp 1682 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1683 26))
                           (display "\n")
                           (list-ref x8004 x8003)))))))
                   g7997)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((x-cnd8006
                        (begin
                          (write '(funapp 1690 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8006
                        a
                        (letrec*
                         ((x8007
                           (begin
                             (write '(funapp 1693 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1693 57))
                           (display "\n")
                           (gcd b x8007)))))))
                   g8005)))
               (foldl
                (lambda (f z l)
                  (letrec*
                   ((g8008
                     (letrec*
                      ((x-cnd8009
                        (begin
                          (write '(funapp 1700 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd8009
                        z
                        (letrec*
                         ((x8011
                           (letrec*
                            ((x8012
                              (begin
                                (write '(funapp 1704 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1704 61))
                              (display "\n")
                              (f z x8012))))
                          (x8010
                           (begin
                             (write '(funapp 1705 34))
                             (display "\n")
                             (cdr l))))
                         (begin
                           (write '(funapp 1706 26))
                           (display "\n")
                           (foldl f x8011 x8010)))))))
                   g8008)))
               (randpos
                (lambda (rand)
                  (letrec*
                   ((g8013
                     (letrec*
                      ((n
                        (begin
                          (write '(funapp 1713 27))
                          (display "\n")
                          (rand))))
                      (letrec*
                       ((g8014
                         (letrec*
                          ((x-cnd8015
                            (begin
                              (write '(funapp 1717 39))
                              (display "\n")
                              (> n 0))))
                          (if x-cnd8015
                            n
                            (begin
                              (write '(funapp 1718 43))
                              (display "\n")
                              (randpos rand))))))
                       g8014))))
                   g8013)))
               (mk-list
                (lambda (rand n)
                  (letrec*
                   ((g8016
                     (letrec*
                      ((x-cnd8017
                        (begin
                          (write '(funapp 1726 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd8017
                        empty
                        (letrec*
                         ((x8020
                           (begin
                             (write '(funapp 1730 34))
                             (display "\n")
                             (randpos rand)))
                          (x8018
                           (letrec*
                            ((x8019
                              (begin
                                (write '(funapp 1732 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1732 55))
                              (display "\n")
                              (mk-list rand x8019)))))
                         (begin
                           (write '(funapp 1733 26))
                           (display "\n")
                           (cons x8020 x8018)))))))
                   g8016)))
               (main
                (lambda (rand n m)
                  (letrec*
                   ((g8021
                     (letrec*
                      ((x8022
                        (begin
                          (write '(funapp 1739 39))
                          (display "\n")
                          (mk-list rand n))))
                      (begin
                        (write '(funapp 1739 58))
                        (display "\n")
                        (foldl / m x8022)))))
                   g8021))))
              (letrec*
               ((g8023
                 (begin
                   (write '(funapp 1743 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1744 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8027
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
                            ((g8028
                              (begin
                                (write '(funapp 1751 27))
                                (display "\n")
                                ((lambda (j7407 k7408 f7409)
                                   (letrec*
                                    ((g8029
                                      (lambda (g7404 g7405 g7406)
                                        (letrec*
                                         ((g8030
                                           (letrec*
                                            ((x8031
                                              (letrec*
                                               ((x8034
                                                 (begin
                                                   (write '(funapp 1761 44))
                                                   (display "\n")
                                                   ((lambda (j7410 k7411 f7412)
                                                      (letrec*
                                                       ((g8035
                                                         (lambda ()
                                                           (letrec*
                                                            ((g8036
                                                              (letrec*
                                                               ((x8037
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1768
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (f7412))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1769
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7410
                                                                  k7411
                                                                  x8037)))))
                                                            g8036))))
                                                       g8035))
                                                    j7407
                                                    k7408
                                                    g7404)))
                                                (x8033
                                                 (begin
                                                   (write '(funapp 1779 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7405)))
                                                (x8032
                                                 (begin
                                                   (write '(funapp 1781 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7406))))
                                               (begin
                                                 (write '(funapp 1782 42))
                                                 (display "\n")
                                                 (f7409 x8034 x8033 x8032)))))
                                            (begin
                                              (write '(funapp 1783 39))
                                              (display "\n")
                                              (real?/c j7407 k7408 x8031)))))
                                         g8030))))
                                    g8029))
                                 xj7402
                                 xk7403
                                 main))))
                            g8028)))
                         (x8026 (input))
                         (x8025 (input))
                         (x8024 (input)))
                        (begin
                          (write '(funapp 1793 21))
                          (display "\n")
                          (x8027 x8026 x8025 x8024)))))))))
               g8023))))
           g7441))))
       g7424)))
    g7423)))
