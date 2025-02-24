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
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x-cnd7460
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7460
                        g7283
                        (begin
                          (write '(blame g7281 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7459)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x-cnd7462
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7462
                        g7286
                        (begin
                          (write '(blame g7284 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7461)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7463
                     (letrec*
                      ((x-cnd7464
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7464
                        g7289
                        (begin
                          (write '(blame g7287 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7463)))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x-cnd7466
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7292))))
                      (if x-cnd7466
                        g7292
                        (begin
                          (write '(blame g7290 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7465)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7467
                     (lambda (k j v)
                       (letrec*
                        ((g7468
                          (letrec*
                           ((x-cnd7469
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7469
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7468))))
                   g7467)))
               (list-of
                (lambda (contract)
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
                               (null? v))))
                           (if x-cnd7472
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7476
                                (letrec*
                                 ((x7477
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7477))))
                               (x7473
                                (letrec*
                                 ((x7475
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7474
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7475 k j x7474)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7476 x7473)))))))
                        g7471))))
                   g7470)))
               (any? (lambda (v) (letrec* ((g7478 #t)) g7478)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x7480
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7480)))))
                   g7479)))
               (nonzero?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x-cnd7482
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7483
                                (letrec*
                                 ((x7484
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7484)))))
                              g7483))
                           g7295))))
                      (if x-cnd7482
                        g7295
                        (begin
                          (write '(blame g7293 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7481)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7485
                     (lambda (g7296 g7297 g7298)
                       (letrec*
                        ((g7486
                          (letrec*
                           ((x-cnd7487
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7488
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7488))
                                g7298))))
                           (if x-cnd7487
                             g7298
                             (begin
                               (write '(blame g7296 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7296)))))))
                        g7486))))
                   g7485)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7489
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7490
                          (letrec*
                           ((x-cnd7491
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7492
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7492))
                                g7301))))
                           (if x-cnd7491
                             g7301
                             (begin
                               (write '(blame g7299 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7490))))
                   g7489)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7493
                     (lambda (g7302 g7303 g7304)
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
                                       (orig-< v n))))
                                   g7496))
                                g7304))))
                           (if x-cnd7495
                             g7304
                             (begin
                               (write '(blame g7302 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7494))))
                   g7493)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7497
                     (lambda (g7305 g7306 g7307)
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
                                       (orig-<= v n))))
                                   g7500))
                                g7307))))
                           (if x-cnd7499
                             g7307
                             (begin
                               (write '(blame g7305 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7498))))
                   g7497)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7501
                     (lambda (g7308 g7309 g7310)
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
                                       (orig-= v n))))
                                   g7504))
                                g7310))))
                           (if x-cnd7503
                             g7310
                             (begin
                               (write '(blame g7308 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7502))))
                   g7501)))
               (meta (lambda (v) (letrec* ((g7505 v)) g7505)))
               (+
                (letrec*
                 ((xj7311
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7312
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7506
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7315 k7316 f7317)
                         (letrec*
                          ((g7508
                            (lambda (g7313 g7314)
                              (letrec*
                               ((g7509
                                 (letrec*
                                  ((x7510
                                    (letrec*
                                     ((x7512
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7315 k7316 g7313)))
                                      (x7511
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7315 k7316 g7314))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7317 x7512 x7511)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7315 k7316 x7510)))))
                               g7509))))
                          g7508))
                       xj7311
                       xk7312
                       (lambda (a b)
                         (letrec*
                          ((g7507
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7507))))))
                  g7506)))
               (-
                (letrec*
                 ((xj7318
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7319
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7513
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7322 k7323 f7324)
                         (letrec*
                          ((g7515
                            (lambda (g7320 g7321)
                              (letrec*
                               ((g7516
                                 (letrec*
                                  ((x7517
                                    (letrec*
                                     ((x7519
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7322 k7323 g7320)))
                                      (x7518
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7322 k7323 g7321))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7324 x7519 x7518)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7322 k7323 x7517)))))
                               g7516))))
                          g7515))
                       xj7318
                       xk7319
                       (lambda (a b)
                         (letrec*
                          ((g7514
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7514))))))
                  g7513)))
               (*
                (letrec*
                 ((xj7325
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7326
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7520
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7329 k7330 f7331)
                         (letrec*
                          ((g7522
                            (lambda (g7327 g7328)
                              (letrec*
                               ((g7523
                                 (letrec*
                                  ((x7524
                                    (letrec*
                                     ((x7526
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7329 k7330 g7327)))
                                      (x7525
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7329 k7330 g7328))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7331 x7526 x7525)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7329 k7330 x7524)))))
                               g7523))))
                          g7522))
                       xj7325
                       xk7326
                       (lambda (a b)
                         (letrec*
                          ((g7521
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7521))))))
                  g7520)))
               (<
                (letrec*
                 ((xj7332
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7333
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7527
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7336 k7337 f7338)
                         (letrec*
                          ((g7529
                            (lambda (g7334 g7335)
                              (letrec*
                               ((g7530
                                 (letrec*
                                  ((x7531
                                    (letrec*
                                     ((x7533
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7336 k7337 g7334)))
                                      (x7532
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7336 k7337 g7335))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7338 x7533 x7532)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7336 k7337 x7531)))))
                               g7530))))
                          g7529))
                       xj7332
                       xk7333
                       (lambda (a b)
                         (letrec*
                          ((g7528
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7528))))))
                  g7527)))
               (>
                (letrec*
                 ((xj7339
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7340
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7534
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7343 k7344 f7345)
                         (letrec*
                          ((g7536
                            (lambda (g7341 g7342)
                              (letrec*
                               ((g7537
                                 (letrec*
                                  ((x7538
                                    (letrec*
                                     ((x7540
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7343 k7344 g7341)))
                                      (x7539
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7343 k7344 g7342))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7345 x7540 x7539)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7343 k7344 x7538)))))
                               g7537))))
                          g7536))
                       xj7339
                       xk7340
                       (lambda (a b)
                         (letrec*
                          ((g7535
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7535))))))
                  g7534)))
               (<=
                (letrec*
                 ((xj7346
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7347
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7541
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7350 k7351 f7352)
                         (letrec*
                          ((g7543
                            (lambda (g7348 g7349)
                              (letrec*
                               ((g7544
                                 (letrec*
                                  ((x7545
                                    (letrec*
                                     ((x7547
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7350 k7351 g7348)))
                                      (x7546
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7350 k7351 g7349))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7352 x7547 x7546)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7350 k7351 x7545)))))
                               g7544))))
                          g7543))
                       xj7346
                       xk7347
                       (lambda (a b)
                         (letrec*
                          ((g7542
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7542))))))
                  g7541)))
               (>=
                (letrec*
                 ((xj7353
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7354
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7548
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7357 k7358 f7359)
                         (letrec*
                          ((g7550
                            (lambda (g7355 g7356)
                              (letrec*
                               ((g7551
                                 (letrec*
                                  ((x7552
                                    (letrec*
                                     ((x7554
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7357 k7358 g7355)))
                                      (x7553
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7357 k7358 g7356))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7359 x7554 x7553)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7357 k7358 x7552)))))
                               g7551))))
                          g7550))
                       xj7353
                       xk7354
                       (lambda (a b)
                         (letrec*
                          ((g7549
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7549))))))
                  g7548)))
               (/
                (letrec*
                 ((xj7360
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7361
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7555
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7364 k7365 f7366)
                         (letrec*
                          ((g7557
                            (lambda (g7362 g7363)
                              (letrec*
                               ((g7558
                                 (letrec*
                                  ((x7559
                                    (letrec*
                                     ((x7561
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7364 k7365 g7362)))
                                      (x7560
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7364 k7365 g7363))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7366 x7561 x7560)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7364 k7365 x7559)))))
                               g7558))))
                          g7557))
                       xj7360
                       xk7361
                       (lambda (a b)
                         (letrec*
                          ((g7556
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7556))))))
                  g7555)))
               (car
                (letrec*
                 ((xj7367
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7368
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7562
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7370 k7371 f7372)
                         (letrec*
                          ((g7564
                            (lambda (g7369)
                              (letrec*
                               ((g7565
                                 (letrec*
                                  ((x7566
                                    (letrec*
                                     ((x7567
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7370 k7371 g7369))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7372 x7567)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7370 k7371 x7566)))))
                               g7565))))
                          g7564))
                       xj7367
                       xk7368
                       (lambda (p)
                         (letrec*
                          ((g7563
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7563))))))
                  g7562)))
               (cdr
                (letrec*
                 ((xj7373
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7374
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7568
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7376 k7377 f7378)
                         (letrec*
                          ((g7570
                            (lambda (g7375)
                              (letrec*
                               ((g7571
                                 (letrec*
                                  ((x7572
                                    (letrec*
                                     ((x7573
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7376 k7377 g7375))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7378 x7573)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7376 k7377 x7572)))))
                               g7571))))
                          g7570))
                       xj7373
                       xk7374
                       (lambda (p)
                         (letrec*
                          ((g7569
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7569))))))
                  g7568)))
               (cons
                (letrec*
                 ((xj7379
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7380
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7574
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7383 k7384 f7385)
                         (letrec*
                          ((g7576
                            (lambda (g7381 g7382)
                              (letrec*
                               ((g7577
                                 (letrec*
                                  ((x7578
                                    (letrec*
                                     ((x7580
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7383 k7384 g7381)))
                                      (x7579
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7383 k7384 g7382))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7385 x7580 x7579)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7383 k7384 x7578)))))
                               g7577))))
                          g7576))
                       xj7379
                       xk7380
                       (lambda (a b)
                         (letrec*
                          ((g7575
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7575))))))
                  g7574)))
               (vector-ref
                (letrec*
                 ((xj7386
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7387
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7581
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7389 k7390 f7391)
                         (letrec*
                          ((g7583
                            (lambda (g7388)
                              (letrec*
                               ((g7584
                                 (letrec*
                                  ((x7585
                                    (letrec*
                                     ((x7586
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7389 k7390 g7388))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7391 x7586)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7389 k7390 x7585)))))
                               g7584))))
                          g7583))
                       xj7386
                       xk7387
                       (lambda (v i)
                         (letrec*
                          ((g7582
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7582))))))
                  g7581)))
               (vector-set!
                (letrec*
                 ((xj7392
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7393
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7587
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7396 k7397 f7398)
                         (letrec*
                          ((g7589
                            (lambda (g7394 g7395)
                              (letrec*
                               ((g7590
                                 (letrec*
                                  ((x7591
                                    (letrec*
                                     ((x7593
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7396 k7397 g7394)))
                                      (x7592
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7396 k7397 g7395))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7398 x7593 x7592)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7396 k7397 x7591)))))
                               g7590))))
                          g7589))
                       xj7392
                       xk7393
                       (lambda (vec i v)
                         (letrec*
                          ((g7588
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7588))))))
                  g7587)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7595
                        (letrec*
                         ((x7596
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7596)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7595)))))
                   g7594)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7600))))
                    (g7598
                     (letrec*
                      ((x7601
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7601))))
                    (g7599
                     (letrec*
                      ((x-cnd7602
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7602
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7605
                           (letrec*
                            ((x7606
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7606))))
                          (x7603
                           (letrec*
                            ((x7604
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7604)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7605 x7603)))))))
                   g7599)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7608
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7608)))))
                   g7607)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (letrec*
                            ((x7612
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7612)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7611)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7610)))))
                   g7609)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (letrec*
                         ((x7615
                           (letrec*
                            ((x7616
                              (begin
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7616)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7615)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7614)))))
                   g7613)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7620))))
                    (g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7621))))
                    (g7619
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
                       ((g7622
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7623 res))
                       g7623))))
                   g7619)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7625
                        (letrec*
                         ((x7626
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7626)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7625)))))
                   g7624)))
               (cdaadr
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
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7630)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7629)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7628)))))
                   g7627)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7633))))
                    (g7632
                     (letrec*
                      ((x-cnd7634
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7634
                        #f
                        (letrec*
                         ((x-cnd7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7636 k)))))
                         (if x-cnd7635
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7637)))))))))
                   g7632)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7639)))))
                   g7638)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7642))))
                    (g7641
                     (letrec*
                      ((x-cnd7643
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7643
                        ""
                        (letrec*
                         ((x7646
                           (letrec*
                            ((x7647
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7647))))
                          (x7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7645)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7646 x7644)))))))
                   g7641)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7651))))
                    (g7649
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7652))))
                    (g7650
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7653
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7653))))
                   g7650)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7655
                        (letrec*
                         ((x7656
                           (letrec*
                            ((x7657
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7657)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7656)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7655)))))
                   g7654)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7661))))
                    (g7659
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7662))))
                    (g7660
                     (letrec*
                      ((x-cnd7663
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7663
                        x
                        (letrec*
                         ((x7665
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7664
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7665 x7664)))))))
                   g7660)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7666
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7666)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x-cnd7668
                        (letrec*
                         ((x7669 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7669)))))
                      (if x-cnd7668
                        (letrec*
                         ((x7670 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7670)))
                        #f))))
                   g7667)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x7672
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7672 9)))))
                      (letrec*
                       ((g7673
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x7674
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7674 10)))))
                            (letrec*
                             ((g7675
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x7676
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7676 32))))))
                             g7675)))))
                       g7673))))
                   g7671)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7678
                        (letrec*
                         ((x7679
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7679)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7678)))))
                   g7677)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7682
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7682))))
                    (g7681
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7681)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7683 #f)) g7683)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x7685
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7685)))))
                   g7684)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((x7688
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7688))))
                    (g7687
                     (letrec*
                      ((x-cnd7689
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7689
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7687)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7691
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd7692
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7692
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7693
                               (if val7252
                                 val7252
                                 (letrec*
                                  ((val7253
                                    (letrec*
                                     ((x-cnd7694
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7694
                                       (letrec*
                                        ((x-cnd7695
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7695
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7696
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd7697
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7697
                                             (letrec*
                                              ((x-cnd7698
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7698
                                                (letrec*
                                                 ((x-cnd7699
                                                   (letrec*
                                                    ((x7701
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7700
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7701 x7700)))))
                                                 (if x-cnd7699
                                                   (letrec*
                                                    ((x7703
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7702
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7703 x7702)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7704
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd7705
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7705
                                                (letrec*
                                                 ((x-cnd7706
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7706
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7707
                                                       (letrec*
                                                        ((x-cnd7708
                                                          (letrec*
                                                           ((x7709
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
                                                             (= x7709 n)))))
                                                        (if x-cnd7708
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7710
                                                                  (letrec*
                                                                   ((val7255
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
                                                                    ((g7711
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd7712
                                                                           (letrec*
                                                                            ((x7714
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
                                                                             (x7713
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
                                                                               x7714
                                                                               x7713)))))
                                                                         (if x-cnd7712
                                                                           (letrec*
                                                                            ((x7715
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
                                                                               x7715)))
                                                                           #f)))))
                                                                    g7711))))
                                                                g7710))))
                                                           (letrec*
                                                            ((g7716
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7716))
                                                          #f))))
                                                     g7707))
                                                   #f))
                                                #f)))))
                                         g7704)))))
                                   g7696)))))
                             g7693)))))
                       g7691))))
                   g7690)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7717
                     (letrec*
                      ((x7718
                        (letrec*
                         ((x7719
                           (letrec*
                            ((x7720
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7720)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7719)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7718)))))
                   g7717)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7721
                     (letrec*
                      ((x7722
                        (letrec*
                         ((x7723
                           (letrec*
                            ((x7724
                              (begin
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7724)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7723)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7722)))))
                   g7721)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7725
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7725)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x7729
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7729))))
                    (g7727
                     (letrec*
                      ((x7730
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7730))))
                    (g7728
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
                       ((g7731
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7732 res))
                       g7732))))
                   g7728)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7733
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7733)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7737))))
                    (g7735
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7738))))
                    (g7736
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7739
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7739))))
                   g7736)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (letrec*
                         ((x7742
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7742)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7741)))))
                   g7740)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (letrec*
                            ((x7746
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7746)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7745)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7744)))))
                   g7743)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (letrec*
                         ((x7749
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7749)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7748)))))
                   g7747)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7751
                        (letrec*
                         ((x7752
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7752)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7751)))))
                   g7750)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7756))))
                    (g7754
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7757))))
                    (g7755
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7758)))))
                   g7755)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7762)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7761)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7760)))))
                   g7759)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7765))))
                    (g7764
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7764)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7766
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7766)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7768
                        (letrec*
                         ((x7769
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7769)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7768)))))
                   g7767)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7770
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7770)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7773))))
                    (g7772
                     (letrec*
                      ((x-cnd7774
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7774
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7778))))
                          (x7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7776)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7777 x7775)))))))
                   g7772)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7780
                        (letrec*
                         ((x7781
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7782)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7781)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7780)))))
                   g7779)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7784
                        (letrec*
                         ((x7785
                           (letrec*
                            ((x7786
                              (begin
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7786)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7785)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7784)))))
                   g7783)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7789))))
                    (g7788
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7790)))))
                   g7788)))
               (caadar
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
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7794)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7793)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7792)))))
                   g7791)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7798))))
                    (g7796
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7799))))
                    (g7797
                     (letrec*
                      ((x-cnd7800
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7800
                        (letrec*
                         ((g7801
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7801)
                        (letrec*
                         ((x-cnd7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7803)))))
                         (if x-cnd7802
                           (letrec*
                            ((g7804
                              (letrec*
                               ((x7805
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7805)))))
                            g7804)
                           (letrec*
                            ((x-cnd7806
                              (letrec*
                               ((x7807
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7807)))))
                            (if x-cnd7806
                              (letrec*
                               ((g7808
                                 (letrec*
                                  ((x7810
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7809
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7810 x7809)))))
                               g7808)
                              (letrec*
                               ((x-cnd7811
                                 (letrec*
                                  ((x7812
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7812)))))
                               (if x-cnd7811
                                 (letrec*
                                  ((g7813
                                    (letrec*
                                     ((x7816
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7815
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7814
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7816 x7815 x7814)))))
                                  g7813)
                                 (letrec*
                                  ((x-cnd7817
                                    (letrec*
                                     ((x7818
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7818)))))
                                  (if x-cnd7817
                                    (letrec*
                                     ((g7819
                                       (letrec*
                                        ((x7823
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7822
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7821
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7820
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7823 x7822 x7821 x7820)))))
                                     g7819)
                                    (letrec*
                                     ((x-cnd7824
                                       (letrec*
                                        ((x7825
                                          (letrec*
                                           ((x7826
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7826)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7825)))))
                                     (if x-cnd7824
                                       (letrec*
                                        ((g7827
                                          (letrec*
                                           ((x7833
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7832
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7831
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7830
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7828
                                             (letrec*
                                              ((x7829
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7829)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7833
                                              x7832
                                              x7831
                                              x7830
                                              x7828)))))
                                        g7827)
                                       (letrec*
                                        ((x-cnd7834
                                          (letrec*
                                           ((x7835
                                             (letrec*
                                              ((x7836
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7836)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7835)))))
                                        (if x-cnd7834
                                          (letrec*
                                           ((g7837
                                             (letrec*
                                              ((x7845
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7844
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7843
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7842
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7840
                                                (letrec*
                                                 ((x7841
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7841))))
                                               (x7838
                                                (letrec*
                                                 ((x7839
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7839)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7845
                                                 x7844
                                                 x7843
                                                 x7842
                                                 x7840
                                                 x7838)))))
                                           g7837)
                                          (letrec*
                                           ((x-cnd7846
                                             (letrec*
                                              ((x7847
                                                (letrec*
                                                 ((x7848
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7848)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7847)))))
                                           (if x-cnd7846
                                             (letrec*
                                              ((g7849
                                                (letrec*
                                                 ((x7859
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7858
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7857
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7856
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7854
                                                   (letrec*
                                                    ((x7855
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7855))))
                                                  (x7852
                                                   (letrec*
                                                    ((x7853
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7853))))
                                                  (x7850
                                                   (letrec*
                                                    ((x7851
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7851)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7859
                                                    x7858
                                                    x7857
                                                    x7856
                                                    x7854
                                                    x7852
                                                    x7850)))))
                                              g7849)
                                             (letrec*
                                              ((g7860
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7860)))))))))))))))))))
                   g7797)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7863
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7863))))
                    (g7862
                     (letrec*
                      ((x-cnd7864
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7864
                        #f
                        (letrec*
                         ((x-cnd7865
                           (letrec*
                            ((x7866
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7866 e)))))
                         (if x-cnd7865
                           l
                           (letrec*
                            ((x7867
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7867)))))))))
                   g7862)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7869
                        (letrec*
                         ((x7870
                           (letrec*
                            ((x7871
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7871)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7870)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7869)))))
                   g7868)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7873
                        (letrec*
                         ((x7874
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7875)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7874)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7873)))))
                   g7872)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7876
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7876)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7879))))
                    (g7878
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7878)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7881
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7881))))
                   g7880)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7883
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7883)))))
                   g7882)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd7885
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7885
                           (letrec*
                            ((x7886
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7886)))
                           #f))))
                      (letrec*
                       ((g7887
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7887))))
                   g7884)))
               (cddaar
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
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7891)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7890)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7889)))))
                   g7888)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x-cnd7893
                        (letrec*
                         ((x7894 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7894 c)))))
                      (if x-cnd7893
                        (letrec*
                         ((x7895 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7895)))
                        #f))))
                   g7892)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7898
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7898))))
                    (g7897
                     (letrec*
                      ((x-cnd7899
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7899
                        #f
                        (letrec*
                         ((x-cnd7900
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7901 k)))))
                         (if x-cnd7900
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7902)))))))))
                   g7897)))
               (not (lambda (x) (letrec* ((g7903 (if x #f #t))) g7903)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7904
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7904)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7907))))
                    (g7906
                     (letrec*
                      ((x-cnd7908
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7908
                        #f
                        (letrec*
                         ((x-cnd7909
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7910 e)))))
                         (if x-cnd7909
                           l
                           (letrec*
                            ((x7911
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7911)))))))))
                   g7906)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7913
                        (letrec*
                         ((x7914
                           (letrec*
                            ((x7915
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7915)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7914)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7913)))))
                   g7912)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7918))))
                    (g7917
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7919
                             (letrec*
                              ((x-cnd7920
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7920
                                0
                                (letrec*
                                 ((x7921
                                   (letrec*
                                    ((x7922
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7922)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7921)))))))
                           g7919))))
                      (letrec*
                       ((g7923
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7923))))
                   g7917)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7927))))
                    (g7925
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7928))))
                    (g7926
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7929
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7929))))
                   g7926)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7931)))))
                   g7930)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7933
                        (letrec*
                         ((x7934
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7934)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7933)))))
                   g7932)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7937))))
                    (g7936
                     (letrec*
                      ((x-cnd7938
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7938
                        #f
                        (letrec*
                         ((x-cnd7939
                           (letrec*
                            ((x7940
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7940 k)))))
                         (if x-cnd7939
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7941
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7941)))))))))
                   g7936)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7943)))))
                   g7942)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7947))))
                    (g7945
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7948))))
                    (g7946
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7949)))))
                   g7946)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7951
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7951))))
                   g7950)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7956))))
                    (g7954
                     (letrec*
                      ((x-cnd7957
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7957
                        #t
                        (letrec*
                         ((x-cnd7958
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7958
                           (letrec*
                            ((g7959
                              (letrec*
                               ((x7961
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7961))))
                             (g7960
                              (letrec*
                               ((x7962
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7962)))))
                            g7960)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7954)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7965))))
                    (g7964
                     (letrec*
                      ((x-cnd7966
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7966
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7964)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7971))))
                    (g7969
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7972
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7972))))
                   g7969)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7974
                        (letrec*
                         ((x7975
                           (letrec*
                            ((x7976
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7976)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7975)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7974)))))
                   g7973)))
               (newline (lambda () (letrec* ((g7977 #f)) g7977)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7978
                     (letrec*
                      ((x7980
                        (letrec*
                         ((x7981
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7981))))
                       (x7979
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7980 x7979)))))
                   g7978)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7982
                     (letrec*
                      ((x7986
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7986))))
                    (g7983
                     (letrec*
                      ((x7987
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7987))))
                    (g7984
                     (letrec*
                      ((x7988
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7989)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7988))))
                    (g7985
                     (letrec*
                      ((x-cnd7990
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7990
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7991
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7992 x7991)))))))
                   g7985)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x-cnd7994
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7994
                        a
                        (letrec*
                         ((x7995
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7995)))))))
                   g7993)))
               (mult
                (lambda (n m)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x-cnd7997
                        (letrec*
                         ((val7262
                           (begin
                             (write '(funapp 1667 36))
                             (display "\n")
                             (<= n 0))))
                         (letrec*
                          ((g7998
                            (if val7262
                              val7262
                              (begin
                                (write '(funapp 1669 55))
                                (display "\n")
                                (<= m 0)))))
                          g7998))))
                      (if x-cnd7997
                        0
                        (letrec*
                         ((x7999
                           (letrec*
                            ((x8000
                              (begin
                                (write '(funapp 1674 51))
                                (display "\n")
                                (- m 1))))
                            (begin
                              (write '(funapp 1674 61))
                              (display "\n")
                              (mult n x8000)))))
                         (begin
                           (write '(funapp 1675 26))
                           (display "\n")
                           (+ n x7999)))))))
                   g7996)))
               (sqr
                (lambda (n)
                  (letrec*
                   ((g8001
                     (begin
                       (write '(funapp 1677 50))
                       (display "\n")
                       (mult n n))))
                   g8001))))
              (letrec*
               ((g8002
                 (begin
                   (write '(funapp 1680 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1681 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8005
                          (letrec*
                           ((xj7399
                             (begin
                               (write '(funapp 1685 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1685 37))
                                  (display "\n")
                                  'module))))
                            (xk7400
                             (begin
                               (write '(funapp 1685 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1685 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8006
                              (begin
                                (write '(funapp 1688 27))
                                (display "\n")
                                ((lambda (j7403 k7404 f7405)
                                   (letrec*
                                    ((g8007
                                      (lambda (g7401 g7402)
                                        (letrec*
                                         ((g8008
                                           (letrec*
                                            ((x8012
                                              (letrec*
                                               ((x8013
                                                 (begin
                                                   (write '(funapp 1697 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1698 42))
                                                 (display "\n")
                                                 (and/c integer?/c x8013))))
                                             (x8009
                                              (letrec*
                                               ((x8011
                                                 (begin
                                                   (write '(funapp 1702 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7403
                                                    k7404
                                                    g7401)))
                                                (x8010
                                                 (begin
                                                   (write '(funapp 1704 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7403
                                                    k7404
                                                    g7402))))
                                               (begin
                                                 (write '(funapp 1705 42))
                                                 (display "\n")
                                                 (f7405 x8011 x8010)))))
                                            (begin
                                              (write '(funapp 1706 39))
                                              (display "\n")
                                              (x8012 j7403 k7404 x8009)))))
                                         g8008))))
                                    g8007))
                                 xj7399
                                 xk7400
                                 mult))))
                            g8006)))
                         (x8004 (input))
                         (x8003 (input)))
                        (begin
                          (write '(funapp 1715 21))
                          (display "\n")
                          (x8005 x8004 x8003)))
                       (letrec*
                        ((xj7406
                          (begin
                            (write '(funapp 1717 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1717 34))
                               (display "\n")
                               'module))))
                         (xk7407
                          (begin
                            (write '(funapp 1717 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1717 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8014
                           (begin
                             (write '(funapp 1720 24))
                             (display "\n")
                             ((lambda (j7409 k7410 f7411)
                                (letrec*
                                 ((g8015
                                   (lambda (g7408)
                                     (letrec*
                                      ((g8016
                                        (letrec*
                                         ((x7412
                                           (begin
                                             (write '(funapp 1727 44))
                                             (display "\n")
                                             (integer?/c j7409 k7410 g7408))))
                                         (letrec*
                                          ((g8017
                                            (letrec*
                                             ((x8019
                                               (begin
                                                 (write '(funapp 1732 42))
                                                 (display "\n")
                                                 ((lambda (n)
                                                    (letrec*
                                                     ((g8020
                                                       (letrec*
                                                        ((x8021
                                                          (begin
                                                            (write
                                                             '(funapp 1736 57))
                                                            (display "\n")
                                                            (>=/c n))))
                                                        (begin
                                                          (write
                                                           '(funapp 1737 49))
                                                          (display "\n")
                                                          (and/c
                                                           integer?/c
                                                           x8021)))))
                                                     g8020))
                                                  x7412)))
                                              (x8018
                                               (begin
                                                 (write '(funapp 1740 48))
                                                 (display "\n")
                                                 (f7411 x7412))))
                                             (begin
                                               (write '(funapp 1741 40))
                                               (display "\n")
                                               (x8019 j7409 k7410 x8018)))))
                                          g8017))))
                                      g8016))))
                                 g8015))
                              xj7406
                              xk7407
                              sqr))))
                         g8014))))))))
               g8002))))
           g7441))))
       g7424)))
    g7423)))
