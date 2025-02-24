(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7418 #t)) g7418)))
    (meta (lambda (v) (letrec* ((g7419 v)) g7419)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7420
          (letrec*
           ((g7421
             (letrec*
              ((x-e7422 lst))
              (letrec*
               ((v1742 x-e7422))
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
                   ((x-cnd7423
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7423
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
           g7421)))
        g7420)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7424 (lambda (v) (letrec* ((g7425 v)) g7425)))) g7424)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7426
          (letrec*
           ((x7427 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7427)))))
        g7426))))
   (letrec*
    ((g7428
      (letrec*
       ((g7429
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7430
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7430)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7431
                 (letrec*
                  ((x7433
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7433))))
                (g7432
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7434
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7435 (if val7244 val7244 #f))) g7435)))))
                   g7434))))
               g7432)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7436
                 (letrec*
                  ((x7438
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7438))))
                (g7437
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7439
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7440 (if val7246 val7246 #f))) g7440)))))
                   g7439))))
               g7437)))
           (>
            (lambda (x y)
              (letrec*
               ((g7441
                 (letrec*
                  ((x7443
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7443))))
                (g7442
                 (letrec*
                  ((x7444
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7444)))))
               g7442)))
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
           ((g7445 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7446
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7447
                     (lambda (k j lst)
                       (letrec*
                        ((g7448
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7449
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7449))
                             lst))))
                        g7448))))
                   g7447)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7451
                        g7265
                        (begin
                          (write '(blame g7263 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7450)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7453
                        g7268
                        (begin
                          (write '(blame g7266 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7452)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7455
                        g7271
                        (begin
                          (write '(blame g7269 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7454)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7458 #t)) g7458)) g7274))))
                      (if x-cnd7457
                        g7274
                        (begin
                          (write '(blame g7272 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7456)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x-cnd7460
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7461 #t)) g7461)) g7277))))
                      (if x-cnd7460
                        g7277
                        (begin
                          (write '(blame g7275 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7459)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x-cnd7463
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7463
                        g7280
                        (begin
                          (write '(blame g7278 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7462)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x-cnd7465
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7465
                        g7283
                        (begin
                          (write '(blame g7281 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7464)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x-cnd7467
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7467
                        g7286
                        (begin
                          (write '(blame g7284 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7466)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x-cnd7469
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7469
                        g7289
                        (begin
                          (write '(blame g7287 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7468)))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x-cnd7471
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7292))))
                      (if x-cnd7471
                        g7292
                        (begin
                          (write '(blame g7290 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7470)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7472
                     (lambda (k j v)
                       (letrec*
                        ((g7473
                          (letrec*
                           ((x-cnd7474
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7474
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7473))))
                   g7472)))
               (list-of
                (lambda (contract)
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
                               (null? v))))
                           (if x-cnd7477
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7481
                                (letrec*
                                 ((x7482
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7482))))
                               (x7478
                                (letrec*
                                 ((x7480
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7479
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7480 k j x7479)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7481 x7478)))))))
                        g7476))))
                   g7475)))
               (any? (lambda (v) (letrec* ((g7483 #t)) g7483)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7484
                     (letrec*
                      ((x7485
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7485)))))
                   g7484)))
               (nonzero?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x-cnd7487
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7488
                                (letrec*
                                 ((x7489
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7489)))))
                              g7488))
                           g7295))))
                      (if x-cnd7487
                        g7295
                        (begin
                          (write '(blame g7293 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7486)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7490
                     (lambda (g7296 g7297 g7298)
                       (letrec*
                        ((g7491
                          (letrec*
                           ((x-cnd7492
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7493
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7493))
                                g7298))))
                           (if x-cnd7492
                             g7298
                             (begin
                               (write '(blame g7296 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7296)))))))
                        g7491))))
                   g7490)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7494
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7495
                          (letrec*
                           ((x-cnd7496
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7497
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7497))
                                g7301))))
                           (if x-cnd7496
                             g7301
                             (begin
                               (write '(blame g7299 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7495))))
                   g7494)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7498
                     (lambda (g7302 g7303 g7304)
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
                                       (orig-< v n))))
                                   g7501))
                                g7304))))
                           (if x-cnd7500
                             g7304
                             (begin
                               (write '(blame g7302 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7499))))
                   g7498)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7502
                     (lambda (g7305 g7306 g7307)
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
                                       (orig-<= v n))))
                                   g7505))
                                g7307))))
                           (if x-cnd7504
                             g7307
                             (begin
                               (write '(blame g7305 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7503))))
                   g7502)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7506
                     (lambda (g7308 g7309 g7310)
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
                                       (orig-= v n))))
                                   g7509))
                                g7310))))
                           (if x-cnd7508
                             g7310
                             (begin
                               (write '(blame g7308 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7507))))
                   g7506)))
               (meta (lambda (v) (letrec* ((g7510 v)) g7510)))
               (+
                (letrec*
                 ((xj7311
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7312
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7511
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7315 k7316 f7317)
                         (letrec*
                          ((g7513
                            (lambda (g7313 g7314)
                              (letrec*
                               ((g7514
                                 (letrec*
                                  ((x7515
                                    (letrec*
                                     ((x7517
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7315 k7316 g7313)))
                                      (x7516
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7315 k7316 g7314))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7317 x7517 x7516)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7315 k7316 x7515)))))
                               g7514))))
                          g7513))
                       xj7311
                       xk7312
                       (lambda (a b)
                         (letrec*
                          ((g7512
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7512))))))
                  g7511)))
               (-
                (letrec*
                 ((xj7318
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7319
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7518
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7322 k7323 f7324)
                         (letrec*
                          ((g7520
                            (lambda (g7320 g7321)
                              (letrec*
                               ((g7521
                                 (letrec*
                                  ((x7522
                                    (letrec*
                                     ((x7524
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7322 k7323 g7320)))
                                      (x7523
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7322 k7323 g7321))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7324 x7524 x7523)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7322 k7323 x7522)))))
                               g7521))))
                          g7520))
                       xj7318
                       xk7319
                       (lambda (a b)
                         (letrec*
                          ((g7519
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7519))))))
                  g7518)))
               (*
                (letrec*
                 ((xj7325
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7326
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7525
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7329 k7330 f7331)
                         (letrec*
                          ((g7527
                            (lambda (g7327 g7328)
                              (letrec*
                               ((g7528
                                 (letrec*
                                  ((x7529
                                    (letrec*
                                     ((x7531
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7329 k7330 g7327)))
                                      (x7530
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7329 k7330 g7328))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7331 x7531 x7530)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7329 k7330 x7529)))))
                               g7528))))
                          g7527))
                       xj7325
                       xk7326
                       (lambda (a b)
                         (letrec*
                          ((g7526
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7526))))))
                  g7525)))
               (<
                (letrec*
                 ((xj7332
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7333
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7532
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7336 k7337 f7338)
                         (letrec*
                          ((g7534
                            (lambda (g7334 g7335)
                              (letrec*
                               ((g7535
                                 (letrec*
                                  ((x7536
                                    (letrec*
                                     ((x7538
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7336 k7337 g7334)))
                                      (x7537
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7336 k7337 g7335))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7338 x7538 x7537)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7336 k7337 x7536)))))
                               g7535))))
                          g7534))
                       xj7332
                       xk7333
                       (lambda (a b)
                         (letrec*
                          ((g7533
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7533))))))
                  g7532)))
               (>
                (letrec*
                 ((xj7339
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7340
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7539
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7343 k7344 f7345)
                         (letrec*
                          ((g7541
                            (lambda (g7341 g7342)
                              (letrec*
                               ((g7542
                                 (letrec*
                                  ((x7543
                                    (letrec*
                                     ((x7545
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7343 k7344 g7341)))
                                      (x7544
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7343 k7344 g7342))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7345 x7545 x7544)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7343 k7344 x7543)))))
                               g7542))))
                          g7541))
                       xj7339
                       xk7340
                       (lambda (a b)
                         (letrec*
                          ((g7540
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7540))))))
                  g7539)))
               (<=
                (letrec*
                 ((xj7346
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7347
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7546
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7350 k7351 f7352)
                         (letrec*
                          ((g7548
                            (lambda (g7348 g7349)
                              (letrec*
                               ((g7549
                                 (letrec*
                                  ((x7550
                                    (letrec*
                                     ((x7552
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7350 k7351 g7348)))
                                      (x7551
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7350 k7351 g7349))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7352 x7552 x7551)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7350 k7351 x7550)))))
                               g7549))))
                          g7548))
                       xj7346
                       xk7347
                       (lambda (a b)
                         (letrec*
                          ((g7547
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7547))))))
                  g7546)))
               (>=
                (letrec*
                 ((xj7353
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7354
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7553
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7357 k7358 f7359)
                         (letrec*
                          ((g7555
                            (lambda (g7355 g7356)
                              (letrec*
                               ((g7556
                                 (letrec*
                                  ((x7557
                                    (letrec*
                                     ((x7559
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7357 k7358 g7355)))
                                      (x7558
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7357 k7358 g7356))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7359 x7559 x7558)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7357 k7358 x7557)))))
                               g7556))))
                          g7555))
                       xj7353
                       xk7354
                       (lambda (a b)
                         (letrec*
                          ((g7554
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7554))))))
                  g7553)))
               (/
                (letrec*
                 ((xj7360
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7361
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7560
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7364 k7365 f7366)
                         (letrec*
                          ((g7562
                            (lambda (g7362 g7363)
                              (letrec*
                               ((g7563
                                 (letrec*
                                  ((x7564
                                    (letrec*
                                     ((x7566
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7364 k7365 g7362)))
                                      (x7565
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7364 k7365 g7363))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7366 x7566 x7565)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7364 k7365 x7564)))))
                               g7563))))
                          g7562))
                       xj7360
                       xk7361
                       (lambda (a b)
                         (letrec*
                          ((g7561
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7561))))))
                  g7560)))
               (car
                (letrec*
                 ((xj7367
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7368
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7567
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7370 k7371 f7372)
                         (letrec*
                          ((g7569
                            (lambda (g7369)
                              (letrec*
                               ((g7570
                                 (letrec*
                                  ((x7571
                                    (letrec*
                                     ((x7572
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7370 k7371 g7369))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7372 x7572)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7370 k7371 x7571)))))
                               g7570))))
                          g7569))
                       xj7367
                       xk7368
                       (lambda (p)
                         (letrec*
                          ((g7568
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7568))))))
                  g7567)))
               (cdr
                (letrec*
                 ((xj7373
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7374
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7573
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7376 k7377 f7378)
                         (letrec*
                          ((g7575
                            (lambda (g7375)
                              (letrec*
                               ((g7576
                                 (letrec*
                                  ((x7577
                                    (letrec*
                                     ((x7578
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7376 k7377 g7375))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7378 x7578)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7376 k7377 x7577)))))
                               g7576))))
                          g7575))
                       xj7373
                       xk7374
                       (lambda (p)
                         (letrec*
                          ((g7574
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7574))))))
                  g7573)))
               (cons
                (letrec*
                 ((xj7379
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7380
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7579
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7383 k7384 f7385)
                         (letrec*
                          ((g7581
                            (lambda (g7381 g7382)
                              (letrec*
                               ((g7582
                                 (letrec*
                                  ((x7583
                                    (letrec*
                                     ((x7585
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7383 k7384 g7381)))
                                      (x7584
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7383 k7384 g7382))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7385 x7585 x7584)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7383 k7384 x7583)))))
                               g7582))))
                          g7581))
                       xj7379
                       xk7380
                       (lambda (a b)
                         (letrec*
                          ((g7580
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7580))))))
                  g7579)))
               (vector-ref
                (letrec*
                 ((xj7386
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7387
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7586
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7389 k7390 f7391)
                         (letrec*
                          ((g7588
                            (lambda (g7388)
                              (letrec*
                               ((g7589
                                 (letrec*
                                  ((x7590
                                    (letrec*
                                     ((x7591
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7389 k7390 g7388))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7391 x7591)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7389 k7390 x7590)))))
                               g7589))))
                          g7588))
                       xj7386
                       xk7387
                       (lambda (v i)
                         (letrec*
                          ((g7587
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7587))))))
                  g7586)))
               (vector-set!
                (letrec*
                 ((xj7392
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7393
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7592
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7396 k7397 f7398)
                         (letrec*
                          ((g7594
                            (lambda (g7394 g7395)
                              (letrec*
                               ((g7595
                                 (letrec*
                                  ((x7596
                                    (letrec*
                                     ((x7598
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7396 k7397 g7394)))
                                      (x7597
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7396 k7397 g7395))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7398 x7598 x7597)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7396 k7397 x7596)))))
                               g7595))))
                          g7594))
                       xj7392
                       xk7393
                       (lambda (vec i v)
                         (letrec*
                          ((g7593
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7593))))))
                  g7592)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7600
                        (letrec*
                         ((x7601
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7601)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7600)))))
                   g7599)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7605
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7605))))
                    (g7603
                     (letrec*
                      ((x7606
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7606))))
                    (g7604
                     (letrec*
                      ((x-cnd7607
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7607
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7610
                           (letrec*
                            ((x7611
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7611))))
                          (x7608
                           (letrec*
                            ((x7609
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7609)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7610 x7608)))))))
                   g7604)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7613)))))
                   g7612)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (letrec*
                         ((x7616
                           (letrec*
                            ((x7617
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7617)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7616)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7615)))))
                   g7614)))
               (cdadar
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
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7621)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7620)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7619)))))
                   g7618)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7625))))
                    (g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7626))))
                    (g7624
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
                       ((g7627
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7628 res))
                       g7628))))
                   g7624)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7630
                        (letrec*
                         ((x7631
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7631)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7630)))))
                   g7629)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7633
                        (letrec*
                         ((x7634
                           (letrec*
                            ((x7635
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7635)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7634)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7633)))))
                   g7632)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7638))))
                    (g7637
                     (letrec*
                      ((x-cnd7639
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7639
                        #f
                        (letrec*
                         ((x-cnd7640
                           (letrec*
                            ((x7641
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7641 k)))))
                         (if x-cnd7640
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7642)))))))))
                   g7637)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7644)))))
                   g7643)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7647))))
                    (g7646
                     (letrec*
                      ((x-cnd7648
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7648
                        ""
                        (letrec*
                         ((x7651
                           (letrec*
                            ((x7652
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7652))))
                          (x7649
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7650)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7651 x7649)))))))
                   g7646)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7656))))
                    (g7654
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7657))))
                    (g7655
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7658
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7658))))
                   g7655)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7660
                        (letrec*
                         ((x7661
                           (letrec*
                            ((x7662
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7662)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7661)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7660)))))
                   g7659)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7666))))
                    (g7664
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7667))))
                    (g7665
                     (letrec*
                      ((x-cnd7668
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7668
                        x
                        (letrec*
                         ((x7670
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7669
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7670 x7669)))))))
                   g7665)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7671
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7671)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((x-cnd7673
                        (letrec*
                         ((x7674 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7674)))))
                      (if x-cnd7673
                        (letrec*
                         ((x7675 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7675)))
                        #f))))
                   g7672)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7677
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7677 9)))))
                      (letrec*
                       ((g7678
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7679
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7679 10)))))
                            (letrec*
                             ((g7680
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7681
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7681 32))))))
                             g7680)))))
                       g7678))))
                   g7676)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((x7683
                        (letrec*
                         ((x7684
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7684)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7683)))))
                   g7682)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7685
                     (letrec*
                      ((x7687
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7687))))
                    (g7686
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7686)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7688 #f)) g7688)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x7690
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7690)))))
                   g7689)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7691
                     (letrec*
                      ((x7693
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7693))))
                    (g7692
                     (letrec*
                      ((x-cnd7694
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7694
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7692)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7695
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7696
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7697
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7697
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7698
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7699
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7699
                                       (letrec*
                                        ((x-cnd7700
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7700
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7701
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7702
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7702
                                             (letrec*
                                              ((x-cnd7703
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7703
                                                (letrec*
                                                 ((x-cnd7704
                                                   (letrec*
                                                    ((x7706
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7705
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7706 x7705)))))
                                                 (if x-cnd7704
                                                   (letrec*
                                                    ((x7708
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7707
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7708 x7707)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7709
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7710
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7710
                                                (letrec*
                                                 ((x-cnd7711
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7711
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7712
                                                       (letrec*
                                                        ((x-cnd7713
                                                          (letrec*
                                                           ((x7714
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
                                                             (= x7714 n)))))
                                                        (if x-cnd7713
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7715
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
                                                                    ((g7716
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7717
                                                                           (letrec*
                                                                            ((x7719
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
                                                                             (x7718
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
                                                                               x7719
                                                                               x7718)))))
                                                                         (if x-cnd7717
                                                                           (letrec*
                                                                            ((x7720
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
                                                                               x7720)))
                                                                           #f)))))
                                                                    g7716))))
                                                                g7715))))
                                                           (letrec*
                                                            ((g7721
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7721))
                                                          #f))))
                                                     g7712))
                                                   #f))
                                                #f)))))
                                         g7709)))))
                                   g7701)))))
                             g7698)))))
                       g7696))))
                   g7695)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7722
                     (letrec*
                      ((x7723
                        (letrec*
                         ((x7724
                           (letrec*
                            ((x7725
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7725)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7724)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7723)))))
                   g7722)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x7727
                        (letrec*
                         ((x7728
                           (letrec*
                            ((x7729
                              (begin
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7729)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7728)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7727)))))
                   g7726)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7730
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7730)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7734
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7734))))
                    (g7732
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7735))))
                    (g7733
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
                       ((g7736
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7737 res))
                       g7737))))
                   g7733)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7738
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7738)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7742
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7742))))
                    (g7740
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7743))))
                    (g7741
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7744
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7744))))
                   g7741)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7746
                        (letrec*
                         ((x7747
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7747)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7746)))))
                   g7745)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7749
                        (letrec*
                         ((x7750
                           (letrec*
                            ((x7751
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7751)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7750)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7749)))))
                   g7748)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7753
                        (letrec*
                         ((x7754
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7754)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7753)))))
                   g7752)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7757)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7756)))))
                   g7755)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7761))))
                    (g7759
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7762))))
                    (g7760
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7763)))))
                   g7760)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7767)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7766)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7765)))))
                   g7764)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7770))))
                    (g7769
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7769)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7771
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7771)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7773
                        (letrec*
                         ((x7774
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7774)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7773)))))
                   g7772)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7775
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7775)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7778))))
                    (g7777
                     (letrec*
                      ((x-cnd7779
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7779
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7783))))
                          (x7780
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7781)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7782 x7780)))))))
                   g7777)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7785
                        (letrec*
                         ((x7786
                           (letrec*
                            ((x7787
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7787)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7786)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7785)))))
                   g7784)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7789
                        (letrec*
                         ((x7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7791)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7790)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7789)))))
                   g7788)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7794))))
                    (g7793
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7795)))))
                   g7793)))
               (caadar
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
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7799)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7798)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7797)))))
                   g7796)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7803))))
                    (g7801
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7804))))
                    (g7802
                     (letrec*
                      ((x-cnd7805
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7805
                        (letrec*
                         ((g7806
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7806)
                        (letrec*
                         ((x-cnd7807
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7808)))))
                         (if x-cnd7807
                           (letrec*
                            ((g7809
                              (letrec*
                               ((x7810
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7810)))))
                            g7809)
                           (letrec*
                            ((x-cnd7811
                              (letrec*
                               ((x7812
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7812)))))
                            (if x-cnd7811
                              (letrec*
                               ((g7813
                                 (letrec*
                                  ((x7815
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7814
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7815 x7814)))))
                               g7813)
                              (letrec*
                               ((x-cnd7816
                                 (letrec*
                                  ((x7817
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7817)))))
                               (if x-cnd7816
                                 (letrec*
                                  ((g7818
                                    (letrec*
                                     ((x7821
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7820
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7819
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7821 x7820 x7819)))))
                                  g7818)
                                 (letrec*
                                  ((x-cnd7822
                                    (letrec*
                                     ((x7823
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7823)))))
                                  (if x-cnd7822
                                    (letrec*
                                     ((g7824
                                       (letrec*
                                        ((x7828
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7827
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7826
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7825
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7828 x7827 x7826 x7825)))))
                                     g7824)
                                    (letrec*
                                     ((x-cnd7829
                                       (letrec*
                                        ((x7830
                                          (letrec*
                                           ((x7831
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7831)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7830)))))
                                     (if x-cnd7829
                                       (letrec*
                                        ((g7832
                                          (letrec*
                                           ((x7838
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7837
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7836
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7835
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7833
                                             (letrec*
                                              ((x7834
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7834)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7838
                                              x7837
                                              x7836
                                              x7835
                                              x7833)))))
                                        g7832)
                                       (letrec*
                                        ((x-cnd7839
                                          (letrec*
                                           ((x7840
                                             (letrec*
                                              ((x7841
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7841)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7840)))))
                                        (if x-cnd7839
                                          (letrec*
                                           ((g7842
                                             (letrec*
                                              ((x7850
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7849
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7848
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7847
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7845
                                                (letrec*
                                                 ((x7846
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7846))))
                                               (x7843
                                                (letrec*
                                                 ((x7844
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7844)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7850
                                                 x7849
                                                 x7848
                                                 x7847
                                                 x7845
                                                 x7843)))))
                                           g7842)
                                          (letrec*
                                           ((x-cnd7851
                                             (letrec*
                                              ((x7852
                                                (letrec*
                                                 ((x7853
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7853)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7852)))))
                                           (if x-cnd7851
                                             (letrec*
                                              ((g7854
                                                (letrec*
                                                 ((x7864
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7863
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7862
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7861
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7859
                                                   (letrec*
                                                    ((x7860
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7860))))
                                                  (x7857
                                                   (letrec*
                                                    ((x7858
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7858))))
                                                  (x7855
                                                   (letrec*
                                                    ((x7856
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7856)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7864
                                                    x7863
                                                    x7862
                                                    x7861
                                                    x7859
                                                    x7857
                                                    x7855)))))
                                              g7854)
                                             (letrec*
                                              ((g7865
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7865)))))))))))))))))))
                   g7802)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x7868
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7868))))
                    (g7867
                     (letrec*
                      ((x-cnd7869
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7869
                        #f
                        (letrec*
                         ((x-cnd7870
                           (letrec*
                            ((x7871
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7871 e)))))
                         (if x-cnd7870
                           l
                           (letrec*
                            ((x7872
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7872)))))))))
                   g7867)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7874
                        (letrec*
                         ((x7875
                           (letrec*
                            ((x7876
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7876)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7875)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7874)))))
                   g7873)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7878
                        (letrec*
                         ((x7879
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7880)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7879)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7878)))))
                   g7877)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7881
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7881)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7884
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7884))))
                    (g7883
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7883)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7886
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7886))))
                   g7885)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7888)))))
                   g7887)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7890
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7890
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7891)))
                           #f))))
                      (letrec*
                       ((g7892
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7892))))
                   g7889)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7894
                        (letrec*
                         ((x7895
                           (letrec*
                            ((x7896
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7896)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7895)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7894)))))
                   g7893)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x-cnd7898
                        (letrec*
                         ((x7899 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7899 c)))))
                      (if x-cnd7898
                        (letrec*
                         ((x7900 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7900)))
                        #f))))
                   g7897)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7903))))
                    (g7902
                     (letrec*
                      ((x-cnd7904
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7904
                        #f
                        (letrec*
                         ((x-cnd7905
                           (letrec*
                            ((x7906
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7906 k)))))
                         (if x-cnd7905
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7907)))))))))
                   g7902)))
               (not (lambda (x) (letrec* ((g7908 (if x #f #t))) g7908)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7909
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7909)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x7912
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7912))))
                    (g7911
                     (letrec*
                      ((x-cnd7913
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7913
                        #f
                        (letrec*
                         ((x-cnd7914
                           (letrec*
                            ((x7915
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7915 e)))))
                         (if x-cnd7914
                           l
                           (letrec*
                            ((x7916
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7916)))))))))
                   g7911)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7918
                        (letrec*
                         ((x7919
                           (letrec*
                            ((x7920
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7920)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7919)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7918)))))
                   g7917)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7923))))
                    (g7922
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7924
                             (letrec*
                              ((x-cnd7925
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7925
                                0
                                (letrec*
                                 ((x7926
                                   (letrec*
                                    ((x7927
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7927)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7926)))))))
                           g7924))))
                      (letrec*
                       ((g7928
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7928))))
                   g7922)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7932
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7932))))
                    (g7930
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7933))))
                    (g7931
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7934
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7934))))
                   g7931)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7936)))))
                   g7935)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7938
                        (letrec*
                         ((x7939
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7939)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7938)))))
                   g7937)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7942))))
                    (g7941
                     (letrec*
                      ((x-cnd7943
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7943
                        #f
                        (letrec*
                         ((x-cnd7944
                           (letrec*
                            ((x7945
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7945 k)))))
                         (if x-cnd7944
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7946
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7946)))))))))
                   g7941)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7948)))))
                   g7947)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7952))))
                    (g7950
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7953))))
                    (g7951
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7954)))))
                   g7951)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7956
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7956))))
                   g7955)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7960))))
                    (g7958
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((x-cnd7962
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7962
                        #t
                        (letrec*
                         ((x-cnd7963
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7963
                           (letrec*
                            ((g7964
                              (letrec*
                               ((x7966
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7966))))
                             (g7965
                              (letrec*
                               ((x7967
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7967)))))
                            g7965)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7959)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7970))))
                    (g7969
                     (letrec*
                      ((x-cnd7971
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7971
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7969)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7975
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7975))))
                    (g7973
                     (letrec*
                      ((x7976
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7976))))
                    (g7974
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7977
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7977))))
                   g7974)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7978
                     (letrec*
                      ((x7979
                        (letrec*
                         ((x7980
                           (letrec*
                            ((x7981
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7981)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7980)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7979)))))
                   g7978)))
               (newline (lambda () (letrec* ((g7982 #f)) g7982)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x7985
                        (letrec*
                         ((x7986
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7986))))
                       (x7984
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7985 x7984)))))
                   g7983)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7991
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7991))))
                    (g7988
                     (letrec*
                      ((x7992
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7992))))
                    (g7989
                     (letrec*
                      ((x7993
                        (letrec*
                         ((x7994
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7994)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7993))))
                    (g7990
                     (letrec*
                      ((x-cnd7995
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7995
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7997
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7996
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7997 x7996)))))))
                   g7990)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x-cnd7999
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7999
                        a
                        (letrec*
                         ((x8000
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x8000)))))))
                   g7998)))
               (mk-list
                (lambda (n x)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((x-cnd8002
                        (begin
                          (write '(funapp 1665 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd8002
                        empty
                        (letrec*
                         ((x8003
                           (letrec*
                            ((x8004
                              (begin
                                (write '(funapp 1670 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1670 55))
                              (display "\n")
                              (mk-list x8004 x)))))
                         (begin
                           (write '(funapp 1671 26))
                           (display "\n")
                           (cons x x8003)))))))
                   g8001)))
               (mem
                (lambda (x xs)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((x-cnd8006
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8006
                        #f
                        (letrec*
                         ((val7261
                           (letrec*
                            ((x8007
                              (begin
                                (write '(funapp 1682 53))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1682 64))
                              (display "\n")
                              (= x x8007)))))
                         (letrec*
                          ((g8008
                            (if val7261
                              val7261
                              (letrec*
                               ((x8009
                                 (begin
                                   (write '(funapp 1687 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1687 59))
                                 (display "\n")
                                 (mem x x8009))))))
                          g8008))))))
                   g8005))))
              (letrec*
               ((g8010
                 (begin
                   (write '(funapp 1692 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1693 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((xj7399
                          (begin
                            (write '(funapp 1695 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1695 34))
                               (display "\n")
                               'module))))
                         (xk7400
                          (begin
                            (write '(funapp 1695 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1695 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8011
                           (begin
                             (write '(funapp 1698 24))
                             (display "\n")
                             ((lambda (j7403 k7404 f7405)
                                (letrec*
                                 ((g8012
                                   (lambda (g7401 g7402)
                                     (letrec*
                                      ((g8013
                                        (letrec*
                                         ((x7406
                                           (begin
                                             (write '(funapp 1705 44))
                                             (display "\n")
                                             (integer?/c j7403 k7404 g7401)))
                                          (x7407
                                           (begin
                                             (write '(funapp 1706 44))
                                             (display "\n")
                                             (integer?/c j7403 k7404 g7402))))
                                         (letrec*
                                          ((g8014
                                            (letrec*
                                             ((x8016
                                               (begin
                                                 (write '(funapp 1711 42))
                                                 (display "\n")
                                                 ((lambda (_ x)
                                                    (letrec*
                                                     ((g8017
                                                       (letrec*
                                                        ((x8022
                                                          (begin
                                                            (write
                                                             '(funapp 1715 57))
                                                            (display "\n")
                                                            (listof
                                                             integer?/c))))
                                                        (begin
                                                          (write
                                                           '(funapp 1716 49))
                                                          (display "\n")
                                                          (and/c
                                                           x8022
                                                           (lambda (g7408
                                                                    g7409
                                                                    g7410)
                                                             (letrec*
                                                              ((g8018
                                                                (letrec*
                                                                 ((x-cnd8019
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        1723
                                                                        58))
                                                                     (display
                                                                      "\n")
                                                                     ((lambda (l)
                                                                        (letrec*
                                                                         ((g8020
                                                                           (letrec*
                                                                            ((val7262
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1728
                                                                                   67))
                                                                                (display
                                                                                 "\n")
                                                                                (empty?
                                                                                 l))))
                                                                            (letrec*
                                                                             ((g8021
                                                                               (if val7262
                                                                                 val7262
                                                                                 (begin
                                                                                   (write
                                                                                    '(funapp
                                                                                      1733
                                                                                      70))
                                                                                   (display
                                                                                    "\n")
                                                                                   (member
                                                                                    x
                                                                                    l)))))
                                                                             g8021))))
                                                                         g8020))
                                                                      g7410))))
                                                                 (if x-cnd8019
                                                                   g7410
                                                                   (begin
                                                                     (write
                                                                      '(blame
                                                                        g7408
                                                                        1741
                                                                        57))
                                                                     (display
                                                                      "\n")
                                                                     (error
                                                                      (format
                                                                       "contract violation, blaming ~a~%"
                                                                       g7408)))))))
                                                              g8018)))))))
                                                     g8017))
                                                  x7406
                                                  x7407)))
                                              (x8015
                                               (begin
                                                 (write '(funapp 1756 48))
                                                 (display "\n")
                                                 (f7405 x7406 x7407))))
                                             (begin
                                               (write '(funapp 1757 40))
                                               (display "\n")
                                               (x8016 j7403 k7404 x8015)))))
                                          g8014))))
                                      g8013))))
                                 g8012))
                              xj7399
                              xk7400
                              mk-list))))
                         g8011))
                       (letrec*
                        ((x8025
                          (letrec*
                           ((xj7411
                             (begin
                               (write '(funapp 1768 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1768 37))
                                  (display "\n")
                                  'module))))
                            (xk7412
                             (begin
                               (write '(funapp 1768 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1768 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8026
                              (begin
                                (write '(funapp 1771 27))
                                (display "\n")
                                ((lambda (j7415 k7416 f7417)
                                   (letrec*
                                    ((g8027
                                      (lambda (g7413 g7414)
                                        (letrec*
                                         ((g8028
                                           (letrec*
                                            ((x8029
                                              (letrec*
                                               ((x8032
                                                 (begin
                                                   (write '(funapp 1781 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7415
                                                    k7416
                                                    g7413)))
                                                (x8030
                                                 (letrec*
                                                  ((x8031
                                                    (begin
                                                      (write '(funapp 1784 53))
                                                      (display "\n")
                                                      (listof integer?/c))))
                                                  (begin
                                                    (write '(funapp 1785 45))
                                                    (display "\n")
                                                    (x8031
                                                     j7415
                                                     k7416
                                                     g7414)))))
                                               (begin
                                                 (write '(funapp 1786 42))
                                                 (display "\n")
                                                 (f7417 x8032 x8030)))))
                                            (begin
                                              (write '(funapp 1787 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7415
                                               k7416
                                               x8029)))))
                                         g8028))))
                                    g8027))
                                 xj7411
                                 xk7412
                                 mem))))
                            g8026)))
                         (x8024 (input))
                         (x8023 (input)))
                        (begin
                          (write '(funapp 1796 21))
                          (display "\n")
                          (x8025 x8024 x8023)))))))))
               g8010))))
           g7446))))
       g7429)))
    g7428)))
