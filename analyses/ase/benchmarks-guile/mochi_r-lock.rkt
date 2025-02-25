(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7414 #t)) g7414)))
    (meta (lambda (v) (letrec* ((g7415 v)) g7415)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7416
          (letrec*
           ((g7417
             (letrec*
              ((x-e7418 lst))
              (letrec*
               ((v1742 x-e7418))
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
                   ((x-cnd7419
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7419
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
           g7417)))
        g7416)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7420 (lambda (v) (letrec* ((g7421 v)) g7421)))) g7420)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7422
          (letrec*
           ((x7423 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7423)))))
        g7422))))
   (letrec*
    ((g7424
      (letrec*
       ((g7425
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7426
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7426)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7427
                 (letrec*
                  ((x7429
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7429))))
                (g7428
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7430
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7431 (if val7245 val7245 #f))) g7431)))))
                   g7430))))
               g7428)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7432
                 (letrec*
                  ((x7434
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7434))))
                (g7433
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7435
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7436 (if val7247 val7247 #f))) g7436)))))
                   g7435))))
               g7433)))
           (>
            (lambda (x y)
              (letrec*
               ((g7437
                 (letrec*
                  ((x7439
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7439))))
                (g7438
                 (letrec*
                  ((x7440
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7440)))))
               g7438)))
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
           ((g7441 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7442
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7443
                     (lambda (k j lst)
                       (letrec*
                        ((g7444
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7445
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7445))
                             lst))))
                        g7444))))
                   g7443)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7447
                        g7265
                        (begin
                          (write '(blame g7263 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7446)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7449
                        g7268
                        (begin
                          (write '(blame g7266 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7448)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7451
                        g7271
                        (begin
                          (write '(blame g7269 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7450)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7454 #t)) g7454)) g7274))))
                      (if x-cnd7453
                        g7274
                        (begin
                          (write '(blame g7272 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7452)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7457 #t)) g7457)) g7277))))
                      (if x-cnd7456
                        g7277
                        (begin
                          (write '(blame g7275 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7455)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7459
                        g7280
                        (begin
                          (write '(blame g7278 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7458)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7460
                     (lambda (k j v)
                       (letrec*
                        ((g7461
                          (letrec*
                           ((x7464
                             (letrec*
                              ((x7465
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7465))))
                            (x7462
                             (letrec*
                              ((x7463
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7463)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7464 x7462)))))
                        g7461))))
                   g7460)))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x-cnd7467
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7467
                        g7283
                        (begin
                          (write '(blame g7281 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7466)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x-cnd7469
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7469
                        g7286
                        (begin
                          (write '(blame g7284 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7468)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x-cnd7471
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7471
                        g7289
                        (begin
                          (write '(blame g7287 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7470)))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x-cnd7473
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7292))))
                      (if x-cnd7473
                        g7292
                        (begin
                          (write '(blame g7290 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7472)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7474
                     (lambda (k j v)
                       (letrec*
                        ((g7475
                          (letrec*
                           ((x-cnd7476
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7476
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7475))))
                   g7474)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7477
                     (lambda (k j v)
                       (letrec*
                        ((g7478
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7479
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7479))))
                        g7478))))
                   g7477)))
               (null?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7480
                     (letrec*
                      ((x-cnd7481
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7295))))
                      (if x-cnd7481
                        g7295
                        (begin
                          (write '(blame g7293 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7480)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7482
                     (lambda (k j v)
                       (letrec*
                        ((g7483
                          (letrec*
                           ((x-cnd7484
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7484
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7488
                                (letrec*
                                 ((x7489
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7489))))
                               (x7485
                                (letrec*
                                 ((x7487
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7486
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7487 k j x7486)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7488 x7485)))))))
                        g7483))))
                   g7482)))
               (any? (lambda (v) (letrec* ((g7490 #t)) g7490)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7491
                     (letrec*
                      ((x7492
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7492)))))
                   g7491)))
               (nonzero?/c
                (lambda (g7296 g7297 g7298)
                  (letrec*
                   ((g7493
                     (letrec*
                      ((x-cnd7494
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7495
                                (letrec*
                                 ((x7496
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7496)))))
                              g7495))
                           g7298))))
                      (if x-cnd7494
                        g7298
                        (begin
                          (write '(blame g7296 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7296)))))))
                   g7493)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7497
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7498
                          (letrec*
                           ((x-cnd7499
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7500
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7500))
                                g7301))))
                           (if x-cnd7499
                             g7301
                             (begin
                               (write '(blame g7299 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7498))))
                   g7497)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7501
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7502
                          (letrec*
                           ((x-cnd7503
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7504
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7504))
                                g7304))))
                           (if x-cnd7503
                             g7304
                             (begin
                               (write '(blame g7302 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7502))))
                   g7501)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7505
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7506
                          (letrec*
                           ((x-cnd7507
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7508
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7508))
                                g7307))))
                           (if x-cnd7507
                             g7307
                             (begin
                               (write '(blame g7305 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7506))))
                   g7505)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7509
                     (lambda (g7308 g7309 g7310)
                       (letrec*
                        ((g7510
                          (letrec*
                           ((x-cnd7511
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7512
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7512))
                                g7310))))
                           (if x-cnd7511
                             g7310
                             (begin
                               (write '(blame g7308 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7510))))
                   g7509)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7513
                     (lambda (g7311 g7312 g7313)
                       (letrec*
                        ((g7514
                          (letrec*
                           ((x-cnd7515
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7516
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7516))
                                g7313))))
                           (if x-cnd7515
                             g7313
                             (begin
                               (write '(blame g7311 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7311)))))))
                        g7514))))
                   g7513)))
               (meta (lambda (v) (letrec* ((g7517 v)) g7517)))
               (+
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7518
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7520
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7521
                                 (letrec*
                                  ((x7522
                                    (letrec*
                                     ((x7524
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7523
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7320 x7524 x7523)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7522)))))
                               g7521))))
                          g7520))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7519
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7519))))))
                  g7518)))
               (-
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7525
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7527
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7528
                                 (letrec*
                                  ((x7529
                                    (letrec*
                                     ((x7531
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7530
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7327 x7531 x7530)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7529)))))
                               g7528))))
                          g7527))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7526
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7526))))))
                  g7525)))
               (*
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7532
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7534
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7535
                                 (letrec*
                                  ((x7536
                                    (letrec*
                                     ((x7538
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7537
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7334 x7538 x7537)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7332 k7333 x7536)))))
                               g7535))))
                          g7534))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7533
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7533))))))
                  g7532)))
               (<
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7539
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7541
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7542
                                 (letrec*
                                  ((x7543
                                    (letrec*
                                     ((x7545
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7544
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7341 x7545 x7544)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7543)))))
                               g7542))))
                          g7541))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7540
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7540))))))
                  g7539)))
               (>
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7546
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7548
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7549
                                 (letrec*
                                  ((x7550
                                    (letrec*
                                     ((x7552
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7551
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7348 x7552 x7551)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7550)))))
                               g7549))))
                          g7548))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7547
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7547))))))
                  g7546)))
               (<=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7553
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7555
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7556
                                 (letrec*
                                  ((x7557
                                    (letrec*
                                     ((x7559
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7558
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7355 x7559 x7558)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7557)))))
                               g7556))))
                          g7555))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7554
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7554))))))
                  g7553)))
               (>=
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7560
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7562
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7563
                                 (letrec*
                                  ((x7564
                                    (letrec*
                                     ((x7566
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7565
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7362 x7566 x7565)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7360 k7361 x7564)))))
                               g7563))))
                          g7562))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7561
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7561))))))
                  g7560)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7567
                    (begin
                      (write '(funapp 550 21))
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
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7572
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 561 36))
                                       (display "\n")
                                       (f7369 x7573 x7572)))))
                                  (begin
                                    (write '(funapp 562 33))
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
                              (write '(funapp 567 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7568))))))
                  g7567)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 571 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 571 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7574
                    (begin
                      (write '(funapp 574 21))
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
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7375 x7579)))))
                                  (begin
                                    (write '(funapp 585 33))
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
                              (write '(funapp 590 51))
                              (display "\n")
                              (orig-car p))))
                          g7575))))))
                  g7574)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 594 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 594 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7580
                    (begin
                      (write '(funapp 597 21))
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
                                         (write '(funapp 606 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 607 36))
                                       (display "\n")
                                       (f7381 x7585)))))
                                  (begin
                                    (write '(funapp 608 33))
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
                              (write '(funapp 613 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7581))))))
                  g7580)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 617 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 617 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7586
                    (begin
                      (write '(funapp 620 21))
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
                                         (write '(funapp 629 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7591
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 631 36))
                                       (display "\n")
                                       (f7388 x7592 x7591)))))
                                  (begin
                                    (write '(funapp 632 33))
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
                              (write '(funapp 638 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7587))))))
                  g7586)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 642 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 642 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7593
                    (begin
                      (write '(funapp 645 21))
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
                                         (write '(funapp 654 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 655 36))
                                       (display "\n")
                                       (f7394 x7598)))))
                                  (begin
                                    (write '(funapp 656 33))
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
                              (write '(funapp 662 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7594))))))
                  g7593)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 666 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 666 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7599
                    (begin
                      (write '(funapp 669 21))
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
                                         (write '(funapp 678 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7604
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 680 36))
                                       (display "\n")
                                       (f7401 x7605 x7604)))))
                                  (begin
                                    (write '(funapp 681 33))
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
                              (write '(funapp 687 41))
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
                             (write '(funapp 694 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 694 58))
                           (display "\n")
                           (cdr x7608)))))
                      (begin
                        (write '(funapp 695 23))
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
                          (write '(funapp 701 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 701 62))
                        (display "\n")
                        (assert x7612))))
                    (g7610
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 702 57))
                        (display "\n")
                        (assert x7613))))
                    (g7611
                     (letrec*
                      ((x-cnd7614
                        (begin
                          (write '(funapp 705 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7614
                        (begin (write '(funapp 707 24)) (display "\n") '())
                        (letrec*
                         ((x7617
                           (letrec*
                            ((x7618
                              (begin
                                (write '(funapp 709 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 709 61))
                              (display "\n")
                              (f x7618))))
                          (x7615
                           (letrec*
                            ((x7616
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (map f x7616)))))
                         (begin
                           (write '(funapp 711 26))
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
                          (write '(funapp 716 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 716 55))
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
                                (write '(funapp 725 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 725 61))
                              (display "\n")
                              (car x7624)))))
                         (begin
                           (write '(funapp 726 26))
                           (display "\n")
                           (cdr x7623)))))
                      (begin
                        (write '(funapp 727 23))
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
                                (write '(funapp 736 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (cdr x7628)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7627)))))
                      (begin
                        (write '(funapp 738 23))
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
                          (write '(funapp 744 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 744 60))
                        (display "\n")
                        (assert x7632))))
                    (g7630
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 746 59))
                        (display "\n")
                        (assert x7633))))
                    (g7631
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
                       ((g7634
                         (begin
                           (write '(funapp 752 32))
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
                             (write '(funapp 760 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 760 58))
                           (display "\n")
                           (cdr x7638)))))
                      (begin
                        (write '(funapp 761 23))
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
                                (write '(funapp 770 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 770 61))
                              (display "\n")
                              (car x7642)))))
                         (begin
                           (write '(funapp 771 26))
                           (display "\n")
                           (car x7641)))))
                      (begin
                        (write '(funapp 772 23))
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
                          (write '(funapp 777 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 777 57))
                        (display "\n")
                        (assert x7645))))
                    (g7644
                     (letrec*
                      ((x-cnd7646
                        (begin
                          (write '(funapp 780 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7646
                        #f
                        (letrec*
                         ((x-cnd7647
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 785 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 785 56))
                              (display "\n")
                              (eq? x7648 k)))))
                         (if x-cnd7647
                           (begin
                             (write '(funapp 787 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 788 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 788 55))
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
                          (write '(funapp 793 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 793 60))
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
                          (write '(funapp 798 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 798 57))
                        (display "\n")
                        (assert x7654))))
                    (g7653
                     (letrec*
                      ((x-cnd7655
                        (begin
                          (write '(funapp 801 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7655
                        ""
                        (letrec*
                         ((x7658
                           (letrec*
                            ((x7659
                              (begin
                                (write '(funapp 806 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 806 55))
                              (display "\n")
                              (char->string x7659))))
                          (x7656
                           (letrec*
                            ((x7657
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (list->string x7657)))))
                         (begin
                           (write '(funapp 809 26))
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
                          (write '(funapp 814 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 814 58))
                        (display "\n")
                        (assert x7663))))
                    (g7661
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7664))))
                    (g7662
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 818 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7665
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 820 52))
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
                                (write '(funapp 830 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 830 61))
                              (display "\n")
                              (cdr x7669)))))
                         (begin
                           (write '(funapp 831 26))
                           (display "\n")
                           (cdr x7668)))))
                      (begin
                        (write '(funapp 832 23))
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
                          (write '(funapp 837 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 837 57))
                        (display "\n")
                        (assert x7673))))
                    (g7671
                     (letrec*
                      ((x7674
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7674))))
                    (g7672
                     (letrec*
                      ((x-cnd7675
                        (begin
                          (write '(funapp 841 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7675
                        x
                        (letrec*
                         ((x7677
                           (begin
                             (write '(funapp 845 34))
                             (display "\n")
                             (cdr x)))
                          (x7676
                           (begin
                             (write '(funapp 845 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (list-tail x7677 x7676)))))))
                   g7672)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7678
                     (begin (write '(funapp 848 49)) (display "\n") '())))
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
                           (write '(funapp 855 48))
                           (display "\n")
                           (char-ci>=? c x7681)))))
                      (if x-cnd7680
                        (letrec*
                         ((x7682 #\z))
                         (begin
                           (write '(funapp 857 48))
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
                             (write '(funapp 866 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 866 62))
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
                                   (write '(funapp 874 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 875 32))
                                 (display "\n")
                                 (= x7686 10)))))
                            (letrec*
                             ((g7687
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7688
                                    (begin
                                      (write '(funapp 881 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 882 35))
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
                             (write '(funapp 891 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 891 58))
                           (display "\n")
                           (cdr x7691)))))
                      (begin
                        (write '(funapp 892 23))
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
                          (write '(funapp 897 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 897 59))
                        (display "\n")
                        (assert x7694))))
                    (g7693
                     (begin (write '(funapp 898 28)) (display "\n") (> x 0))))
                   g7693)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7695
                     (begin
                       (write '(funapp 900 59))
                       (display "\n")
                       (bool-top))))
                   g7695)))
               ($pc (begin (write '(funapp 901 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7696 #f)) g7696)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7697
                     (letrec*
                      ((x7698
                        (begin
                          (write '(funapp 907 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 907 55))
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
                          (write '(funapp 912 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 912 59))
                        (display "\n")
                        (assert x7701))))
                    (g7700
                     (letrec*
                      ((x-cnd7702
                        (begin
                          (write '(funapp 915 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7702
                        (begin
                          (write '(funapp 916 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 916 49))
                          (display "\n")
                          (floor x))))))
                   g7700)))
               ($cmp (begin (write '(funapp 918 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7703
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 924 33))
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
                                   (write '(funapp 932 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7705
                                 (begin
                                   (write '(funapp 933 46))
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
                                         (write '(funapp 941 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7707
                                       (letrec*
                                        ((x-cnd7708
                                          (begin
                                            (write '(funapp 944 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7708
                                          (begin
                                            (write '(funapp 945 55))
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
                                               (write '(funapp 954 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7710
                                             (letrec*
                                              ((x-cnd7711
                                                (begin
                                                  (write '(funapp 957 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7711
                                                (letrec*
                                                 ((x-cnd7712
                                                   (letrec*
                                                    ((x7714
                                                      (begin
                                                        (write
                                                         '(funapp 962 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7713
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 964 53))
                                                      (display "\n")
                                                      (equal? x7714 x7713)))))
                                                 (if x-cnd7712
                                                   (letrec*
                                                    ((x7716
                                                      (begin
                                                        (write
                                                         '(funapp 967 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7715
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 969 53))
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
                                                  (write '(funapp 978 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7718
                                                (letrec*
                                                 ((x-cnd7719
                                                   (begin
                                                     (write '(funapp 981 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7719
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 984 57))
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
                                                                  991
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 993 60))
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
                                                                          1002
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
                                                                                   1011
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
                                                                               x7727
                                                                               x7726)))))
                                                                         (if x-cnd7725
                                                                           (letrec*
                                                                            ((x7728
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
                                                                               x7728)))
                                                                           #f)))))
                                                                    g7724))))
                                                                g7723))))
                                                           (letrec*
                                                            ((g7729
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1033
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
                                (write '(funapp 1051 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1051 61))
                              (display "\n")
                              (car x7733)))))
                         (begin
                           (write '(funapp 1052 26))
                           (display "\n")
                           (car x7732)))))
                      (begin
                        (write '(funapp 1053 23))
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
                                (write '(funapp 1062 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1062 61))
                              (display "\n")
                              (cdr x7737)))))
                         (begin
                           (write '(funapp 1063 26))
                           (display "\n")
                           (car x7736)))))
                      (begin
                        (write '(funapp 1064 23))
                        (display "\n")
                        (car x7735)))))
                   g7734)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7738
                     (begin
                       (write '(funapp 1066 53))
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
                          (write '(funapp 1071 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1071 60))
                        (display "\n")
                        (assert x7742))))
                    (g7740
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1073 59))
                        (display "\n")
                        (assert x7743))))
                    (g7741
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
                       ((g7744
                         (begin
                           (write '(funapp 1079 32))
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
                       (write '(funapp 1082 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1082 57))
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
                          (write '(funapp 1086 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1086 58))
                        (display "\n")
                        (assert x7750))))
                    (g7748
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7751))))
                    (g7749
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1090 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7752
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1092 52))
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
                             (write '(funapp 1100 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1100 58))
                           (display "\n")
                           (car x7755)))))
                      (begin
                        (write '(funapp 1101 23))
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
                                (write '(funapp 1110 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1110 61))
                              (display "\n")
                              (cdr x7759)))))
                         (begin
                           (write '(funapp 1111 26))
                           (display "\n")
                           (car x7758)))))
                      (begin
                        (write '(funapp 1112 23))
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
                             (write '(funapp 1120 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1120 58))
                           (display "\n")
                           (cdr x7762)))))
                      (begin
                        (write '(funapp 1121 23))
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
                             (write '(funapp 1128 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1128 58))
                           (display "\n")
                           (car x7765)))))
                      (begin
                        (write '(funapp 1129 23))
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
                          (write '(funapp 1134 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1134 58))
                        (display "\n")
                        (assert x7769))))
                    (g7767
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7770))))
                    (g7768
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1136 66))
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
                                (write '(funapp 1146 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (car x7775)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (car x7774)))))
                      (begin
                        (write '(funapp 1148 23))
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
                          (write '(funapp 1153 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1153 59))
                        (display "\n")
                        (assert x7778))))
                    (g7777
                     (begin (write '(funapp 1154 28)) (display "\n") (< x 0))))
                   g7777)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7779
                     (begin
                       (write '(funapp 1156 53))
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
                             (write '(funapp 1162 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1162 58))
                           (display "\n")
                           (car x7782)))))
                      (begin
                        (write '(funapp 1163 23))
                        (display "\n")
                        (car x7781)))))
                   g7780)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7783
                     (begin (write '(funapp 1165 51)) (display "\n") '())))
                   g7783)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1169 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1169 57))
                        (display "\n")
                        (assert x7786))))
                    (g7785
                     (letrec*
                      ((x-cnd7787
                        (begin
                          (write '(funapp 1172 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7787
                        (begin (write '(funapp 1174 24)) (display "\n") '())
                        (letrec*
                         ((x7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1176 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1176 61))
                              (display "\n")
                              (reverse x7791))))
                          (x7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (list x7789)))))
                         (begin
                           (write '(funapp 1178 26))
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
                                (write '(funapp 1187 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1187 61))
                              (display "\n")
                              (car x7795)))))
                         (begin
                           (write '(funapp 1188 26))
                           (display "\n")
                           (car x7794)))))
                      (begin
                        (write '(funapp 1189 23))
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
                                (write '(funapp 1198 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1198 61))
                              (display "\n")
                              (car x7799)))))
                         (begin
                           (write '(funapp 1199 26))
                           (display "\n")
                           (cdr x7798)))))
                      (begin
                        (write '(funapp 1200 23))
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
                          (write '(funapp 1205 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1205 59))
                        (display "\n")
                        (assert x7802))))
                    (g7801
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1206 60))
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
                                (write '(funapp 1215 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1215 61))
                              (display "\n")
                              (cdr x7807)))))
                         (begin
                           (write '(funapp 1216 26))
                           (display "\n")
                           (car x7806)))))
                      (begin
                        (write '(funapp 1217 23))
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
                          (write '(funapp 1223 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1223 59))
                        (display "\n")
                        (assert x7811))))
                    (g7809
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1224 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1224 60))
                        (display "\n")
                        (assert x7812))))
                    (g7810
                     (letrec*
                      ((x-cnd7813
                        (begin
                          (write '(funapp 1227 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7813
                        (letrec*
                         ((g7814
                           (begin
                             (write '(funapp 1229 42))
                             (display "\n")
                             (proc))))
                         g7814)
                        (letrec*
                         ((x-cnd7815
                           (letrec*
                            ((x7816
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1232 58))
                              (display "\n")
                              (null? x7816)))))
                         (if x-cnd7815
                           (letrec*
                            ((g7817
                              (letrec*
                               ((x7818
                                 (begin
                                   (write '(funapp 1236 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1236 61))
                                 (display "\n")
                                 (proc x7818)))))
                            g7817)
                           (letrec*
                            ((x-cnd7819
                              (letrec*
                               ((x7820
                                 (begin
                                   (write '(funapp 1240 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1240 62))
                                 (display "\n")
                                 (null? x7820)))))
                            (if x-cnd7819
                              (letrec*
                               ((g7821
                                 (letrec*
                                  ((x7823
                                    (begin
                                      (write '(funapp 1245 43))
                                      (display "\n")
                                      (car args)))
                                   (x7822
                                    (begin
                                      (write '(funapp 1245 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1246 35))
                                    (display "\n")
                                    (proc x7823 x7822)))))
                               g7821)
                              (letrec*
                               ((x-cnd7824
                                 (letrec*
                                  ((x7825
                                    (begin
                                      (write '(funapp 1251 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1252 35))
                                    (display "\n")
                                    (null? x7825)))))
                               (if x-cnd7824
                                 (letrec*
                                  ((g7826
                                    (letrec*
                                     ((x7829
                                       (begin
                                         (write '(funapp 1257 46))
                                         (display "\n")
                                         (car args)))
                                      (x7828
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7827
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1260 38))
                                       (display "\n")
                                       (proc x7829 x7828 x7827)))))
                                  g7826)
                                 (letrec*
                                  ((x-cnd7830
                                    (letrec*
                                     ((x7831
                                       (begin
                                         (write '(funapp 1265 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1266 38))
                                       (display "\n")
                                       (null? x7831)))))
                                  (if x-cnd7830
                                    (letrec*
                                     ((g7832
                                       (letrec*
                                        ((x7836
                                          (begin
                                            (write '(funapp 1271 49))
                                            (display "\n")
                                            (car args)))
                                         (x7835
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7834
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7833
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1275 41))
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
                                               (write '(funapp 1282 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1283 44))
                                             (display "\n")
                                             (cdr x7839)))))
                                        (begin
                                          (write '(funapp 1284 41))
                                          (display "\n")
                                          (null? x7838)))))
                                     (if x-cnd7837
                                       (letrec*
                                        ((g7840
                                          (letrec*
                                           ((x7846
                                             (begin
                                               (write '(funapp 1289 52))
                                               (display "\n")
                                               (car args)))
                                            (x7845
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7844
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7843
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7841
                                             (letrec*
                                              ((x7842
                                                (begin
                                                  (write '(funapp 1295 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1296 47))
                                                (display "\n")
                                                (car x7842)))))
                                           (begin
                                             (write '(funapp 1297 44))
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
                                                  (write '(funapp 1309 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1310 47))
                                                (display "\n")
                                                (cddr x7849)))))
                                           (begin
                                             (write '(funapp 1311 44))
                                             (display "\n")
                                             (null? x7848)))))
                                        (if x-cnd7847
                                          (letrec*
                                           ((g7850
                                             (letrec*
                                              ((x7858
                                                (begin
                                                  (write '(funapp 1316 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7857
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7856
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7855
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7853
                                                (letrec*
                                                 ((x7854
                                                   (begin
                                                     (write '(funapp 1322 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1323 50))
                                                   (display "\n")
                                                   (car x7854))))
                                               (x7851
                                                (letrec*
                                                 ((x7852
                                                   (begin
                                                     (write '(funapp 1326 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1327 50))
                                                   (display "\n")
                                                   (cadr x7852)))))
                                              (begin
                                                (write '(funapp 1328 47))
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
                                                     (write '(funapp 1341 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1342 50))
                                                   (display "\n")
                                                   (cdddr x7861)))))
                                              (begin
                                                (write '(funapp 1343 47))
                                                (display "\n")
                                                (null? x7860)))))
                                           (if x-cnd7859
                                             (letrec*
                                              ((g7862
                                                (letrec*
                                                 ((x7872
                                                   (begin
                                                     (write '(funapp 1348 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7871
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7870
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7869
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7867
                                                   (letrec*
                                                    ((x7868
                                                      (begin
                                                        (write
                                                         '(funapp 1354 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1355 53))
                                                      (display "\n")
                                                      (car x7868))))
                                                  (x7865
                                                   (letrec*
                                                    ((x7866
                                                      (begin
                                                        (write
                                                         '(funapp 1358 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1359 53))
                                                      (display "\n")
                                                      (cadr x7866))))
                                                  (x7863
                                                   (letrec*
                                                    ((x7864
                                                      (begin
                                                        (write
                                                         '(funapp 1362 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1363 53))
                                                      (display "\n")
                                                      (caddr x7864)))))
                                                 (begin
                                                   (write '(funapp 1364 50))
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
                                                  (write '(funapp 1375 49))
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
                          (write '(funapp 1381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1381 57))
                        (display "\n")
                        (assert x7876))))
                    (g7875
                     (letrec*
                      ((x-cnd7877
                        (begin
                          (write '(funapp 1384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7877
                        #f
                        (letrec*
                         ((x-cnd7878
                           (letrec*
                            ((x7879
                              (begin
                                (write '(funapp 1389 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1389 55))
                              (display "\n")
                              (equal? x7879 e)))))
                         (if x-cnd7878
                           l
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 1392 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1392 55))
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
                                (write '(funapp 1401 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1401 61))
                              (display "\n")
                              (cdr x7884)))))
                         (begin
                           (write '(funapp 1402 26))
                           (display "\n")
                           (cdr x7883)))))
                      (begin
                        (write '(funapp 1403 23))
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
                                (write '(funapp 1412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1412 61))
                              (display "\n")
                              (cdr x7888)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cdr x7887)))))
                      (begin
                        (write '(funapp 1414 23))
                        (display "\n")
                        (car x7886)))))
                   g7885)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7889
                     (begin
                       (write '(funapp 1416 53))
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
                          (write '(funapp 1420 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1420 59))
                        (display "\n")
                        (assert x7892))))
                    (g7891
                     (begin (write '(funapp 1421 28)) (display "\n") (= x 0))))
                   g7891)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1428 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7894
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1430 52))
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
                          (write '(funapp 1436 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1436 55))
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
                             (write '(funapp 1446 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7898
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1448 55))
                              (display "\n")
                              (list? x7899)))
                           #f))))
                      (letrec*
                       ((g7900
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1451 52))
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
                                (write '(funapp 1461 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1461 61))
                              (display "\n")
                              (car x7904)))))
                         (begin
                           (write '(funapp 1462 26))
                           (display "\n")
                           (cdr x7903)))))
                      (begin
                        (write '(funapp 1463 23))
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
                           (write '(funapp 1470 58))
                           (display "\n")
                           (char<=? x7907 c)))))
                      (if x-cnd7906
                        (letrec*
                         ((x7908 #\9))
                         (begin
                           (write '(funapp 1472 48))
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
                          (write '(funapp 1479 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1479 57))
                        (display "\n")
                        (assert x7911))))
                    (g7910
                     (letrec*
                      ((x-cnd7912
                        (begin
                          (write '(funapp 1482 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7912
                        #f
                        (letrec*
                         ((x-cnd7913
                           (letrec*
                            ((x7914
                              (begin
                                (write '(funapp 1487 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1487 56))
                              (display "\n")
                              (eqv? x7914 k)))))
                         (if x-cnd7913
                           (begin
                             (write '(funapp 1489 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7915
                              (begin
                                (write '(funapp 1490 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1490 55))
                              (display "\n")
                              (assq k x7915)))))))))
                   g7910)))
               (not (lambda (x) (letrec* ((g7916 (if x #f #t))) g7916)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7917
                     (begin
                       (write '(funapp 1494 50))
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
                          (write '(funapp 1498 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1498 57))
                        (display "\n")
                        (assert x7920))))
                    (g7919
                     (letrec*
                      ((x-cnd7921
                        (begin
                          (write '(funapp 1501 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7921
                        #f
                        (letrec*
                         ((x-cnd7922
                           (letrec*
                            ((x7923
                              (begin
                                (write '(funapp 1506 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1506 55))
                              (display "\n")
                              (eq? x7923 e)))))
                         (if x-cnd7922
                           l
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1509 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1509 55))
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
                                (write '(funapp 1518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1518 61))
                              (display "\n")
                              (car x7928)))))
                         (begin
                           (write '(funapp 1519 26))
                           (display "\n")
                           (cdr x7927)))))
                      (begin
                        (write '(funapp 1520 23))
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
                          (write '(funapp 1525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1525 57))
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
                                  (write '(funapp 1533 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7933
                                0
                                (letrec*
                                 ((x7934
                                   (letrec*
                                    ((x7935
                                      (begin
                                        (write '(funapp 1538 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1538 63))
                                      (display "\n")
                                      (rec x7935)))))
                                 (begin
                                   (write '(funapp 1539 34))
                                   (display "\n")
                                   (+ 1 x7934)))))))
                           g7932))))
                      (letrec*
                       ((g7936
                         (begin
                           (write '(funapp 1541 40))
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
                          (write '(funapp 1546 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1546 58))
                        (display "\n")
                        (assert x7940))))
                    (g7938
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7941))))
                    (g7939
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1550 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7942
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1552 52))
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
                          (write '(funapp 1558 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1558 65))
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
                             (write '(funapp 1565 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1565 58))
                           (display "\n")
                           (car x7947)))))
                      (begin
                        (write '(funapp 1566 23))
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
                          (write '(funapp 1571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1571 57))
                        (display "\n")
                        (assert x7950))))
                    (g7949
                     (letrec*
                      ((x-cnd7951
                        (begin
                          (write '(funapp 1574 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7951
                        #f
                        (letrec*
                         ((x-cnd7952
                           (letrec*
                            ((x7953
                              (begin
                                (write '(funapp 1579 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1579 56))
                              (display "\n")
                              (equal? x7953 k)))))
                         (if x-cnd7952
                           (begin
                             (write '(funapp 1581 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7954
                              (begin
                                (write '(funapp 1582 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1582 55))
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
                          (write '(funapp 1587 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1587 55))
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
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7960))))
                    (g7958
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1594 63))
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
                          (write '(funapp 1601 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7964
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1603 52))
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
                          (write '(funapp 1609 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1609 62))
                        (display "\n")
                        (assert x7968))))
                    (g7966
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1610 57))
                        (display "\n")
                        (assert x7969))))
                    (g7967
                     (letrec*
                      ((x-cnd7970
                        (begin
                          (write '(funapp 1613 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7970
                        #t
                        (letrec*
                         ((x-cnd7971
                           (begin
                             (write '(funapp 1617 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7971
                           (letrec*
                            ((g7972
                              (letrec*
                               ((x7974
                                 (begin
                                   (write '(funapp 1620 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1620 64))
                                 (display "\n")
                                 (f x7974))))
                             (g7973
                              (letrec*
                               ((x7975
                                 (begin
                                   (write '(funapp 1622 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1622 58))
                                 (display "\n")
                                 (for-each f x7975)))))
                            g7973)
                           (begin
                             (write '(funapp 1624 27))
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
                          (write '(funapp 1629 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1629 59))
                        (display "\n")
                        (assert x7978))))
                    (g7977
                     (letrec*
                      ((x-cnd7979
                        (begin
                          (write '(funapp 1631 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7979
                        (begin
                          (write '(funapp 1631 67))
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
                          (write '(funapp 1636 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1636 58))
                        (display "\n")
                        (assert x7983))))
                    (g7981
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7984))))
                    (g7982
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1640 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7985
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1642 52))
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
                                (write '(funapp 1652 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1652 61))
                              (display "\n")
                              (cdr x7989)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (cdr x7988)))))
                      (begin
                        (write '(funapp 1654 23))
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
                             (write '(funapp 1662 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1662 58))
                           (display "\n")
                           (abs x7994))))
                       (x7992
                        (begin
                          (write '(funapp 1663 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1664 23))
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
                          (write '(funapp 1670 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (assert x7999))))
                    (g7996
                     (letrec*
                      ((x8000
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1671 63))
                        (display "\n")
                        (assert x8000))))
                    (g7997
                     (letrec*
                      ((x8001
                        (letrec*
                         ((x8002
                           (begin
                             (write '(funapp 1674 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1674 61))
                           (display "\n")
                           (< index x8002)))))
                      (begin
                        (write '(funapp 1675 23))
                        (display "\n")
                        (assert x8001))))
                    (g7998
                     (letrec*
                      ((x-cnd8003
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8003
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8005
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (cdr l)))
                          (x8004
                           (begin
                             (write '(funapp 1682 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1683 26))
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
                          (write '(funapp 1690 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8007
                        a
                        (letrec*
                         ((x8008
                           (begin
                             (write '(funapp 1693 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1693 57))
                           (display "\n")
                           (gcd b x8008)))))))
                   g8006)))
               (lock (lambda (st) (letrec* ((g8009 1)) g8009)))
               (unlock (lambda (st) (letrec* ((g8010 0)) g8010)))
               (f
                (lambda (n st)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x-cnd8012
                        (begin
                          (write '(funapp 1702 35))
                          (display "\n")
                          (> n 0))))
                      (if x-cnd8012
                        (begin
                          (write '(funapp 1703 37))
                          (display "\n")
                          (lock st))
                        st))))
                   g8011)))
               (g
                (lambda (n st)
                  (letrec*
                   ((g8013
                     (letrec*
                      ((x-cnd8014
                        (begin
                          (write '(funapp 1710 35))
                          (display "\n")
                          (> n 0))))
                      (if x-cnd8014
                        (begin
                          (write '(funapp 1711 37))
                          (display "\n")
                          (unlock st))
                        st))))
                   g8013)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8015
                     (letrec*
                      ((x8016
                        (begin
                          (write '(funapp 1716 45))
                          (display "\n")
                          (f n 0))))
                      (begin
                        (write '(funapp 1716 55))
                        (display "\n")
                        (g n x8016)))))
                   g8015))))
              (letrec*
               ((g8017
                 (begin
                   (write '(funapp 1720 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1721 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8019
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1725 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1725 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1725 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1725 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8020
                              (begin
                                (write '(funapp 1728 27))
                                (display "\n")
                                ((lambda (j7405 k7406 f7407)
                                   (letrec*
                                    ((g8021
                                      (lambda (g7404)
                                        (letrec*
                                         ((g8022
                                           (letrec*
                                            ((x8023
                                              (letrec*
                                               ((x8024
                                                 (begin
                                                   (write '(funapp 1738 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7405
                                                    k7406
                                                    g7404))))
                                               (begin
                                                 (write '(funapp 1739 42))
                                                 (display "\n")
                                                 (f7407 x8024)))))
                                            (begin
                                              (write '(funapp 1740 39))
                                              (display "\n")
                                              ((lambda (g7411 g7412 g7413)
                                                 (letrec*
                                                  ((g8025
                                                    (letrec*
                                                     ((x-cnd8026
                                                       (begin
                                                         (write
                                                          '(funapp 1745 48))
                                                         (display "\n")
                                                         ((lambda (v7410)
                                                            (letrec*
                                                             ((g8027
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1747
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  0
                                                                  v7410))))
                                                             g8027))
                                                          g7413))))
                                                     (if x-cnd8026
                                                       g7413
                                                       (begin
                                                         (write
                                                          '(blame
                                                            g7411
                                                            1752
                                                            47))
                                                         (display "\n")
                                                         (error
                                                          (format
                                                           "contract violation, blaming ~a~%"
                                                           g7411)))))))
                                                  g8025))
                                               j7405
                                               k7406
                                               x8023)))))
                                         g8022))))
                                    g8021))
                                 xj7402
                                 xk7403
                                 main))))
                            g8020)))
                         (x8018 (input)))
                        (begin
                          (write '(funapp 1767 21))
                          (display "\n")
                          (x8019 x8018)))))))))
               g8017))))
           g7442))))
       g7425)))
    g7424)))
