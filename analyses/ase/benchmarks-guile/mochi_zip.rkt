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
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7568
                    (begin
                      (write '(funapp 551 21))
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
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7573
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7369 x7574 x7573)))))
                                  (begin
                                    (write '(funapp 563 33))
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
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7569))))))
                  g7568)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7575
                    (begin
                      (write '(funapp 575 21))
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
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7375 x7580)))))
                                  (begin
                                    (write '(funapp 586 33))
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
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7576))))))
                  g7575)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7581
                    (begin
                      (write '(funapp 598 21))
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
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7381 x7586)))))
                                  (begin
                                    (write '(funapp 609 33))
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
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7582))))))
                  g7581)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7587
                    (begin
                      (write '(funapp 621 21))
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
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7592
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7388 x7593 x7592)))))
                                  (begin
                                    (write '(funapp 633 33))
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
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7588))))))
                  g7587)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7594
                    (begin
                      (write '(funapp 646 21))
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
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7394 x7599)))))
                                  (begin
                                    (write '(funapp 657 33))
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
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7595))))))
                  g7594)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7600
                    (begin
                      (write '(funapp 670 21))
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
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7605
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7401 x7606 x7605)))))
                                  (begin
                                    (write '(funapp 682 33))
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
                              (write '(funapp 688 41))
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
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7609)))))
                      (begin
                        (write '(funapp 696 23))
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
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7613))))
                    (g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7614))))
                    (g7612
                     (letrec*
                      ((x-cnd7615
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7615
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7619))))
                          (x7616
                           (letrec*
                            ((x7617
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7617)))))
                         (begin
                           (write '(funapp 712 26))
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
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
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
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7625)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7624)))))
                      (begin
                        (write '(funapp 728 23))
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
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7629)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7628)))))
                      (begin
                        (write '(funapp 739 23))
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
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7633))))
                    (g7631
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7634))))
                    (g7632
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
                       ((g7635
                         (begin
                           (write '(funapp 753 32))
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
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7639)))))
                      (begin
                        (write '(funapp 762 23))
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
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7643)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7642)))))
                      (begin
                        (write '(funapp 773 23))
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
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7646))))
                    (g7645
                     (letrec*
                      ((x-cnd7647
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7647
                        #f
                        (letrec*
                         ((x-cnd7648
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7649 k)))))
                         (if x-cnd7648
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
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
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
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
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7655))))
                    (g7654
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7656
                        ""
                        (letrec*
                         ((x7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7660))))
                          (x7657
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7658)))))
                         (begin
                           (write '(funapp 810 26))
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
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7664))))
                    (g7662
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7665))))
                    (g7663
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7666
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
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
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7670)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7669)))))
                      (begin
                        (write '(funapp 833 23))
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
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7674))))
                    (g7672
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7675))))
                    (g7673
                     (letrec*
                      ((x-cnd7676
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7676
                        x
                        (letrec*
                         ((x7678
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7677
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7678 x7677)))))))
                   g7673)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7679
                     (begin (write '(funapp 849 49)) (display "\n") '())))
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
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7682)))))
                      (if x-cnd7681
                        (letrec*
                         ((x7683 #\z))
                         (begin
                           (write '(funapp 858 48))
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
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
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
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7687 10)))))
                            (letrec*
                             ((g7688
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7689
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
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
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7692)))))
                      (begin
                        (write '(funapp 893 23))
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
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7695))))
                    (g7694
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7694)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7696
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7696)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7697 #f)) g7697)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7698
                     (letrec*
                      ((x7699
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
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
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7702))))
                    (g7701
                     (letrec*
                      ((x-cnd7703
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7703
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7701)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7704
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
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
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7706
                                 (begin
                                   (write '(funapp 934 46))
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
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7708
                                       (letrec*
                                        ((x-cnd7709
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7709
                                          (begin
                                            (write '(funapp 946 55))
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
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7711
                                             (letrec*
                                              ((x-cnd7712
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7712
                                                (letrec*
                                                 ((x-cnd7713
                                                   (letrec*
                                                    ((x7715
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7714
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7715 x7714)))))
                                                 (if x-cnd7713
                                                   (letrec*
                                                    ((x7717
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7716
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
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
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7719
                                                (letrec*
                                                 ((x-cnd7720
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7720
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
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
                                                                  992
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 994 60))
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
                                                                          1003
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
                                                                                   1012
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
                                                                               x7728
                                                                               x7727)))))
                                                                         (if x-cnd7726
                                                                           (letrec*
                                                                            ((x7729
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
                                                                               x7729)))
                                                                           #f)))))
                                                                    g7725))))
                                                                g7724))))
                                                           (letrec*
                                                            ((g7730
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
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
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7734)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7733)))))
                      (begin
                        (write '(funapp 1054 23))
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
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7738)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7737)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7736)))))
                   g7735)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7739
                     (begin
                       (write '(funapp 1067 53))
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
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7743))))
                    (g7741
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7744))))
                    (g7742
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
                       ((g7745
                         (begin
                           (write '(funapp 1080 32))
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
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
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
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7751))))
                    (g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7752))))
                    (g7750
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7753
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
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
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7756)))))
                      (begin
                        (write '(funapp 1102 23))
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7760)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7759)))))
                      (begin
                        (write '(funapp 1113 23))
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
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x7763)))))
                      (begin
                        (write '(funapp 1122 23))
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
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x7766)))))
                      (begin
                        (write '(funapp 1130 23))
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
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
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
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
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
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x7776)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x7775)))))
                      (begin
                        (write '(funapp 1149 23))
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
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x7779))))
                    (g7778
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g7778)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7780
                     (begin
                       (write '(funapp 1157 53))
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
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x7783)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x7782)))))
                   g7781)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7784
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g7784)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x7787))))
                    (g7786
                     (letrec*
                      ((x-cnd7788
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7788
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x7791
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x7792))))
                          (x7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x7790)))))
                         (begin
                           (write '(funapp 1179 26))
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
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x7796)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x7795)))))
                      (begin
                        (write '(funapp 1190 23))
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
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x7800)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x7799)))))
                      (begin
                        (write '(funapp 1201 23))
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
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x7803))))
                    (g7802
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
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
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x7808)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x7807)))))
                      (begin
                        (write '(funapp 1218 23))
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
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x7812))))
                    (g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x-cnd7814
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7814
                        (letrec*
                         ((g7815
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g7815)
                        (letrec*
                         ((x-cnd7816
                           (letrec*
                            ((x7817
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x7817)))))
                         (if x-cnd7816
                           (letrec*
                            ((g7818
                              (letrec*
                               ((x7819
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x7819)))))
                            g7818)
                           (letrec*
                            ((x-cnd7820
                              (letrec*
                               ((x7821
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x7821)))))
                            (if x-cnd7820
                              (letrec*
                               ((g7822
                                 (letrec*
                                  ((x7824
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x7823
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x7824 x7823)))))
                               g7822)
                              (letrec*
                               ((x-cnd7825
                                 (letrec*
                                  ((x7826
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x7826)))))
                               (if x-cnd7825
                                 (letrec*
                                  ((g7827
                                    (letrec*
                                     ((x7830
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x7829
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7828
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x7830 x7829 x7828)))))
                                  g7827)
                                 (letrec*
                                  ((x-cnd7831
                                    (letrec*
                                     ((x7832
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x7832)))))
                                  (if x-cnd7831
                                    (letrec*
                                     ((g7833
                                       (letrec*
                                        ((x7837
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x7836
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7835
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7834
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
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
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x7840)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x7839)))))
                                     (if x-cnd7838
                                       (letrec*
                                        ((g7841
                                          (letrec*
                                           ((x7847
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x7846
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7845
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7844
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7842
                                             (letrec*
                                              ((x7843
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x7843)))))
                                           (begin
                                             (write '(funapp 1298 44))
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
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x7850)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x7849)))))
                                        (if x-cnd7848
                                          (letrec*
                                           ((g7851
                                             (letrec*
                                              ((x7859
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7858
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7857
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7856
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7854
                                                (letrec*
                                                 ((x7855
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x7855))))
                                               (x7852
                                                (letrec*
                                                 ((x7853
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x7853)))))
                                              (begin
                                                (write '(funapp 1329 47))
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
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x7862)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x7861)))))
                                           (if x-cnd7860
                                             (letrec*
                                              ((g7863
                                                (letrec*
                                                 ((x7873
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7872
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7871
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7870
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7868
                                                   (letrec*
                                                    ((x7869
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x7869))))
                                                  (x7866
                                                   (letrec*
                                                    ((x7867
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x7867))))
                                                  (x7864
                                                   (letrec*
                                                    ((x7865
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x7865)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
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
                                                  (write '(funapp 1376 49))
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
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x7877))))
                    (g7876
                     (letrec*
                      ((x-cnd7878
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7878
                        #f
                        (letrec*
                         ((x-cnd7879
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x7880 e)))))
                         (if x-cnd7879
                           l
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
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
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x7885)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x7884)))))
                      (begin
                        (write '(funapp 1404 23))
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
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x7889)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x7888)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x7887)))))
                   g7886)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7890
                     (begin
                       (write '(funapp 1417 53))
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
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x7893))))
                    (g7892
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g7892)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7895
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
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
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
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
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7899
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x7900)))
                           #f))))
                      (letrec*
                       ((g7901
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
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
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x7905)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x7904)))))
                      (begin
                        (write '(funapp 1464 23))
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
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x7908 c)))))
                      (if x-cnd7907
                        (letrec*
                         ((x7909 #\9))
                         (begin
                           (write '(funapp 1473 48))
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
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7912))))
                    (g7911
                     (letrec*
                      ((x-cnd7913
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7913
                        #f
                        (letrec*
                         ((x-cnd7914
                           (letrec*
                            ((x7915
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x7915 k)))))
                         (if x-cnd7914
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7916
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x7916)))))))))
                   g7911)))
               (not (lambda (x) (letrec* ((g7917 (if x #f #t))) g7917)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7918
                     (begin
                       (write '(funapp 1495 50))
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
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x7921))))
                    (g7920
                     (letrec*
                      ((x-cnd7922
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7922
                        #f
                        (letrec*
                         ((x-cnd7923
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x7924 e)))))
                         (if x-cnd7923
                           l
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
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
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x7929)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x7928)))))
                      (begin
                        (write '(funapp 1521 23))
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
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
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
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7934
                                0
                                (letrec*
                                 ((x7935
                                   (letrec*
                                    ((x7936
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x7936)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x7935)))))))
                           g7933))))
                      (letrec*
                       ((g7937
                         (begin
                           (write '(funapp 1542 40))
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
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7941))))
                    (g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7943
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
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
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
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
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x7948)))))
                      (begin
                        (write '(funapp 1567 23))
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
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x7951))))
                    (g7950
                     (letrec*
                      ((x-cnd7952
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7952
                        #f
                        (letrec*
                         ((x-cnd7953
                           (letrec*
                            ((x7954
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x7954 k)))))
                         (if x-cnd7953
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7955
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
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
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
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
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
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
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
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
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7965
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
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
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x7969))))
                    (g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((x-cnd7971
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7971
                        #t
                        (letrec*
                         ((x-cnd7972
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7972
                           (letrec*
                            ((g7973
                              (letrec*
                               ((x7975
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x7975))))
                             (g7974
                              (letrec*
                               ((x7976
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x7976)))))
                            g7974)
                           (begin
                             (write '(funapp 1625 27))
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
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x7979))))
                    (g7978
                     (letrec*
                      ((x-cnd7980
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7980
                        (begin
                          (write '(funapp 1632 67))
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
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7984))))
                    (g7982
                     (letrec*
                      ((x7985
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7985))))
                    (g7983
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7986
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
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
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x7990)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x7989)))))
                      (begin
                        (write '(funapp 1655 23))
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
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x7995))))
                       (x7993
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
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
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x8000))))
                    (g7997
                     (letrec*
                      ((x8001
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x8001))))
                    (g7998
                     (letrec*
                      ((x8002
                        (letrec*
                         ((x8003
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x8003)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x8002))))
                    (g7999
                     (letrec*
                      ((x-cnd8004
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8004
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8006
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x8005
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
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
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8008
                        a
                        (letrec*
                         ((x8009
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8009)))))))
                   g8007)))
               (zip
                (lambda (xs ys)
                  (letrec*
                   ((g8010
                     (letrec*
                      ((x-cnd8011
                        (letrec*
                         ((x-cnd8012
                           (begin
                             (write '(funapp 1703 38))
                             (display "\n")
                             (empty? xs))))
                         (if x-cnd8012
                           (begin
                             (write '(funapp 1704 40))
                             (display "\n")
                             (empty? ys))
                           #f))))
                      (if x-cnd8011
                        (letrec* ((g8013 empty)) g8013)
                        (letrec*
                         ((x-cnd8014
                           (letrec*
                            ((x-cnd8015
                              (begin
                                (write '(funapp 1710 41))
                                (display "\n")
                                (cons? xs))))
                            (if x-cnd8015
                              (begin
                                (write '(funapp 1711 43))
                                (display "\n")
                                (cons? ys))
                              #f))))
                         (if x-cnd8014
                           (letrec*
                            ((g8016
                              (letrec*
                               ((x8020
                                 (letrec*
                                  ((x8022
                                    (begin
                                      (write '(funapp 1718 43))
                                      (display "\n")
                                      (car xs)))
                                   (x8021
                                    (begin
                                      (write '(funapp 1718 60))
                                      (display "\n")
                                      (car ys))))
                                  (begin
                                    (write '(funapp 1719 35))
                                    (display "\n")
                                    (cons x8022 x8021))))
                                (x8017
                                 (letrec*
                                  ((x8019
                                    (begin
                                      (write '(funapp 1722 43))
                                      (display "\n")
                                      (cdr xs)))
                                   (x8018
                                    (begin
                                      (write '(funapp 1722 60))
                                      (display "\n")
                                      (cdr ys))))
                                  (begin
                                    (write '(funapp 1723 35))
                                    (display "\n")
                                    (zip x8019 x8018)))))
                               (begin
                                 (write '(funapp 1724 32))
                                 (display "\n")
                                 (cons x8020 x8017)))))
                            g8016)
                           (letrec*
                            ((g8023
                              (begin
                                (write '(funapp 1726 44))
                                (display "\n")
                                'fail)))
                            g8023)))))))
                   g8010)))
               (mk-list
                (lambda (n)
                  (letrec*
                   ((g8024
                     (letrec*
                      ((x-cnd8025
                        (begin
                          (write '(funapp 1733 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd8025
                        empty
                        (letrec*
                         ((x8026
                           (letrec*
                            ((x8027
                              (begin
                                (write '(funapp 1737 51))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1737 61))
                              (display "\n")
                              (mk-list x8027)))))
                         (begin
                           (write '(funapp 1738 26))
                           (display "\n")
                           (cons n x8026)))))))
                   g8024)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8028
                     (letrec*
                      ((xs
                        (begin
                          (write '(funapp 1745 28))
                          (display "\n")
                          (mk-list n))))
                      (letrec*
                       ((g8029
                         (begin
                           (write '(funapp 1746 40))
                           (display "\n")
                           (zip xs xs))))
                       g8029))))
                   g8028))))
              (letrec*
               ((g8030
                 (begin
                   (write '(funapp 1750 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1751 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8032
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1755 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1755 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1755 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1755 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8033
                              (begin
                                (write '(funapp 1758 27))
                                (display "\n")
                                ((lambda (j7405 k7406 f7407)
                                   (letrec*
                                    ((g8034
                                      (lambda (g7404)
                                        (letrec*
                                         ((g8035
                                           (letrec*
                                            ((x8038
                                              (begin
                                                (write '(funapp 1765 47))
                                                (display "\n")
                                                (listof integer?/c)))
                                             (x8036
                                              (letrec*
                                               ((x8037
                                                 (begin
                                                   (write '(funapp 1769 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7405
                                                    k7406
                                                    g7404))))
                                               (begin
                                                 (write '(funapp 1770 42))
                                                 (display "\n")
                                                 (f7407 x8037)))))
                                            (begin
                                              (write '(funapp 1771 39))
                                              (display "\n")
                                              (x8038 j7405 k7406 x8036)))))
                                         g8035))))
                                    g8034))
                                 xj7402
                                 xk7403
                                 mk-list))))
                            g8033)))
                         (x8031 (input)))
                        (begin
                          (write '(funapp 1779 21))
                          (display "\n")
                          (x8032 x8031)))
                       (letrec*
                        ((x8040
                          (letrec*
                           ((xj7408
                             (begin
                               (write '(funapp 1783 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1783 37))
                                  (display "\n")
                                  'module))))
                            (xk7409
                             (begin
                               (write '(funapp 1783 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1783 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8041
                              (begin
                                (write '(funapp 1786 27))
                                (display "\n")
                                ((lambda (j7411 k7412 f7413)
                                   (letrec*
                                    ((g8042
                                      (lambda (g7410)
                                        (letrec*
                                         ((g8043
                                           (letrec*
                                            ((x8046
                                              (letrec*
                                               ((x8047
                                                 (begin
                                                   (write '(funapp 1796 44))
                                                   (display "\n")
                                                   (cons/c
                                                    integer?/c
                                                    integer?/c))))
                                               (begin
                                                 (write '(funapp 1797 42))
                                                 (display "\n")
                                                 (listof x8047))))
                                             (x8044
                                              (letrec*
                                               ((x8045
                                                 (begin
                                                   (write '(funapp 1801 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7411
                                                    k7412
                                                    g7410))))
                                               (begin
                                                 (write '(funapp 1802 42))
                                                 (display "\n")
                                                 (f7413 x8045)))))
                                            (begin
                                              (write '(funapp 1803 39))
                                              (display "\n")
                                              (x8046 j7411 k7412 x8044)))))
                                         g8043))))
                                    g8042))
                                 xj7408
                                 xk7409
                                 main))))
                            g8041)))
                         (x8039 (input)))
                        (begin
                          (write '(funapp 1811 21))
                          (display "\n")
                          (x8040 x8039)))))))))
               g8030))))
           g7442))))
       g7425)))
    g7424)))
