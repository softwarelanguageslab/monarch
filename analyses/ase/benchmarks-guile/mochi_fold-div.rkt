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
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7567
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7569
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7570
                                 (letrec*
                                  ((x7571
                                    (letrec*
                                     ((x7573
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7572
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7369 x7573 x7572)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7571)))))
                               g7570))))
                          g7569))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7568
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7568))))))
                  g7567)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7574
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7576
                            (lambda (g7372)
                              (letrec*
                               ((g7577
                                 (letrec*
                                  ((x7578
                                    (letrec*
                                     ((x7579
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7375 x7579)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7578)))))
                               g7577))))
                          g7576))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7575
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7575))))))
                  g7574)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7580
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7582
                            (lambda (g7378)
                              (letrec*
                               ((g7583
                                 (letrec*
                                  ((x7584
                                    (letrec*
                                     ((x7585
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7381 x7585)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7584)))))
                               g7583))))
                          g7582))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7581
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7581))))))
                  g7580)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7586
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7588
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7589
                                 (letrec*
                                  ((x7590
                                    (letrec*
                                     ((x7592
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7591
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7388 x7592 x7591)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7590)))))
                               g7589))))
                          g7588))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7587
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7587))))))
                  g7586)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7593
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7595
                            (lambda (g7391)
                              (letrec*
                               ((g7596
                                 (letrec*
                                  ((x7597
                                    (letrec*
                                     ((x7598
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7394 x7598)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7597)))))
                               g7596))))
                          g7595))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7594
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7594))))))
                  g7593)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7599
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7601
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7602
                                 (letrec*
                                  ((x7603
                                    (letrec*
                                     ((x7605
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7604
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7401 x7605 x7604)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7603)))))
                               g7602))))
                          g7601))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7600
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7600))))))
                  g7599)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7607
                        (letrec*
                         ((x7608
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7608)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7607)))))
                   g7606)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7612))))
                    (g7610
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7613))))
                    (g7611
                     (letrec*
                      ((x-cnd7614
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7614
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7617
                           (letrec*
                            ((x7618
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7618))))
                          (x7615
                           (letrec*
                            ((x7616
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7616)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7617 x7615)))))))
                   g7611)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7620)))))
                   g7619)))
               (cadadr
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
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7624)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7623)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7622)))))
                   g7621)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (letrec*
                         ((x7627
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7628)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7627)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7626)))))
                   g7625)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7632))))
                    (g7630
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7633))))
                    (g7631
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
                       ((g7634
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7635 res))
                       g7635))))
                   g7631)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7637
                        (letrec*
                         ((x7638
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7638)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7637)))))
                   g7636)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7640
                        (letrec*
                         ((x7641
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7642)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7641)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7640)))))
                   g7639)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7645))))
                    (g7644
                     (letrec*
                      ((x-cnd7646
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7646
                        #f
                        (letrec*
                         ((x-cnd7647
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7648 k)))))
                         (if x-cnd7647
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7649)))))))))
                   g7644)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7651)))))
                   g7650)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7654))))
                    (g7653
                     (letrec*
                      ((x-cnd7655
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7655
                        ""
                        (letrec*
                         ((x7658
                           (letrec*
                            ((x7659
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7659))))
                          (x7656
                           (letrec*
                            ((x7657
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7657)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7658 x7656)))))))
                   g7653)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7663))))
                    (g7661
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7664))))
                    (g7662
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7665
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7665))))
                   g7662)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x7667
                        (letrec*
                         ((x7668
                           (letrec*
                            ((x7669
                              (begin
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7669)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7668)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7667)))))
                   g7666)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7673))))
                    (g7671
                     (letrec*
                      ((x7674
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7674))))
                    (g7672
                     (letrec*
                      ((x-cnd7675
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7675
                        x
                        (letrec*
                         ((x7677
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7676
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7677 x7676)))))))
                   g7672)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7678
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7678)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7679
                     (letrec*
                      ((x-cnd7680
                        (letrec*
                         ((x7681 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7681)))))
                      (if x-cnd7680
                        (letrec*
                         ((x7682 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7682)))
                        #f))))
                   g7679)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7684
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7684 9)))))
                      (letrec*
                       ((g7685
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7686
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7686 10)))))
                            (letrec*
                             ((g7687
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7688
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7688 32))))))
                             g7687)))))
                       g7685))))
                   g7683)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x7690
                        (letrec*
                         ((x7691
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7691)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7690)))))
                   g7689)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7692
                     (letrec*
                      ((x7694
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7694))))
                    (g7693
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7693)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7695
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7695)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7696 #f)) g7696)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7697
                     (letrec*
                      ((x7698
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7698)))))
                   g7697)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7699
                     (letrec*
                      ((x7701
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7701))))
                    (g7700
                     (letrec*
                      ((x-cnd7702
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7702
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7700)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7703
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7704
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7705
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7705
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7706
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7707
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7707
                                       (letrec*
                                        ((x-cnd7708
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7708
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7709
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7710
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7710
                                             (letrec*
                                              ((x-cnd7711
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7711
                                                (letrec*
                                                 ((x-cnd7712
                                                   (letrec*
                                                    ((x7714
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7713
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7714 x7713)))))
                                                 (if x-cnd7712
                                                   (letrec*
                                                    ((x7716
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7715
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7716 x7715)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7717
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7718
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7718
                                                (letrec*
                                                 ((x-cnd7719
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7719
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7720
                                                       (letrec*
                                                        ((x-cnd7721
                                                          (letrec*
                                                           ((x7722
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
                                                             (= x7722 n)))))
                                                        (if x-cnd7721
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7723
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
                                                                    ((g7724
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7725
                                                                           (letrec*
                                                                            ((x7727
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
                                                                             (x7726
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
                                                                               x7727
                                                                               x7726)))))
                                                                         (if x-cnd7725
                                                                           (letrec*
                                                                            ((x7728
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
                                                                               x7728)))
                                                                           #f)))))
                                                                    g7724))))
                                                                g7723))))
                                                           (letrec*
                                                            ((g7729
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7729))
                                                          #f))))
                                                     g7720))
                                                   #f))
                                                #f)))))
                                         g7717)))))
                                   g7709)))))
                             g7706)))))
                       g7704))))
                   g7703)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7731
                        (letrec*
                         ((x7732
                           (letrec*
                            ((x7733
                              (begin
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7733)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7732)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x7731)))))
                   g7730)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7735
                        (letrec*
                         ((x7736
                           (letrec*
                            ((x7737
                              (begin
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7737)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7736)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7735)))))
                   g7734)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7738
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g7738)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7742
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7742))))
                    (g7740
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7743))))
                    (g7741
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
                       ((g7744
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7745 res))
                       g7745))))
                   g7741)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7746
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g7746)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7750))))
                    (g7748
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7751))))
                    (g7749
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7752
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7752))))
                   g7749)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7754
                        (letrec*
                         ((x7755
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7755)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7754)))))
                   g7753)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (letrec*
                         ((x7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7759)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7758)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x7757)))))
                   g7756)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7761
                        (letrec*
                         ((x7762
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x7762)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x7761)))))
                   g7760)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7764
                        (letrec*
                         ((x7765
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x7765)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x7764)))))
                   g7763)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7769
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
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
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x7771)))))
                   g7768)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7773
                        (letrec*
                         ((x7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x7775)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x7774)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x7773)))))
                   g7772)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x7778))))
                    (g7777
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g7777)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7779
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g7779)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7781
                        (letrec*
                         ((x7782
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x7782)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x7781)))))
                   g7780)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7783
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g7783)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x7786))))
                    (g7785
                     (letrec*
                      ((x-cnd7787
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7787
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x7791))))
                          (x7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x7789)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x7790 x7788)))))))
                   g7785)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7793
                        (letrec*
                         ((x7794
                           (letrec*
                            ((x7795
                              (begin
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x7795)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x7794)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x7793)))))
                   g7792)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7797
                        (letrec*
                         ((x7798
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x7799)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x7798)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x7797)))))
                   g7796)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x7802))))
                    (g7801
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x7803)))))
                   g7801)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7805
                        (letrec*
                         ((x7806
                           (letrec*
                            ((x7807
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x7807)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x7806)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7805)))))
                   g7804)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x7811))))
                    (g7809
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x7812))))
                    (g7810
                     (letrec*
                      ((x-cnd7813
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7813
                        (letrec*
                         ((g7814
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g7814)
                        (letrec*
                         ((x-cnd7815
                           (letrec*
                            ((x7816
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x7816)))))
                         (if x-cnd7815
                           (letrec*
                            ((g7817
                              (letrec*
                               ((x7818
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x7818)))))
                            g7817)
                           (letrec*
                            ((x-cnd7819
                              (letrec*
                               ((x7820
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x7820)))))
                            (if x-cnd7819
                              (letrec*
                               ((g7821
                                 (letrec*
                                  ((x7823
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x7822
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x7823 x7822)))))
                               g7821)
                              (letrec*
                               ((x-cnd7824
                                 (letrec*
                                  ((x7825
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x7825)))))
                               (if x-cnd7824
                                 (letrec*
                                  ((g7826
                                    (letrec*
                                     ((x7829
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x7828
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7827
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x7829 x7828 x7827)))))
                                  g7826)
                                 (letrec*
                                  ((x-cnd7830
                                    (letrec*
                                     ((x7831
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x7831)))))
                                  (if x-cnd7830
                                    (letrec*
                                     ((g7832
                                       (letrec*
                                        ((x7836
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x7835
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7834
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7833
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x7836 x7835 x7834 x7833)))))
                                     g7832)
                                    (letrec*
                                     ((x-cnd7837
                                       (letrec*
                                        ((x7838
                                          (letrec*
                                           ((x7839
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x7839)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x7838)))))
                                     (if x-cnd7837
                                       (letrec*
                                        ((g7840
                                          (letrec*
                                           ((x7846
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x7845
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7844
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7843
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7841
                                             (letrec*
                                              ((x7842
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x7842)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x7846
                                              x7845
                                              x7844
                                              x7843
                                              x7841)))))
                                        g7840)
                                       (letrec*
                                        ((x-cnd7847
                                          (letrec*
                                           ((x7848
                                             (letrec*
                                              ((x7849
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x7849)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x7848)))))
                                        (if x-cnd7847
                                          (letrec*
                                           ((g7850
                                             (letrec*
                                              ((x7858
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7857
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7856
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7855
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7853
                                                (letrec*
                                                 ((x7854
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x7854))))
                                               (x7851
                                                (letrec*
                                                 ((x7852
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x7852)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x7858
                                                 x7857
                                                 x7856
                                                 x7855
                                                 x7853
                                                 x7851)))))
                                           g7850)
                                          (letrec*
                                           ((x-cnd7859
                                             (letrec*
                                              ((x7860
                                                (letrec*
                                                 ((x7861
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x7861)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x7860)))))
                                           (if x-cnd7859
                                             (letrec*
                                              ((g7862
                                                (letrec*
                                                 ((x7872
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7871
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7870
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7869
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7867
                                                   (letrec*
                                                    ((x7868
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x7868))))
                                                  (x7865
                                                   (letrec*
                                                    ((x7866
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x7866))))
                                                  (x7863
                                                   (letrec*
                                                    ((x7864
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x7864)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x7872
                                                    x7871
                                                    x7870
                                                    x7869
                                                    x7867
                                                    x7865
                                                    x7863)))))
                                              g7862)
                                             (letrec*
                                              ((g7873
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7873)))))))))))))))))))
                   g7810)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x7876
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x7876))))
                    (g7875
                     (letrec*
                      ((x-cnd7877
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7877
                        #f
                        (letrec*
                         ((x-cnd7878
                           (letrec*
                            ((x7879
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x7879 e)))))
                         (if x-cnd7878
                           l
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x7880)))))))))
                   g7875)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x7882
                        (letrec*
                         ((x7883
                           (letrec*
                            ((x7884
                              (begin
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x7884)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x7883)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x7882)))))
                   g7881)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7886
                        (letrec*
                         ((x7887
                           (letrec*
                            ((x7888
                              (begin
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x7888)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x7887)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x7886)))))
                   g7885)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7889
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g7889)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x7892
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x7892))))
                    (g7891
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g7891)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7894
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7894))))
                   g7893)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7896
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x7896)))))
                   g7895)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7898
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7898
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x7899)))
                           #f))))
                      (letrec*
                       ((g7900
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g7900))))
                   g7897)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x7902
                        (letrec*
                         ((x7903
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x7904)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x7903)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x7902)))))
                   g7901)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x-cnd7906
                        (letrec*
                         ((x7907 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x7907 c)))))
                      (if x-cnd7906
                        (letrec*
                         ((x7908 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x7908)))
                        #f))))
                   g7905)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7911
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7911))))
                    (g7910
                     (letrec*
                      ((x-cnd7912
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7912
                        #f
                        (letrec*
                         ((x-cnd7913
                           (letrec*
                            ((x7914
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x7914 k)))))
                         (if x-cnd7913
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7915
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x7915)))))))))
                   g7910)))
               (not (lambda (x) (letrec* ((g7916 (if x #f #t))) g7916)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7917
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g7917)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x7920))))
                    (g7919
                     (letrec*
                      ((x-cnd7921
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7921
                        #f
                        (letrec*
                         ((x-cnd7922
                           (letrec*
                            ((x7923
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x7923 e)))))
                         (if x-cnd7922
                           l
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x7924)))))))))
                   g7919)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7926
                        (letrec*
                         ((x7927
                           (letrec*
                            ((x7928
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x7928)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x7927)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x7926)))))
                   g7925)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7931))))
                    (g7930
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7932
                             (letrec*
                              ((x-cnd7933
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7933
                                0
                                (letrec*
                                 ((x7934
                                   (letrec*
                                    ((x7935
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x7935)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x7934)))))))
                           g7932))))
                      (letrec*
                       ((g7936
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g7936))))
                   g7930)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7940))))
                    (g7938
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7941))))
                    (g7939
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7942
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7942))))
                   g7939)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x7944)))))
                   g7943)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7946
                        (letrec*
                         ((x7947
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x7947)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x7946)))))
                   g7945)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x7950))))
                    (g7949
                     (letrec*
                      ((x-cnd7951
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7951
                        #f
                        (letrec*
                         ((x-cnd7952
                           (letrec*
                            ((x7953
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x7953 k)))))
                         (if x-cnd7952
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7954
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x7954)))))))))
                   g7949)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x7956)))))
                   g7955)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
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
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x7962)))))
                   g7959)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7964
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7964))))
                   g7963)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x7968))))
                    (g7966
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x7969))))
                    (g7967
                     (letrec*
                      ((x-cnd7970
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7970
                        #t
                        (letrec*
                         ((x-cnd7971
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7971
                           (letrec*
                            ((g7972
                              (letrec*
                               ((x7974
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x7974))))
                             (g7973
                              (letrec*
                               ((x7975
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x7975)))))
                            g7973)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g7967)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x7978))))
                    (g7977
                     (letrec*
                      ((x-cnd7979
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7979
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7977)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7983))))
                    (g7981
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7984))))
                    (g7982
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7985
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7985))))
                   g7982)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((x7987
                        (letrec*
                         ((x7988
                           (letrec*
                            ((x7989
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x7989)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x7988)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x7987)))))
                   g7986)))
               (newline (lambda () (letrec* ((g7990 #f)) g7990)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((x7993
                        (letrec*
                         ((x7994
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x7994))))
                       (x7992
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x7993 x7992)))))
                   g7991)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7995
                     (letrec*
                      ((x7999
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x7999))))
                    (g7996
                     (letrec*
                      ((x8000
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x8000))))
                    (g7997
                     (letrec*
                      ((x8001
                        (letrec*
                         ((x8002
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x8002)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x8001))))
                    (g7998
                     (letrec*
                      ((x-cnd8003
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8003
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8005
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x8004
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x8005 x8004)))))))
                   g7998)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8006
                     (letrec*
                      ((x-cnd8007
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8007
                        a
                        (letrec*
                         ((x8008
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8008)))))))
                   g8006)))
               (foldl
                (lambda (f z l)
                  (letrec*
                   ((g8009
                     (letrec*
                      ((x-cnd8010
                        (begin
                          (write '(funapp 1701 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd8010
                        z
                        (letrec*
                         ((x8012
                           (letrec*
                            ((x8013
                              (begin
                                (write '(funapp 1705 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1705 61))
                              (display "\n")
                              (f z x8013))))
                          (x8011
                           (begin
                             (write '(funapp 1706 34))
                             (display "\n")
                             (cdr l))))
                         (begin
                           (write '(funapp 1707 26))
                           (display "\n")
                           (foldl f x8012 x8011)))))))
                   g8009)))
               (randpos
                (lambda (rand)
                  (letrec*
                   ((g8014
                     (letrec*
                      ((n
                        (begin
                          (write '(funapp 1714 27))
                          (display "\n")
                          (rand))))
                      (letrec*
                       ((g8015
                         (letrec*
                          ((x-cnd8016
                            (begin
                              (write '(funapp 1718 39))
                              (display "\n")
                              (> n 0))))
                          (if x-cnd8016
                            n
                            (begin
                              (write '(funapp 1719 43))
                              (display "\n")
                              (randpos rand))))))
                       g8015))))
                   g8014)))
               (mk-list
                (lambda (rand n)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((x-cnd8018
                        (begin
                          (write '(funapp 1727 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd8018
                        empty
                        (letrec*
                         ((x8021
                           (begin
                             (write '(funapp 1731 34))
                             (display "\n")
                             (randpos rand)))
                          (x8019
                           (letrec*
                            ((x8020
                              (begin
                                (write '(funapp 1733 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1733 55))
                              (display "\n")
                              (mk-list rand x8020)))))
                         (begin
                           (write '(funapp 1734 26))
                           (display "\n")
                           (cons x8021 x8019)))))))
                   g8017)))
               (main
                (lambda (rand n m)
                  (letrec*
                   ((g8022
                     (letrec*
                      ((x8023
                        (begin
                          (write '(funapp 1740 39))
                          (display "\n")
                          (mk-list rand n))))
                      (begin
                        (write '(funapp 1740 58))
                        (display "\n")
                        (foldl / m x8023)))))
                   g8022))))
              (letrec*
               ((g8024
                 (begin
                   (write '(funapp 1744 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1745 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8028
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1749 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1749 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1749 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1749 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8029
                              (begin
                                (write '(funapp 1752 27))
                                (display "\n")
                                ((lambda (j7407 k7408 f7409)
                                   (letrec*
                                    ((g8030
                                      (lambda (g7404 g7405 g7406)
                                        (letrec*
                                         ((g8031
                                           (letrec*
                                            ((x8032
                                              (letrec*
                                               ((x8035
                                                 (begin
                                                   (write '(funapp 1762 44))
                                                   (display "\n")
                                                   ((lambda (j7410 k7411 f7412)
                                                      (letrec*
                                                       ((g8036
                                                         (lambda ()
                                                           (letrec*
                                                            ((g8037
                                                              (letrec*
                                                               ((x8038
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1769
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (f7412))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1770
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7410
                                                                  k7411
                                                                  x8038)))))
                                                            g8037))))
                                                       g8036))
                                                    j7407
                                                    k7408
                                                    g7404)))
                                                (x8034
                                                 (begin
                                                   (write '(funapp 1780 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7405)))
                                                (x8033
                                                 (begin
                                                   (write '(funapp 1782 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7407
                                                    k7408
                                                    g7406))))
                                               (begin
                                                 (write '(funapp 1783 42))
                                                 (display "\n")
                                                 (f7409 x8035 x8034 x8033)))))
                                            (begin
                                              (write '(funapp 1784 39))
                                              (display "\n")
                                              (real?/c j7407 k7408 x8032)))))
                                         g8031))))
                                    g8030))
                                 xj7402
                                 xk7403
                                 main))))
                            g8029)))
                         (x8027 (input))
                         (x8026 (input))
                         (x8025 (input)))
                        (begin
                          (write '(funapp 1794 21))
                          (display "\n")
                          (x8028 x8027 x8026 x8025)))))))))
               g8024))))
           g7441))))
       g7424)))
    g7423)))
