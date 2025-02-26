(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7419 #t)) g7419)))
    (meta (lambda (v) (letrec* ((g7420 v)) g7420)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7421
          (letrec*
           ((g7422
             (letrec*
              ((x-e7423 lst))
              (letrec*
               ((v1742 x-e7423))
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
                   ((x-cnd7424
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7424
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
           g7422)))
        g7421)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7425 (lambda (v) (letrec* ((g7426 v)) g7426)))) g7425)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7427
          (letrec*
           ((x7428 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7428)))))
        g7427))))
   (letrec*
    ((g7429
      (letrec*
       ((g7430
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7431
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7431)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7432
                 (letrec*
                  ((x7434
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7434))))
                (g7433
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7435
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7436 (if val7245 val7245 #f))) g7436)))))
                   g7435))))
               g7433)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7437
                 (letrec*
                  ((x7439
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7439))))
                (g7438
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7440
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7441 (if val7247 val7247 #f))) g7441)))))
                   g7440))))
               g7438)))
           (>
            (lambda (x y)
              (letrec*
               ((g7442
                 (letrec*
                  ((x7444
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7444))))
                (g7443
                 (letrec*
                  ((x7445
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7445)))))
               g7443)))
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
           ((g7446 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7447
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7448
                     (lambda (k j lst)
                       (letrec*
                        ((g7449
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7450
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7450))
                             lst))))
                        g7449))))
                   g7448)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7452
                        g7265
                        (begin
                          (write '(blame g7263 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7451)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7454
                        g7268
                        (begin
                          (write '(blame g7266 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7453)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7456
                        g7271
                        (begin
                          (write '(blame g7269 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7455)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7459 #t)) g7459)) g7274))))
                      (if x-cnd7458
                        g7274
                        (begin
                          (write '(blame g7272 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7457)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7462 #t)) g7462)) g7277))))
                      (if x-cnd7461
                        g7277
                        (begin
                          (write '(blame g7275 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7460)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7463
                     (letrec*
                      ((x-cnd7464
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7464
                        g7280
                        (begin
                          (write '(blame g7278 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7463)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7465
                     (lambda (k j v)
                       (letrec*
                        ((g7466
                          (letrec*
                           ((x7469
                             (letrec*
                              ((x7470
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7470))))
                            (x7467
                             (letrec*
                              ((x7468
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7468)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7469 x7467)))))
                        g7466))))
                   g7465)))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x-cnd7472
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7472
                        g7283
                        (begin
                          (write '(blame g7281 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7471)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x-cnd7474
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7474
                        g7286
                        (begin
                          (write '(blame g7284 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7473)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7475
                     (letrec*
                      ((x-cnd7476
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7476
                        g7289
                        (begin
                          (write '(blame g7287 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7475)))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7477
                     (letrec*
                      ((x-cnd7478
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7292))))
                      (if x-cnd7478
                        g7292
                        (begin
                          (write '(blame g7290 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7477)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7479
                     (lambda (k j v)
                       (letrec*
                        ((g7480
                          (letrec*
                           ((x-cnd7481
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7481
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7480))))
                   g7479)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7482
                     (lambda (k j v)
                       (letrec*
                        ((g7483
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7484
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7484))))
                        g7483))))
                   g7482)))
               (null?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7485
                     (letrec*
                      ((x-cnd7486
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7295))))
                      (if x-cnd7486
                        g7295
                        (begin
                          (write '(blame g7293 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7485)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7487
                     (lambda (k j v)
                       (letrec*
                        ((g7488
                          (letrec*
                           ((x-cnd7489
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7489
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7493
                                (letrec*
                                 ((x7494
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7494))))
                               (x7490
                                (letrec*
                                 ((x7492
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7491
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7492 k j x7491)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7493 x7490)))))))
                        g7488))))
                   g7487)))
               (any? (lambda (v) (letrec* ((g7495 #t)) g7495)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7496
                     (letrec*
                      ((x7497
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7497)))))
                   g7496)))
               (nonzero?/c
                (lambda (g7296 g7297 g7298)
                  (letrec*
                   ((g7498
                     (letrec*
                      ((x-cnd7499
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7500
                                (letrec*
                                 ((x7501
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7501)))))
                              g7500))
                           g7298))))
                      (if x-cnd7499
                        g7298
                        (begin
                          (write '(blame g7296 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7296)))))))
                   g7498)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7502
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7503
                          (letrec*
                           ((x-cnd7504
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7505
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7505))
                                g7301))))
                           (if x-cnd7504
                             g7301
                             (begin
                               (write '(blame g7299 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7503))))
                   g7502)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7506
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7507
                          (letrec*
                           ((x-cnd7508
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7509
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7509))
                                g7304))))
                           (if x-cnd7508
                             g7304
                             (begin
                               (write '(blame g7302 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7507))))
                   g7506)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7510
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7511
                          (letrec*
                           ((x-cnd7512
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7513
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7513))
                                g7307))))
                           (if x-cnd7512
                             g7307
                             (begin
                               (write '(blame g7305 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7511))))
                   g7510)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7514
                     (lambda (g7308 g7309 g7310)
                       (letrec*
                        ((g7515
                          (letrec*
                           ((x-cnd7516
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7517
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7517))
                                g7310))))
                           (if x-cnd7516
                             g7310
                             (begin
                               (write '(blame g7308 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7515))))
                   g7514)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7518
                     (lambda (g7311 g7312 g7313)
                       (letrec*
                        ((g7519
                          (letrec*
                           ((x-cnd7520
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7521
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7521))
                                g7313))))
                           (if x-cnd7520
                             g7313
                             (begin
                               (write '(blame g7311 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7311)))))))
                        g7519))))
                   g7518)))
               (meta (lambda (v) (letrec* ((g7522 v)) g7522)))
               (+
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7523
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7525
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7526
                                 (letrec*
                                  ((x7527
                                    (letrec*
                                     ((x7529
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7528
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7320 x7529 x7528)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7527)))))
                               g7526))))
                          g7525))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7524
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7524))))))
                  g7523)))
               (-
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7530
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7532
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7533
                                 (letrec*
                                  ((x7534
                                    (letrec*
                                     ((x7536
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7535
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7327 x7536 x7535)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7534)))))
                               g7533))))
                          g7532))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7531
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7531))))))
                  g7530)))
               (*
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7537
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7539
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7540
                                 (letrec*
                                  ((x7541
                                    (letrec*
                                     ((x7543
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7542
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7334 x7543 x7542)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7332 k7333 x7541)))))
                               g7540))))
                          g7539))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7538
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7538))))))
                  g7537)))
               (<
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7544
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7546
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7547
                                 (letrec*
                                  ((x7548
                                    (letrec*
                                     ((x7550
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7549
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7341 x7550 x7549)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7548)))))
                               g7547))))
                          g7546))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7545
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7545))))))
                  g7544)))
               (>
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7551
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7553
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7554
                                 (letrec*
                                  ((x7555
                                    (letrec*
                                     ((x7557
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7556
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7348 x7557 x7556)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7555)))))
                               g7554))))
                          g7553))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7552
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7552))))))
                  g7551)))
               (<=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7558
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7560
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7561
                                 (letrec*
                                  ((x7562
                                    (letrec*
                                     ((x7564
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7563
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7355 x7564 x7563)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7562)))))
                               g7561))))
                          g7560))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7559
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7559))))))
                  g7558)))
               (>=
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7565
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7567
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7568
                                 (letrec*
                                  ((x7569
                                    (letrec*
                                     ((x7571
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7570
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7362 x7571 x7570)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7360 k7361 x7569)))))
                               g7568))))
                          g7567))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7566
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7566))))))
                  g7565)))
               (add1
                (lambda (x)
                  (letrec*
                   ((g7572
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7572)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7573
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7575
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7576
                                 (letrec*
                                  ((x7577
                                    (letrec*
                                     ((x7579
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7578
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7369 x7579 x7578)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7577)))))
                               g7576))))
                          g7575))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7574
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7574))))))
                  g7573)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7580
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7582
                            (lambda (g7372)
                              (letrec*
                               ((g7583
                                 (letrec*
                                  ((x7584
                                    (letrec*
                                     ((x7585
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7375 x7585)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7584)))))
                               g7583))))
                          g7582))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7581
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7581))))))
                  g7580)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7586
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7588
                            (lambda (g7378)
                              (letrec*
                               ((g7589
                                 (letrec*
                                  ((x7590
                                    (letrec*
                                     ((x7591
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7381 x7591)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7590)))))
                               g7589))))
                          g7588))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7587
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7587))))))
                  g7586)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7592
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7594
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7595
                                 (letrec*
                                  ((x7596
                                    (letrec*
                                     ((x7598
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7597
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7388 x7598 x7597)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7596)))))
                               g7595))))
                          g7594))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7593
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7593))))))
                  g7592)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7599
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7601
                            (lambda (g7391)
                              (letrec*
                               ((g7602
                                 (letrec*
                                  ((x7603
                                    (letrec*
                                     ((x7604
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7394 x7604)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7603)))))
                               g7602))))
                          g7601))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7600
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7600))))))
                  g7599)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7605
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7607
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7608
                                 (letrec*
                                  ((x7609
                                    (letrec*
                                     ((x7611
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7610
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7401 x7611 x7610)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7609)))))
                               g7608))))
                          g7607))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7606
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7606))))))
                  g7605)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (letrec*
                         ((x7614
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7614)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7613)))))
                   g7612)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7618))))
                    (g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7619))))
                    (g7617
                     (letrec*
                      ((x-cnd7620
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7620
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7623
                           (letrec*
                            ((x7624
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7624))))
                          (x7621
                           (letrec*
                            ((x7622
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7622)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7623 x7621)))))))
                   g7617)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7626)))))
                   g7625)))
               (cadadr
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
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7630)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7629)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7628)))))
                   g7627)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7632
                        (letrec*
                         ((x7633
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7634)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7633)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7632)))))
                   g7631)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7638))))
                    (g7636
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7639))))
                    (g7637
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
                       ((g7640
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7641 res))
                       g7641))))
                   g7637)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7643
                        (letrec*
                         ((x7644
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7644)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7643)))))
                   g7642)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7646
                        (letrec*
                         ((x7647
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7648)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7647)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7646)))))
                   g7645)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7651))))
                    (g7650
                     (letrec*
                      ((x-cnd7652
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7652
                        #f
                        (letrec*
                         ((x-cnd7653
                           (letrec*
                            ((x7654
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7654 k)))))
                         (if x-cnd7653
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7655
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7655)))))))))
                   g7650)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7657)))))
                   g7656)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7660))))
                    (g7659
                     (letrec*
                      ((x-cnd7661
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7661
                        ""
                        (letrec*
                         ((x7664
                           (letrec*
                            ((x7665
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7665))))
                          (x7662
                           (letrec*
                            ((x7663
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7663)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7664 x7662)))))))
                   g7659)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x7669
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7669))))
                    (g7667
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7670))))
                    (g7668
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7671
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7671))))
                   g7668)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((x7673
                        (letrec*
                         ((x7674
                           (letrec*
                            ((x7675
                              (begin
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7675)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7674)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7673)))))
                   g7672)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7679))))
                    (g7677
                     (letrec*
                      ((x7680
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7680))))
                    (g7678
                     (letrec*
                      ((x-cnd7681
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7681
                        x
                        (letrec*
                         ((x7683
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7682
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7683 x7682)))))))
                   g7678)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7684
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7684)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7685
                     (letrec*
                      ((x-cnd7686
                        (letrec*
                         ((x7687 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7687)))))
                      (if x-cnd7686
                        (letrec*
                         ((x7688 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7688)))
                        #f))))
                   g7685)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7690
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7690 9)))))
                      (letrec*
                       ((g7691
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7692
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7692 10)))))
                            (letrec*
                             ((g7693
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7694
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7694 32))))))
                             g7693)))))
                       g7691))))
                   g7689)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7695
                     (letrec*
                      ((x7696
                        (letrec*
                         ((x7697
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7697)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7696)))))
                   g7695)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7698
                     (letrec*
                      ((x7700
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7700))))
                    (g7699
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7699)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7701
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7701)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7702 #f)) g7702)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7703
                     (letrec*
                      ((x7704
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7704)))))
                   g7703)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7705
                     (letrec*
                      ((x7707
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7707))))
                    (g7706
                     (letrec*
                      ((x-cnd7708
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7708
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7706)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7709
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7710
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7711
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7711
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7712
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7713
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7713
                                       (letrec*
                                        ((x-cnd7714
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7714
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7715
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7716
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7716
                                             (letrec*
                                              ((x-cnd7717
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7717
                                                (letrec*
                                                 ((x-cnd7718
                                                   (letrec*
                                                    ((x7720
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7719
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7720 x7719)))))
                                                 (if x-cnd7718
                                                   (letrec*
                                                    ((x7722
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7721
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7722 x7721)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7723
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7724
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7724
                                                (letrec*
                                                 ((x-cnd7725
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7725
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7726
                                                       (letrec*
                                                        ((x-cnd7727
                                                          (letrec*
                                                           ((x7728
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
                                                             (= x7728 n)))))
                                                        (if x-cnd7727
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7729
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
                                                                    ((g7730
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7731
                                                                           (letrec*
                                                                            ((x7733
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
                                                                             (x7732
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
                                                                               x7733
                                                                               x7732)))))
                                                                         (if x-cnd7731
                                                                           (letrec*
                                                                            ((x7734
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
                                                                               x7734)))
                                                                           #f)))))
                                                                    g7730))))
                                                                g7729))))
                                                           (letrec*
                                                            ((g7735
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7735))
                                                          #f))))
                                                     g7726))
                                                   #f))
                                                #f)))))
                                         g7723)))))
                                   g7715)))))
                             g7712)))))
                       g7710))))
                   g7709)))
               (cdaaar
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
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7739)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7738)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x7737)))))
                   g7736)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (letrec*
                         ((x7742
                           (letrec*
                            ((x7743
                              (begin
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7743)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7742)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7741)))))
                   g7740)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7744
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g7744)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7748))))
                    (g7746
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7749))))
                    (g7747
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
                       ((g7750
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7751 res))
                       g7751))))
                   g7747)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7752
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g7752)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7756))))
                    (g7754
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7757))))
                    (g7755
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7758
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7758))))
                   g7755)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7761)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7760)))))
                   g7759)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7763
                        (letrec*
                         ((x7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7765)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7764)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x7763)))))
                   g7762)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7767
                        (letrec*
                         ((x7768
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x7768)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x7767)))))
                   g7766)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7770
                        (letrec*
                         ((x7771
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x7771)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x7770)))))
                   g7769)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7775))))
                    (g7773
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7776))))
                    (g7774
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x7777)))))
                   g7774)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7779
                        (letrec*
                         ((x7780
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x7781)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x7780)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x7779)))))
                   g7778)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x7784))))
                    (g7783
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g7783)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7785
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g7785)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7787
                        (letrec*
                         ((x7788
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x7788)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x7787)))))
                   g7786)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7789
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g7789)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x7792))))
                    (g7791
                     (letrec*
                      ((x-cnd7793
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7793
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x7797))))
                          (x7794
                           (letrec*
                            ((x7795
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x7795)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x7796 x7794)))))))
                   g7791)))
               (caaadr
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
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x7801)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x7800)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x7799)))))
                   g7798)))
               (cddadr
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
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x7805)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x7804)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x7803)))))
                   g7802)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x7808))))
                    (g7807
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x7809)))))
                   g7807)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7811
                        (letrec*
                         ((x7812
                           (letrec*
                            ((x7813
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x7813)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x7812)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7811)))))
                   g7810)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((x-cnd7819
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7819
                        (letrec*
                         ((g7820
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g7820)
                        (letrec*
                         ((x-cnd7821
                           (letrec*
                            ((x7822
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x7822)))))
                         (if x-cnd7821
                           (letrec*
                            ((g7823
                              (letrec*
                               ((x7824
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x7824)))))
                            g7823)
                           (letrec*
                            ((x-cnd7825
                              (letrec*
                               ((x7826
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x7826)))))
                            (if x-cnd7825
                              (letrec*
                               ((g7827
                                 (letrec*
                                  ((x7829
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x7828
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x7829 x7828)))))
                               g7827)
                              (letrec*
                               ((x-cnd7830
                                 (letrec*
                                  ((x7831
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x7831)))))
                               (if x-cnd7830
                                 (letrec*
                                  ((g7832
                                    (letrec*
                                     ((x7835
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x7834
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7833
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x7835 x7834 x7833)))))
                                  g7832)
                                 (letrec*
                                  ((x-cnd7836
                                    (letrec*
                                     ((x7837
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x7837)))))
                                  (if x-cnd7836
                                    (letrec*
                                     ((g7838
                                       (letrec*
                                        ((x7842
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x7841
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7840
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7839
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x7842 x7841 x7840 x7839)))))
                                     g7838)
                                    (letrec*
                                     ((x-cnd7843
                                       (letrec*
                                        ((x7844
                                          (letrec*
                                           ((x7845
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x7845)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x7844)))))
                                     (if x-cnd7843
                                       (letrec*
                                        ((g7846
                                          (letrec*
                                           ((x7852
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x7851
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7850
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7849
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7847
                                             (letrec*
                                              ((x7848
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x7848)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x7852
                                              x7851
                                              x7850
                                              x7849
                                              x7847)))))
                                        g7846)
                                       (letrec*
                                        ((x-cnd7853
                                          (letrec*
                                           ((x7854
                                             (letrec*
                                              ((x7855
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x7855)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x7854)))))
                                        (if x-cnd7853
                                          (letrec*
                                           ((g7856
                                             (letrec*
                                              ((x7864
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7863
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7862
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7861
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7859
                                                (letrec*
                                                 ((x7860
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x7860))))
                                               (x7857
                                                (letrec*
                                                 ((x7858
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x7858)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x7864
                                                 x7863
                                                 x7862
                                                 x7861
                                                 x7859
                                                 x7857)))))
                                           g7856)
                                          (letrec*
                                           ((x-cnd7865
                                             (letrec*
                                              ((x7866
                                                (letrec*
                                                 ((x7867
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x7867)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x7866)))))
                                           (if x-cnd7865
                                             (letrec*
                                              ((g7868
                                                (letrec*
                                                 ((x7878
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7877
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7876
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7875
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7873
                                                   (letrec*
                                                    ((x7874
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x7874))))
                                                  (x7871
                                                   (letrec*
                                                    ((x7872
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x7872))))
                                                  (x7869
                                                   (letrec*
                                                    ((x7870
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x7870)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x7878
                                                    x7877
                                                    x7876
                                                    x7875
                                                    x7873
                                                    x7871
                                                    x7869)))))
                                              g7868)
                                             (letrec*
                                              ((g7879
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7879)))))))))))))))))))
                   g7816)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x7882))))
                    (g7881
                     (letrec*
                      ((x-cnd7883
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7883
                        #f
                        (letrec*
                         ((x-cnd7884
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x7885 e)))))
                         (if x-cnd7884
                           l
                           (letrec*
                            ((x7886
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x7886)))))))))
                   g7881)))
               (cddddr
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
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x7890)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x7889)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x7888)))))
                   g7887)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x7892
                        (letrec*
                         ((x7893
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x7894)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x7893)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x7892)))))
                   g7891)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7895
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g7895)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7898
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x7898))))
                    (g7897
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g7897)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7900
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7900))))
                   g7899)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x7902)))))
                   g7901)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7904
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7904
                           (letrec*
                            ((x7905
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x7905)))
                           #f))))
                      (letrec*
                       ((g7906
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g7906))))
                   g7903)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7908
                        (letrec*
                         ((x7909
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x7910)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x7909)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x7908)))))
                   g7907)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x-cnd7912
                        (letrec*
                         ((x7913 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x7913 c)))))
                      (if x-cnd7912
                        (letrec*
                         ((x7914 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x7914)))
                        #f))))
                   g7911)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7917
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7917))))
                    (g7916
                     (letrec*
                      ((x-cnd7918
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7918
                        #f
                        (letrec*
                         ((x-cnd7919
                           (letrec*
                            ((x7920
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x7920 k)))))
                         (if x-cnd7919
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7921
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x7921)))))))))
                   g7916)))
               (not (lambda (x) (letrec* ((g7922 (if x #f #t))) g7922)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7923
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g7923)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7926
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x7926))))
                    (g7925
                     (letrec*
                      ((x-cnd7927
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7927
                        #f
                        (letrec*
                         ((x-cnd7928
                           (letrec*
                            ((x7929
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x7929 e)))))
                         (if x-cnd7928
                           l
                           (letrec*
                            ((x7930
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x7930)))))))))
                   g7925)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7932
                        (letrec*
                         ((x7933
                           (letrec*
                            ((x7934
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x7934)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x7933)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x7932)))))
                   g7931)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7937))))
                    (g7936
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7938
                             (letrec*
                              ((x-cnd7939
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7939
                                0
                                (letrec*
                                 ((x7940
                                   (letrec*
                                    ((x7941
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x7941)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x7940)))))))
                           g7938))))
                      (letrec*
                       ((g7942
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g7942))))
                   g7936)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7946))))
                    (g7944
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7947))))
                    (g7945
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7948
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7948))))
                   g7945)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x7950)))))
                   g7949)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7952
                        (letrec*
                         ((x7953
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x7953)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x7952)))))
                   g7951)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x7956))))
                    (g7955
                     (letrec*
                      ((x-cnd7957
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7957
                        #f
                        (letrec*
                         ((x-cnd7958
                           (letrec*
                            ((x7959
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x7959 k)))))
                         (if x-cnd7958
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7960
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x7960)))))))))
                   g7955)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x7962)))))
                   g7961)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7966))))
                    (g7964
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7967))))
                    (g7965
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x7968)))))
                   g7965)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7970
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7970))))
                   g7969)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7971
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x7974))))
                    (g7972
                     (letrec*
                      ((x7975
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x7975))))
                    (g7973
                     (letrec*
                      ((x-cnd7976
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7976
                        #t
                        (letrec*
                         ((x-cnd7977
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7977
                           (letrec*
                            ((g7978
                              (letrec*
                               ((x7980
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x7980))))
                             (g7979
                              (letrec*
                               ((x7981
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x7981)))))
                            g7979)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g7973)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7982
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x7984))))
                    (g7983
                     (letrec*
                      ((x-cnd7985
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7985
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7983)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((x7989
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7989))))
                    (g7987
                     (letrec*
                      ((x7990
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7990))))
                    (g7988
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7991
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7991))))
                   g7988)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7992
                     (letrec*
                      ((x7993
                        (letrec*
                         ((x7994
                           (letrec*
                            ((x7995
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x7995)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x7994)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x7993)))))
                   g7992)))
               (newline (lambda () (letrec* ((g7996 #f)) g7996)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7997
                     (letrec*
                      ((x7999
                        (letrec*
                         ((x8000
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x8000))))
                       (x7998
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x7999 x7998)))))
                   g7997)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((x8005
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x8005))))
                    (g8002
                     (letrec*
                      ((x8006
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x8006))))
                    (g8003
                     (letrec*
                      ((x8007
                        (letrec*
                         ((x8008
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x8008)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x8007))))
                    (g8004
                     (letrec*
                      ((x-cnd8009
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8009
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8011
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x8010
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x8011 x8010)))))))
                   g8004)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8012
                     (letrec*
                      ((x-cnd8013
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8013
                        a
                        (letrec*
                         ((x8014
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8014)))))))
                   g8012)))
               (f
                (lambda (g x)
                  (letrec*
                   ((g8015
                     (letrec*
                      ((x-cnd8016
                        (begin
                          (write '(funapp 1701 35))
                          (display "\n")
                          (>= x 0))))
                      (if x-cnd8016
                        (begin (write '(funapp 1703 25)) (display "\n") (g x))
                        (letrec*
                         ((x8017
                           (begin
                             (write '(funapp 1705 34))
                             (display "\n")
                             (g x))))
                         (begin
                           (write '(funapp 1706 26))
                           (display "\n")
                           (f
                            (lambda (x)
                              (letrec*
                               ((g8018
                                 (begin
                                   (write '(funapp 1707 56))
                                   (display "\n")
                                   (f g x))))
                               g8018))
                            x8017)))))))
                   g8015)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8019
                     (begin
                       (write '(funapp 1710 51))
                       (display "\n")
                       (f add1 n))))
                   g8019))))
              (letrec*
               ((g8020
                 (begin
                   (write '(funapp 1713 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1714 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8023
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
                            ((g8024
                              (begin
                                (write '(funapp 1721 27))
                                (display "\n")
                                ((lambda (j7406 k7407 f7408)
                                   (letrec*
                                    ((g8025
                                      (lambda (g7404 g7405)
                                        (letrec*
                                         ((g8026
                                           (letrec*
                                            ((x8027
                                              (letrec*
                                               ((x8029
                                                 (begin
                                                   (write '(funapp 1731 44))
                                                   (display "\n")
                                                   ((lambda (j7410 k7411 f7412)
                                                      (letrec*
                                                       ((g8030
                                                         (lambda (g7409)
                                                           (letrec*
                                                            ((g8031
                                                              (letrec*
                                                               ((x8032
                                                                 (letrec*
                                                                  ((x8033
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1741
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (integer?/c
                                                                       j7410
                                                                       k7411
                                                                       g7409))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1745
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7412
                                                                     x8033)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1746
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7410
                                                                  k7411
                                                                  x8032)))))
                                                            g8031))))
                                                       g8030))
                                                    j7406
                                                    k7407
                                                    g7404)))
                                                (x8028
                                                 (begin
                                                   (write '(funapp 1756 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7406
                                                    k7407
                                                    g7405))))
                                               (begin
                                                 (write '(funapp 1757 42))
                                                 (display "\n")
                                                 (f7408 x8029 x8028)))))
                                            (begin
                                              (write '(funapp 1758 39))
                                              (display "\n")
                                              (integer?/c
                                               j7406
                                               k7407
                                               x8027)))))
                                         g8026))))
                                    g8025))
                                 xj7402
                                 xk7403
                                 f))))
                            g8024)))
                         (x8022 (input))
                         (x8021 (input)))
                        (begin
                          (write '(funapp 1767 21))
                          (display "\n")
                          (x8023 x8022 x8021)))
                       (letrec*
                        ((x8035
                          (letrec*
                           ((xj7413
                             (begin
                               (write '(funapp 1771 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1771 37))
                                  (display "\n")
                                  'module))))
                            (xk7414
                             (begin
                               (write '(funapp 1771 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1771 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8036
                              (begin
                                (write '(funapp 1774 27))
                                (display "\n")
                                ((lambda (j7416 k7417 f7418)
                                   (letrec*
                                    ((g8037
                                      (lambda (g7415)
                                        (letrec*
                                         ((g8038
                                           (letrec*
                                            ((x8041
                                              (letrec*
                                               ((x8042
                                                 (begin
                                                   (write '(funapp 1783 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1784 42))
                                                 (display "\n")
                                                 (and/c integer?/c x8042))))
                                             (x8039
                                              (letrec*
                                               ((x8040
                                                 (begin
                                                   (write '(funapp 1788 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7416
                                                    k7417
                                                    g7415))))
                                               (begin
                                                 (write '(funapp 1789 42))
                                                 (display "\n")
                                                 (f7418 x8040)))))
                                            (begin
                                              (write '(funapp 1790 39))
                                              (display "\n")
                                              (x8041 j7416 k7417 x8039)))))
                                         g8038))))
                                    g8037))
                                 xj7413
                                 xk7414
                                 main))))
                            g8036)))
                         (x8034 (input)))
                        (begin
                          (write '(funapp 1798 21))
                          (display "\n")
                          (x8035 x8034)))))))))
               g8020))))
           g7447))))
       g7430)))
    g7429)))
