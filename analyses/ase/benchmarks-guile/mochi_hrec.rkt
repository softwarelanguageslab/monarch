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
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7573
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7573)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7574
                    (begin
                      (write '(funapp 552 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7576
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7577
                                 (letrec*
                                  ((x7578
                                    (letrec*
                                     ((x7580
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7579
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7369 x7580 x7579)))))
                                  (begin
                                    (write '(funapp 564 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7578)))))
                               g7577))))
                          g7576))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7575
                            (begin
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7575))))))
                  g7574)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7581
                    (begin
                      (write '(funapp 576 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7583
                            (lambda (g7372)
                              (letrec*
                               ((g7584
                                 (letrec*
                                  ((x7585
                                    (letrec*
                                     ((x7586
                                       (begin
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7375 x7586)))))
                                  (begin
                                    (write '(funapp 587 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7585)))))
                               g7584))))
                          g7583))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7582
                            (begin
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7582))))))
                  g7581)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7587
                    (begin
                      (write '(funapp 599 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7589
                            (lambda (g7378)
                              (letrec*
                               ((g7590
                                 (letrec*
                                  ((x7591
                                    (letrec*
                                     ((x7592
                                       (begin
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7381 x7592)))))
                                  (begin
                                    (write '(funapp 610 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7591)))))
                               g7590))))
                          g7589))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7588
                            (begin
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7588))))))
                  g7587)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7593
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7595
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7596
                                 (letrec*
                                  ((x7597
                                    (letrec*
                                     ((x7599
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7598
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7388 x7599 x7598)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7597)))))
                               g7596))))
                          g7595))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7594
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7594))))))
                  g7593)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7600
                    (begin
                      (write '(funapp 647 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7602
                            (lambda (g7391)
                              (letrec*
                               ((g7603
                                 (letrec*
                                  ((x7604
                                    (letrec*
                                     ((x7605
                                       (begin
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7394 x7605)))))
                                  (begin
                                    (write '(funapp 658 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7604)))))
                               g7603))))
                          g7602))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7601
                            (begin
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7601))))))
                  g7600)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7606
                    (begin
                      (write '(funapp 671 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7608
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7609
                                 (letrec*
                                  ((x7610
                                    (letrec*
                                     ((x7612
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7611
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7401 x7612 x7611)))))
                                  (begin
                                    (write '(funapp 683 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7610)))))
                               g7609))))
                          g7608))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7607
                            (begin
                              (write '(funapp 689 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7607))))))
                  g7606)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (letrec*
                         ((x7615
                           (begin
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7615)))))
                      (begin
                        (write '(funapp 697 23))
                        (display "\n")
                        (cdr x7614)))))
                   g7613)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7619))))
                    (g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7620))))
                    (g7618
                     (letrec*
                      ((x-cnd7621
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7621
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7624
                           (letrec*
                            ((x7625
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7625))))
                          (x7622
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7623)))))
                         (begin
                           (write '(funapp 713 26))
                           (display "\n")
                           (cons x7624 x7622)))))))
                   g7618)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
                        (display "\n")
                        (cdr x7627)))))
                   g7626)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7629
                        (letrec*
                         ((x7630
                           (letrec*
                            ((x7631
                              (begin
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7631)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7630)))))
                      (begin
                        (write '(funapp 729 23))
                        (display "\n")
                        (car x7629)))))
                   g7628)))
               (cdadar
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
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7635)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7634)))))
                      (begin
                        (write '(funapp 740 23))
                        (display "\n")
                        (cdr x7633)))))
                   g7632)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x7639))))
                    (g7637
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x7640))))
                    (g7638
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
                       ((g7641
                         (begin
                           (write '(funapp 754 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7642 res))
                       g7642))))
                   g7638)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7644
                        (letrec*
                         ((x7645
                           (begin
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x7645)))))
                      (begin
                        (write '(funapp 763 23))
                        (display "\n")
                        (car x7644)))))
                   g7643)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7647
                        (letrec*
                         ((x7648
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x7649)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x7648)))))
                      (begin
                        (write '(funapp 774 23))
                        (display "\n")
                        (cdr x7647)))))
                   g7646)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x7652))))
                    (g7651
                     (letrec*
                      ((x-cnd7653
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7653
                        #f
                        (letrec*
                         ((x-cnd7654
                           (letrec*
                            ((x7655
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x7655 k)))))
                         (if x-cnd7654
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7656
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
                              (display "\n")
                              (assq k x7656)))))))))
                   g7651)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
                        (display "\n")
                        (= 0 x7658)))))
                   g7657)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x7661))))
                    (g7660
                     (letrec*
                      ((x-cnd7662
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7662
                        ""
                        (letrec*
                         ((x7665
                           (letrec*
                            ((x7666
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x7666))))
                          (x7663
                           (letrec*
                            ((x7664
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x7664)))))
                         (begin
                           (write '(funapp 811 26))
                           (display "\n")
                           (string-append x7665 x7663)))))))
                   g7660)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7670))))
                    (g7668
                     (letrec*
                      ((x7671
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x7671))))
                    (g7669
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7672
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7672))))
                   g7669)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x7674
                        (letrec*
                         ((x7675
                           (letrec*
                            ((x7676
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7676)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x7675)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7674)))))
                   g7673)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7680
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7680))))
                    (g7678
                     (letrec*
                      ((x7681
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x7681))))
                    (g7679
                     (letrec*
                      ((x-cnd7682
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7682
                        x
                        (letrec*
                         ((x7684
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x7683
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x7684 x7683)))))))
                   g7679)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7685
                     (begin (write '(funapp 850 49)) (display "\n") '())))
                   g7685)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((x-cnd7687
                        (letrec*
                         ((x7688 #\a))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x7688)))))
                      (if x-cnd7687
                        (letrec*
                         ((x7689 #\z))
                         (begin
                           (write '(funapp 859 48))
                           (display "\n")
                           (char-ci<=? c x7689)))
                        #f))))
                   g7686)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7691
                           (begin
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
                           (display "\n")
                           (= x7691 9)))))
                      (letrec*
                       ((g7692
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7693
                                 (begin
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x7693 10)))))
                            (letrec*
                             ((g7694
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7695
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
                                    (display "\n")
                                    (= x7695 32))))))
                             g7694)))))
                       g7692))))
                   g7690)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7696
                     (letrec*
                      ((x7697
                        (letrec*
                         ((x7698
                           (begin
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x7698)))))
                      (begin
                        (write '(funapp 894 23))
                        (display "\n")
                        (cdr x7697)))))
                   g7696)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7699
                     (letrec*
                      ((x7701
                        (begin
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x7701))))
                    (g7700
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g7700)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7702
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g7702)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7703 #f)) g7703)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7704
                     (letrec*
                      ((x7705
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
                        (display "\n")
                        (cdr x7705)))))
                   g7704)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7706
                     (letrec*
                      ((x7708
                        (begin
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x7708))))
                    (g7707
                     (letrec*
                      ((x-cnd7709
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7709
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g7707)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7710
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7711
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7712
                                 (begin
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7712
                                 (begin
                                   (write '(funapp 935 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7713
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7714
                                       (begin
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7714
                                       (letrec*
                                        ((x-cnd7715
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7715
                                          (begin
                                            (write '(funapp 947 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7716
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7717
                                             (begin
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7717
                                             (letrec*
                                              ((x-cnd7718
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7718
                                                (letrec*
                                                 ((x-cnd7719
                                                   (letrec*
                                                    ((x7721
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7720
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x7721 x7720)))))
                                                 (if x-cnd7719
                                                   (letrec*
                                                    ((x7723
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7722
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
                                                      (display "\n")
                                                      (equal? x7723 x7722)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7724
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7725
                                                (begin
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7725
                                                (letrec*
                                                 ((x-cnd7726
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7726
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7727
                                                       (letrec*
                                                        ((x-cnd7728
                                                          (letrec*
                                                           ((x7729
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
                                                             (= x7729 n)))))
                                                        (if x-cnd7728
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7730
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
                                                                    ((g7731
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7732
                                                                           (letrec*
                                                                            ((x7734
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
                                                                             (x7733
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
                                                                               x7734
                                                                               x7733)))))
                                                                         (if x-cnd7732
                                                                           (letrec*
                                                                            ((x7735
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
                                                                               x7735)))
                                                                           #f)))))
                                                                    g7731))))
                                                                g7730))))
                                                           (letrec*
                                                            ((g7736
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7736))
                                                          #f))))
                                                     g7727))
                                                   #f))
                                                #f)))))
                                         g7724)))))
                                   g7716)))))
                             g7713)))))
                       g7711))))
                   g7710)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7738
                        (letrec*
                         ((x7739
                           (letrec*
                            ((x7740
                              (begin
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x7740)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x7739)))))
                      (begin
                        (write '(funapp 1055 23))
                        (display "\n")
                        (cdr x7738)))))
                   g7737)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7742
                        (letrec*
                         ((x7743
                           (letrec*
                            ((x7744
                              (begin
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x7744)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x7743)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x7742)))))
                   g7741)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7745
                     (begin
                       (write '(funapp 1068 53))
                       (display "\n")
                       (eq? x y))))
                   g7745)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x7749))))
                    (g7747
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x7750))))
                    (g7748
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
                       ((g7751
                         (begin
                           (write '(funapp 1081 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7752 res))
                       g7752))))
                   g7748)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7753
                     (begin
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
                          (display "\n")
                          '())))))
                   g7753)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7757))))
                    (g7755
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7758))))
                    (g7756
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7759
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7759))))
                   g7756)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7761
                        (letrec*
                         ((x7762
                           (begin
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x7762)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (cdr x7761)))))
                   g7760)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7764
                        (letrec*
                         ((x7765
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x7766)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x7765)))))
                      (begin
                        (write '(funapp 1114 23))
                        (display "\n")
                        (cdr x7764)))))
                   g7763)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7768
                        (letrec*
                         ((x7769
                           (begin
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x7769)))))
                      (begin
                        (write '(funapp 1123 23))
                        (display "\n")
                        (car x7768)))))
                   g7767)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (begin
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x7772)))))
                      (begin
                        (write '(funapp 1131 23))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x7777))))
                    (g7775
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
                        (display "\n")
                        (not x7778)))))
                   g7775)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x7782)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x7781)))))
                      (begin
                        (write '(funapp 1150 23))
                        (display "\n")
                        (car x7780)))))
                   g7779)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x7785))))
                    (g7784
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g7784)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7786
                     (begin
                       (write '(funapp 1158 53))
                       (display "\n")
                       (memq e l))))
                   g7786)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7788
                        (letrec*
                         ((x7789
                           (begin
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x7789)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x7788)))))
                   g7787)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7790
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g7790)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x7793))))
                    (g7792
                     (letrec*
                      ((x-cnd7794
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7794
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x7798))))
                          (x7795
                           (letrec*
                            ((x7796
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x7796)))))
                         (begin
                           (write '(funapp 1180 26))
                           (display "\n")
                           (append x7797 x7795)))))))
                   g7792)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7800
                        (letrec*
                         ((x7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x7802)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x7801)))))
                      (begin
                        (write '(funapp 1191 23))
                        (display "\n")
                        (car x7800)))))
                   g7799)))
               (cddadr
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
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x7806)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x7805)))))
                      (begin
                        (write '(funapp 1202 23))
                        (display "\n")
                        (cdr x7804)))))
                   g7803)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x7809))))
                    (g7808
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
                        (display "\n")
                        (= 1 x7810)))))
                   g7808)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7812
                        (letrec*
                         ((x7813
                           (letrec*
                            ((x7814
                              (begin
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x7814)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x7813)))))
                      (begin
                        (write '(funapp 1219 23))
                        (display "\n")
                        (car x7812)))))
                   g7811)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x7819))))
                    (g7817
                     (letrec*
                      ((x-cnd7820
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7820
                        (letrec*
                         ((g7821
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g7821)
                        (letrec*
                         ((x-cnd7822
                           (letrec*
                            ((x7823
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x7823)))))
                         (if x-cnd7822
                           (letrec*
                            ((g7824
                              (letrec*
                               ((x7825
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x7825)))))
                            g7824)
                           (letrec*
                            ((x-cnd7826
                              (letrec*
                               ((x7827
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x7827)))))
                            (if x-cnd7826
                              (letrec*
                               ((g7828
                                 (letrec*
                                  ((x7830
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x7829
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x7830 x7829)))))
                               g7828)
                              (letrec*
                               ((x-cnd7831
                                 (letrec*
                                  ((x7832
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x7832)))))
                               (if x-cnd7831
                                 (letrec*
                                  ((g7833
                                    (letrec*
                                     ((x7836
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x7835
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7834
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x7836 x7835 x7834)))))
                                  g7833)
                                 (letrec*
                                  ((x-cnd7837
                                    (letrec*
                                     ((x7838
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x7838)))))
                                  (if x-cnd7837
                                    (letrec*
                                     ((g7839
                                       (letrec*
                                        ((x7843
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x7842
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7841
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7840
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
                                          (display "\n")
                                          (proc x7843 x7842 x7841 x7840)))))
                                     g7839)
                                    (letrec*
                                     ((x-cnd7844
                                       (letrec*
                                        ((x7845
                                          (letrec*
                                           ((x7846
                                             (begin
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x7846)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x7845)))))
                                     (if x-cnd7844
                                       (letrec*
                                        ((g7847
                                          (letrec*
                                           ((x7853
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x7852
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7851
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7850
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7848
                                             (letrec*
                                              ((x7849
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x7849)))))
                                           (begin
                                             (write '(funapp 1299 44))
                                             (display "\n")
                                             (proc
                                              x7853
                                              x7852
                                              x7851
                                              x7850
                                              x7848)))))
                                        g7847)
                                       (letrec*
                                        ((x-cnd7854
                                          (letrec*
                                           ((x7855
                                             (letrec*
                                              ((x7856
                                                (begin
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x7856)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x7855)))))
                                        (if x-cnd7854
                                          (letrec*
                                           ((g7857
                                             (letrec*
                                              ((x7865
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7864
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7863
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7862
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7860
                                                (letrec*
                                                 ((x7861
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x7861))))
                                               (x7858
                                                (letrec*
                                                 ((x7859
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x7859)))))
                                              (begin
                                                (write '(funapp 1330 47))
                                                (display "\n")
                                                (proc
                                                 x7865
                                                 x7864
                                                 x7863
                                                 x7862
                                                 x7860
                                                 x7858)))))
                                           g7857)
                                          (letrec*
                                           ((x-cnd7866
                                             (letrec*
                                              ((x7867
                                                (letrec*
                                                 ((x7868
                                                   (begin
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x7868)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x7867)))))
                                           (if x-cnd7866
                                             (letrec*
                                              ((g7869
                                                (letrec*
                                                 ((x7879
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7878
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7877
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7876
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7874
                                                   (letrec*
                                                    ((x7875
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x7875))))
                                                  (x7872
                                                   (letrec*
                                                    ((x7873
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x7873))))
                                                  (x7870
                                                   (letrec*
                                                    ((x7871
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x7871)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
                                                   (display "\n")
                                                   (proc
                                                    x7879
                                                    x7878
                                                    x7877
                                                    x7876
                                                    x7874
                                                    x7872
                                                    x7870)))))
                                              g7869)
                                             (letrec*
                                              ((g7880
                                                (begin
                                                  (write '(funapp 1377 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7880)))))))))))))))))))
                   g7817)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x7883
                        (begin
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x7883))))
                    (g7882
                     (letrec*
                      ((x-cnd7884
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7884
                        #f
                        (letrec*
                         ((x-cnd7885
                           (letrec*
                            ((x7886
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x7886 e)))))
                         (if x-cnd7885
                           l
                           (letrec*
                            ((x7887
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
                              (display "\n")
                              (member e x7887)))))))))
                   g7882)))
               (cddddr
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
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x7891)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x7890)))))
                      (begin
                        (write '(funapp 1405 23))
                        (display "\n")
                        (cdr x7889)))))
                   g7888)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7893
                        (letrec*
                         ((x7894
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x7895)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x7894)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x7893)))))
                   g7892)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7896
                     (begin
                       (write '(funapp 1418 53))
                       (display "\n")
                       (random 42))))
                   g7896)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x7899
                        (begin
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x7899))))
                    (g7898
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g7898)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7901
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7901))))
                   g7900)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
                        (display "\n")
                        (car x7903)))))
                   g7902)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7905
                           (begin
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7905
                           (letrec*
                            ((x7906
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x7906)))
                           #f))))
                      (letrec*
                       ((g7907
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
                             (display "\n")
                             (null? l)))))
                       g7907))))
                   g7904)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7909
                        (letrec*
                         ((x7910
                           (letrec*
                            ((x7911
                              (begin
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x7911)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x7910)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (cdr x7909)))))
                   g7908)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x-cnd7913
                        (letrec*
                         ((x7914 #\0))
                         (begin
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x7914 c)))))
                      (if x-cnd7913
                        (letrec*
                         ((x7915 #\9))
                         (begin
                           (write '(funapp 1474 48))
                           (display "\n")
                           (char<=? c x7915)))
                        #f))))
                   g7912)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x7918))))
                    (g7917
                     (letrec*
                      ((x-cnd7919
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7919
                        #f
                        (letrec*
                         ((x-cnd7920
                           (letrec*
                            ((x7921
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x7921 k)))))
                         (if x-cnd7920
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7922
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x7922)))))))))
                   g7917)))
               (not (lambda (x) (letrec* ((g7923 (if x #f #t))) g7923)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7924
                     (begin
                       (write '(funapp 1496 50))
                       (display "\n")
                       (append l1 l2))))
                   g7924)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x7927))))
                    (g7926
                     (letrec*
                      ((x-cnd7928
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7928
                        #f
                        (letrec*
                         ((x-cnd7929
                           (letrec*
                            ((x7930
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x7930 e)))))
                         (if x-cnd7929
                           l
                           (letrec*
                            ((x7931
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
                              (display "\n")
                              (memq e x7931)))))))))
                   g7926)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7933
                        (letrec*
                         ((x7934
                           (letrec*
                            ((x7935
                              (begin
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x7935)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x7934)))))
                      (begin
                        (write '(funapp 1522 23))
                        (display "\n")
                        (car x7933)))))
                   g7932)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
                        (display "\n")
                        (assert x7938))))
                    (g7937
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7939
                             (letrec*
                              ((x-cnd7940
                                (begin
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7940
                                0
                                (letrec*
                                 ((x7941
                                   (letrec*
                                    ((x7942
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x7942)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x7941)))))))
                           g7939))))
                      (letrec*
                       ((g7943
                         (begin
                           (write '(funapp 1543 40))
                           (display "\n")
                           (rec l))))
                       g7943))))
                   g7937)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7947))))
                    (g7945
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7948))))
                    (g7946
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7949
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7949))))
                   g7946)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
                        (display "\n")
                        (not x7951)))))
                   g7950)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7953
                        (letrec*
                         ((x7954
                           (begin
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x7954)))))
                      (begin
                        (write '(funapp 1568 23))
                        (display "\n")
                        (cdr x7953)))))
                   g7952)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x7957))))
                    (g7956
                     (letrec*
                      ((x-cnd7958
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7958
                        #f
                        (letrec*
                         ((x-cnd7959
                           (letrec*
                            ((x7960
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x7960 k)))))
                         (if x-cnd7959
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7961
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
                              (display "\n")
                              (assoc k x7961)))))))))
                   g7956)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
                        (display "\n")
                        (car x7963)))))
                   g7962)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x7968))))
                    (g7966
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
                        (display "\n")
                        (not x7969)))))
                   g7966)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7971
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7971))))
                   g7970)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7975
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x7975))))
                    (g7973
                     (letrec*
                      ((x7976
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x7976))))
                    (g7974
                     (letrec*
                      ((x-cnd7977
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7977
                        #t
                        (letrec*
                         ((x-cnd7978
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7978
                           (letrec*
                            ((g7979
                              (letrec*
                               ((x7981
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x7981))))
                             (g7980
                              (letrec*
                               ((x7982
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x7982)))))
                            g7980)
                           (begin
                             (write '(funapp 1626 27))
                             (display "\n")
                             '())))))))
                   g7974)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x7985
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x7985))))
                    (g7984
                     (letrec*
                      ((x-cnd7986
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7986
                        (begin
                          (write '(funapp 1633 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7984)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7990
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7990))))
                    (g7988
                     (letrec*
                      ((x7991
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x7991))))
                    (g7989
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7992
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7992))))
                   g7989)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x7994
                        (letrec*
                         ((x7995
                           (letrec*
                            ((x7996
                              (begin
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x7996)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x7995)))))
                      (begin
                        (write '(funapp 1656 23))
                        (display "\n")
                        (car x7994)))))
                   g7993)))
               (newline (lambda () (letrec* ((g7997 #f)) g7997)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x8000
                        (letrec*
                         ((x8001
                           (begin
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x8001))))
                       (x7999
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
                        (display "\n")
                        (/ x8000 x7999)))))
                   g7998)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8002
                     (letrec*
                      ((x8006
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x8006))))
                    (g8003
                     (letrec*
                      ((x8007
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x8007))))
                    (g8004
                     (letrec*
                      ((x8008
                        (letrec*
                         ((x8009
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x8009)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x8008))))
                    (g8005
                     (letrec*
                      ((x-cnd8010
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8010
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8012
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x8011
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
                           (display "\n")
                           (list-ref x8012 x8011)))))))
                   g8005)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8013
                     (letrec*
                      ((x-cnd8014
                        (begin
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8014
                        a
                        (letrec*
                         ((x8015
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x8015)))))))
                   g8013)))
               (f
                (lambda (g x)
                  (letrec*
                   ((g8016
                     (letrec*
                      ((x-cnd8017
                        (begin
                          (write '(funapp 1702 35))
                          (display "\n")
                          (>= x 0))))
                      (if x-cnd8017
                        (begin (write '(funapp 1704 25)) (display "\n") (g x))
                        (letrec*
                         ((x8018
                           (begin
                             (write '(funapp 1706 34))
                             (display "\n")
                             (g x))))
                         (begin
                           (write '(funapp 1707 26))
                           (display "\n")
                           (f
                            (lambda (x)
                              (letrec*
                               ((g8019
                                 (begin
                                   (write '(funapp 1708 56))
                                   (display "\n")
                                   (f g x))))
                               g8019))
                            x8018)))))))
                   g8016)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8020
                     (begin
                       (write '(funapp 1711 51))
                       (display "\n")
                       (f add1 n))))
                   g8020))))
              (letrec*
               ((g8021
                 (begin
                   (write '(funapp 1714 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1715 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8024
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1719 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1719 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1719 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1719 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8025
                              (begin
                                (write '(funapp 1722 27))
                                (display "\n")
                                ((lambda (j7406 k7407 f7408)
                                   (letrec*
                                    ((g8026
                                      (lambda (g7404 g7405)
                                        (letrec*
                                         ((g8027
                                           (letrec*
                                            ((x8028
                                              (letrec*
                                               ((x8030
                                                 (begin
                                                   (write '(funapp 1732 44))
                                                   (display "\n")
                                                   ((lambda (j7410 k7411 f7412)
                                                      (letrec*
                                                       ((g8031
                                                         (lambda (g7409)
                                                           (letrec*
                                                            ((g8032
                                                              (letrec*
                                                               ((x8033
                                                                 (letrec*
                                                                  ((x8034
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1742
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
                                                                       1746
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7412
                                                                     x8034)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1747
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7410
                                                                  k7411
                                                                  x8033)))))
                                                            g8032))))
                                                       g8031))
                                                    j7406
                                                    k7407
                                                    g7404)))
                                                (x8029
                                                 (begin
                                                   (write '(funapp 1757 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7406
                                                    k7407
                                                    g7405))))
                                               (begin
                                                 (write '(funapp 1758 42))
                                                 (display "\n")
                                                 (f7408 x8030 x8029)))))
                                            (begin
                                              (write '(funapp 1759 39))
                                              (display "\n")
                                              (integer?/c
                                               j7406
                                               k7407
                                               x8028)))))
                                         g8027))))
                                    g8026))
                                 xj7402
                                 xk7403
                                 f))))
                            g8025)))
                         (x8023 (input))
                         (x8022 (input)))
                        (begin
                          (write '(funapp 1768 21))
                          (display "\n")
                          (x8024 x8023 x8022)))
                       (letrec*
                        ((x8036
                          (letrec*
                           ((xj7413
                             (begin
                               (write '(funapp 1772 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1772 37))
                                  (display "\n")
                                  'module))))
                            (xk7414
                             (begin
                               (write '(funapp 1772 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1772 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8037
                              (begin
                                (write '(funapp 1775 27))
                                (display "\n")
                                ((lambda (j7416 k7417 f7418)
                                   (letrec*
                                    ((g8038
                                      (lambda (g7415)
                                        (letrec*
                                         ((g8039
                                           (letrec*
                                            ((x8042
                                              (letrec*
                                               ((x8043
                                                 (begin
                                                   (write '(funapp 1784 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1785 42))
                                                 (display "\n")
                                                 (and/c integer?/c x8043))))
                                             (x8040
                                              (letrec*
                                               ((x8041
                                                 (begin
                                                   (write '(funapp 1789 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7416
                                                    k7417
                                                    g7415))))
                                               (begin
                                                 (write '(funapp 1790 42))
                                                 (display "\n")
                                                 (f7418 x8041)))))
                                            (begin
                                              (write '(funapp 1791 39))
                                              (display "\n")
                                              (x8042 j7416 k7417 x8040)))))
                                         g8039))))
                                    g8038))
                                 xj7413
                                 xk7414
                                 main))))
                            g8037)))
                         (x8035 (input)))
                        (begin
                          (write '(funapp 1799 21))
                          (display "\n")
                          (x8036 x8035)))))))))
               g8021))))
           g7447))))
       g7430)))
    g7429)))
