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
               (add1
                (lambda (x)
                  (letrec*
                   ((g7567
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7567)))
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7568
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7568)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7569
                    (begin
                      (write '(funapp 552 21))
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
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7574
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7369 x7575 x7574)))))
                                  (begin
                                    (write '(funapp 564 33))
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
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7570))))))
                  g7569)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7576
                    (begin
                      (write '(funapp 576 21))
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
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7375 x7581)))))
                                  (begin
                                    (write '(funapp 587 33))
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
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7577))))))
                  g7576)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7582
                    (begin
                      (write '(funapp 599 21))
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
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7381 x7587)))))
                                  (begin
                                    (write '(funapp 610 33))
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
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7583))))))
                  g7582)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7588
                    (begin
                      (write '(funapp 622 21))
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
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7593
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7388 x7594 x7593)))))
                                  (begin
                                    (write '(funapp 634 33))
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
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7589))))))
                  g7588)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7595
                    (begin
                      (write '(funapp 647 21))
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
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7394 x7600)))))
                                  (begin
                                    (write '(funapp 658 33))
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
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7596))))))
                  g7595)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7601
                    (begin
                      (write '(funapp 671 21))
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
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7606
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7401 x7607 x7606)))))
                                  (begin
                                    (write '(funapp 683 33))
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
                              (write '(funapp 689 41))
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
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7610)))))
                      (begin
                        (write '(funapp 697 23))
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
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7614))))
                    (g7612
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7615))))
                    (g7613
                     (letrec*
                      ((x-cnd7616
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7616
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7619
                           (letrec*
                            ((x7620
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7620))))
                          (x7617
                           (letrec*
                            ((x7618
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7618)))))
                         (begin
                           (write '(funapp 713 26))
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
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
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
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7626)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7625)))))
                      (begin
                        (write '(funapp 729 23))
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
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7630)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7629)))))
                      (begin
                        (write '(funapp 740 23))
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
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x7634))))
                    (g7632
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x7635))))
                    (g7633
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
                       ((g7636
                         (begin
                           (write '(funapp 754 32))
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
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x7640)))))
                      (begin
                        (write '(funapp 763 23))
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
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x7644)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x7643)))))
                      (begin
                        (write '(funapp 774 23))
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
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x7647))))
                    (g7646
                     (letrec*
                      ((x-cnd7648
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7648
                        #f
                        (letrec*
                         ((x-cnd7649
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x7650 k)))))
                         (if x-cnd7649
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
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
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
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
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x7656))))
                    (g7655
                     (letrec*
                      ((x-cnd7657
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7657
                        ""
                        (letrec*
                         ((x7660
                           (letrec*
                            ((x7661
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x7661))))
                          (x7658
                           (letrec*
                            ((x7659
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x7659)))))
                         (begin
                           (write '(funapp 811 26))
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
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7665))))
                    (g7663
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x7666))))
                    (g7664
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7667
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
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
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7671)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x7670)))))
                      (begin
                        (write '(funapp 834 23))
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
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7675))))
                    (g7673
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x7676))))
                    (g7674
                     (letrec*
                      ((x-cnd7677
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7677
                        x
                        (letrec*
                         ((x7679
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x7678
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x7679 x7678)))))))
                   g7674)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7680
                     (begin (write '(funapp 850 49)) (display "\n") '())))
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
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x7683)))))
                      (if x-cnd7682
                        (letrec*
                         ((x7684 #\z))
                         (begin
                           (write '(funapp 859 48))
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
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
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
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x7688 10)))))
                            (letrec*
                             ((g7689
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7690
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
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
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x7693)))))
                      (begin
                        (write '(funapp 894 23))
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
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x7696))))
                    (g7695
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g7695)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7697
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g7697)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7698 #f)) g7698)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7699
                     (letrec*
                      ((x7700
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
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
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x7703))))
                    (g7702
                     (letrec*
                      ((x-cnd7704
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7704
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g7702)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7705
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
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
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7707
                                 (begin
                                   (write '(funapp 935 46))
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
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7709
                                       (letrec*
                                        ((x-cnd7710
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7710
                                          (begin
                                            (write '(funapp 947 55))
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
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7712
                                             (letrec*
                                              ((x-cnd7713
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7713
                                                (letrec*
                                                 ((x-cnd7714
                                                   (letrec*
                                                    ((x7716
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7715
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x7716 x7715)))))
                                                 (if x-cnd7714
                                                   (letrec*
                                                    ((x7718
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7717
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
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
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7720
                                                (letrec*
                                                 ((x-cnd7721
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7721
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
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
                                                                  993
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 995 60))
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
                                                                          1004
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
                                                                                   1013
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
                                                                               x7729
                                                                               x7728)))))
                                                                         (if x-cnd7727
                                                                           (letrec*
                                                                            ((x7730
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
                                                                               x7730)))
                                                                           #f)))))
                                                                    g7726))))
                                                                g7725))))
                                                           (letrec*
                                                            ((g7731
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
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
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x7735)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x7734)))))
                      (begin
                        (write '(funapp 1055 23))
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
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x7739)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x7738)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x7737)))))
                   g7736)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7740
                     (begin
                       (write '(funapp 1068 53))
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
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x7744))))
                    (g7742
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x7745))))
                    (g7743
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
                       ((g7746
                         (begin
                           (write '(funapp 1081 32))
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
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
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
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7752))))
                    (g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7753))))
                    (g7751
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7754
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
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
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x7757)))))
                      (begin
                        (write '(funapp 1103 23))
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
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x7761)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x7760)))))
                      (begin
                        (write '(funapp 1114 23))
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
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x7764)))))
                      (begin
                        (write '(funapp 1123 23))
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
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x7767)))))
                      (begin
                        (write '(funapp 1131 23))
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
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7771))))
                    (g7769
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x7772))))
                    (g7770
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
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
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x7777)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x7776)))))
                      (begin
                        (write '(funapp 1150 23))
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
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x7780))))
                    (g7779
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g7779)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7781
                     (begin
                       (write '(funapp 1158 53))
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
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x7784)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x7783)))))
                   g7782)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7785
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g7785)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x7788))))
                    (g7787
                     (letrec*
                      ((x-cnd7789
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7789
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x7792
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x7793))))
                          (x7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x7791)))))
                         (begin
                           (write '(funapp 1180 26))
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
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x7797)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x7796)))))
                      (begin
                        (write '(funapp 1191 23))
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
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x7801)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x7800)))))
                      (begin
                        (write '(funapp 1202 23))
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
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x7804))))
                    (g7803
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
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
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x7809)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x7808)))))
                      (begin
                        (write '(funapp 1219 23))
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
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x-cnd7815
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7815
                        (letrec*
                         ((g7816
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g7816)
                        (letrec*
                         ((x-cnd7817
                           (letrec*
                            ((x7818
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x7818)))))
                         (if x-cnd7817
                           (letrec*
                            ((g7819
                              (letrec*
                               ((x7820
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x7820)))))
                            g7819)
                           (letrec*
                            ((x-cnd7821
                              (letrec*
                               ((x7822
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x7822)))))
                            (if x-cnd7821
                              (letrec*
                               ((g7823
                                 (letrec*
                                  ((x7825
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x7824
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x7825 x7824)))))
                               g7823)
                              (letrec*
                               ((x-cnd7826
                                 (letrec*
                                  ((x7827
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x7827)))))
                               (if x-cnd7826
                                 (letrec*
                                  ((g7828
                                    (letrec*
                                     ((x7831
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x7830
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7829
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x7831 x7830 x7829)))))
                                  g7828)
                                 (letrec*
                                  ((x-cnd7832
                                    (letrec*
                                     ((x7833
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x7833)))))
                                  (if x-cnd7832
                                    (letrec*
                                     ((g7834
                                       (letrec*
                                        ((x7838
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x7837
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7836
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7835
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
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
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x7841)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x7840)))))
                                     (if x-cnd7839
                                       (letrec*
                                        ((g7842
                                          (letrec*
                                           ((x7848
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x7847
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7846
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7845
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7843
                                             (letrec*
                                              ((x7844
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x7844)))))
                                           (begin
                                             (write '(funapp 1299 44))
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
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x7851)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x7850)))))
                                        (if x-cnd7849
                                          (letrec*
                                           ((g7852
                                             (letrec*
                                              ((x7860
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7859
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7858
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7857
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7855
                                                (letrec*
                                                 ((x7856
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x7856))))
                                               (x7853
                                                (letrec*
                                                 ((x7854
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x7854)))))
                                              (begin
                                                (write '(funapp 1330 47))
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
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x7863)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x7862)))))
                                           (if x-cnd7861
                                             (letrec*
                                              ((g7864
                                                (letrec*
                                                 ((x7874
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7873
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7872
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7871
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7869
                                                   (letrec*
                                                    ((x7870
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x7870))))
                                                  (x7867
                                                   (letrec*
                                                    ((x7868
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x7868))))
                                                  (x7865
                                                   (letrec*
                                                    ((x7866
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x7866)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
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
                                                  (write '(funapp 1377 49))
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
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x7878))))
                    (g7877
                     (letrec*
                      ((x-cnd7879
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7879
                        #f
                        (letrec*
                         ((x-cnd7880
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x7881 e)))))
                         (if x-cnd7880
                           l
                           (letrec*
                            ((x7882
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
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
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x7886)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x7885)))))
                      (begin
                        (write '(funapp 1405 23))
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
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x7890)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x7889)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x7888)))))
                   g7887)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7891
                     (begin
                       (write '(funapp 1418 53))
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
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x7894))))
                    (g7893
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g7893)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7896
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
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
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
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
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7900
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x7901)))
                           #f))))
                      (letrec*
                       ((g7902
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
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
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x7906)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x7905)))))
                      (begin
                        (write '(funapp 1465 23))
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
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x7909 c)))))
                      (if x-cnd7908
                        (letrec*
                         ((x7910 #\9))
                         (begin
                           (write '(funapp 1474 48))
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
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x7913))))
                    (g7912
                     (letrec*
                      ((x-cnd7914
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7914
                        #f
                        (letrec*
                         ((x-cnd7915
                           (letrec*
                            ((x7916
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x7916 k)))))
                         (if x-cnd7915
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x7917)))))))))
                   g7912)))
               (not (lambda (x) (letrec* ((g7918 (if x #f #t))) g7918)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7919
                     (begin
                       (write '(funapp 1496 50))
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
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x7922))))
                    (g7921
                     (letrec*
                      ((x-cnd7923
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7923
                        #f
                        (letrec*
                         ((x-cnd7924
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x7925 e)))))
                         (if x-cnd7924
                           l
                           (letrec*
                            ((x7926
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
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
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x7930)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x7929)))))
                      (begin
                        (write '(funapp 1522 23))
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
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
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
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7935
                                0
                                (letrec*
                                 ((x7936
                                   (letrec*
                                    ((x7937
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x7937)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x7936)))))))
                           g7934))))
                      (letrec*
                       ((g7938
                         (begin
                           (write '(funapp 1543 40))
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
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7944
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
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
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
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
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x7949)))))
                      (begin
                        (write '(funapp 1568 23))
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
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x7952))))
                    (g7951
                     (letrec*
                      ((x-cnd7953
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7953
                        #f
                        (letrec*
                         ((x-cnd7954
                           (letrec*
                            ((x7955
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x7955 k)))))
                         (if x-cnd7954
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7956
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
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
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
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
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7962))))
                    (g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x7963))))
                    (g7961
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
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
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7966
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
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
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x7971))))
                    (g7969
                     (letrec*
                      ((x-cnd7972
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7972
                        #t
                        (letrec*
                         ((x-cnd7973
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7973
                           (letrec*
                            ((g7974
                              (letrec*
                               ((x7976
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x7976))))
                             (g7975
                              (letrec*
                               ((x7977
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x7977)))))
                            g7975)
                           (begin
                             (write '(funapp 1626 27))
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
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x7980))))
                    (g7979
                     (letrec*
                      ((x-cnd7981
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7981
                        (begin
                          (write '(funapp 1633 67))
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
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7985))))
                    (g7983
                     (letrec*
                      ((x7986
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x7986))))
                    (g7984
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7987
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
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
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x7991)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x7990)))))
                      (begin
                        (write '(funapp 1656 23))
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
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x7996))))
                       (x7994
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
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
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x8001))))
                    (g7998
                     (letrec*
                      ((x8002
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x8002))))
                    (g7999
                     (letrec*
                      ((x8003
                        (letrec*
                         ((x8004
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x8004)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x8003))))
                    (g8000
                     (letrec*
                      ((x-cnd8005
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8005
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8007
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x8006
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
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
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8009
                        a
                        (letrec*
                         ((x8010
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x8010)))))))
                   g8008)))
               (zip
                (lambda (xs ys)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x-cnd8012
                        (letrec*
                         ((x-cnd8013
                           (begin
                             (write '(funapp 1704 38))
                             (display "\n")
                             (empty? xs))))
                         (if x-cnd8013
                           (begin
                             (write '(funapp 1705 40))
                             (display "\n")
                             (empty? ys))
                           #f))))
                      (if x-cnd8012
                        (letrec* ((g8014 empty)) g8014)
                        (letrec*
                         ((x-cnd8015
                           (letrec*
                            ((x-cnd8016
                              (begin
                                (write '(funapp 1711 41))
                                (display "\n")
                                (pair? xs))))
                            (if x-cnd8016
                              (begin
                                (write '(funapp 1712 43))
                                (display "\n")
                                (pair? ys))
                              #f))))
                         (if x-cnd8015
                           (letrec*
                            ((g8017
                              (letrec*
                               ((x8021
                                 (letrec*
                                  ((x8023
                                    (begin
                                      (write '(funapp 1719 43))
                                      (display "\n")
                                      (car xs)))
                                   (x8022
                                    (begin
                                      (write '(funapp 1719 60))
                                      (display "\n")
                                      (car ys))))
                                  (begin
                                    (write '(funapp 1720 35))
                                    (display "\n")
                                    (cons x8023 x8022))))
                                (x8018
                                 (letrec*
                                  ((x8020
                                    (begin
                                      (write '(funapp 1723 43))
                                      (display "\n")
                                      (cdr xs)))
                                   (x8019
                                    (begin
                                      (write '(funapp 1723 60))
                                      (display "\n")
                                      (cdr ys))))
                                  (begin
                                    (write '(funapp 1724 35))
                                    (display "\n")
                                    (zip x8020 x8019)))))
                               (begin
                                 (write '(funapp 1725 32))
                                 (display "\n")
                                 (cons x8021 x8018)))))
                            g8017)
                           (letrec*
                            ((g8024
                              (begin
                                (write '(funapp 1727 44))
                                (display "\n")
                                'fail)))
                            g8024)))))))
                   g8011)))
               (mk-list
                (lambda (n)
                  (letrec*
                   ((g8025
                     (letrec*
                      ((x-cnd8026
                        (begin
                          (write '(funapp 1734 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd8026
                        empty
                        (letrec*
                         ((x8027
                           (letrec*
                            ((x8028
                              (begin
                                (write '(funapp 1738 51))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1738 61))
                              (display "\n")
                              (mk-list x8028)))))
                         (begin
                           (write '(funapp 1739 26))
                           (display "\n")
                           (cons n x8027)))))))
                   g8025)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8029
                     (letrec*
                      ((xs
                        (begin
                          (write '(funapp 1746 28))
                          (display "\n")
                          (mk-list n))))
                      (letrec*
                       ((g8030
                         (begin
                           (write '(funapp 1747 40))
                           (display "\n")
                           (zip xs xs))))
                       g8030))))
                   g8029))))
              (letrec*
               ((g8031
                 (begin
                   (write '(funapp 1751 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1752 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8033
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1756 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1756 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1756 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1756 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8034
                              (begin
                                (write '(funapp 1759 27))
                                (display "\n")
                                ((lambda (j7405 k7406 f7407)
                                   (letrec*
                                    ((g8035
                                      (lambda (g7404)
                                        (letrec*
                                         ((g8036
                                           (letrec*
                                            ((x8039
                                              (begin
                                                (write '(funapp 1766 47))
                                                (display "\n")
                                                (listof integer?/c)))
                                             (x8037
                                              (letrec*
                                               ((x8038
                                                 (begin
                                                   (write '(funapp 1770 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7405
                                                    k7406
                                                    g7404))))
                                               (begin
                                                 (write '(funapp 1771 42))
                                                 (display "\n")
                                                 (f7407 x8038)))))
                                            (begin
                                              (write '(funapp 1772 39))
                                              (display "\n")
                                              (x8039 j7405 k7406 x8037)))))
                                         g8036))))
                                    g8035))
                                 xj7402
                                 xk7403
                                 mk-list))))
                            g8034)))
                         (x8032 (input)))
                        (begin
                          (write '(funapp 1780 21))
                          (display "\n")
                          (x8033 x8032)))
                       (letrec*
                        ((x8041
                          (letrec*
                           ((xj7408
                             (begin
                               (write '(funapp 1784 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1784 37))
                                  (display "\n")
                                  'module))))
                            (xk7409
                             (begin
                               (write '(funapp 1784 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1784 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8042
                              (begin
                                (write '(funapp 1787 27))
                                (display "\n")
                                ((lambda (j7411 k7412 f7413)
                                   (letrec*
                                    ((g8043
                                      (lambda (g7410)
                                        (letrec*
                                         ((g8044
                                           (letrec*
                                            ((x8047
                                              (letrec*
                                               ((x8048
                                                 (begin
                                                   (write '(funapp 1797 44))
                                                   (display "\n")
                                                   (cons/c
                                                    integer?/c
                                                    integer?/c))))
                                               (begin
                                                 (write '(funapp 1798 42))
                                                 (display "\n")
                                                 (listof x8048))))
                                             (x8045
                                              (letrec*
                                               ((x8046
                                                 (begin
                                                   (write '(funapp 1802 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7411
                                                    k7412
                                                    g7410))))
                                               (begin
                                                 (write '(funapp 1803 42))
                                                 (display "\n")
                                                 (f7413 x8046)))))
                                            (begin
                                              (write '(funapp 1804 39))
                                              (display "\n")
                                              (x8047 j7411 k7412 x8045)))))
                                         g8044))))
                                    g8043))
                                 xj7408
                                 xk7409
                                 main))))
                            g8042)))
                         (x8040 (input)))
                        (begin
                          (write '(funapp 1812 21))
                          (display "\n")
                          (x8041 x8040)))))))))
               g8031))))
           g7442))))
       g7425)))
    g7424)))
