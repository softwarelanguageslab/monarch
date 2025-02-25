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
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7572
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7574
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7575
                                 (letrec*
                                  ((x7576
                                    (letrec*
                                     ((x7578
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7577
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 561 36))
                                       (display "\n")
                                       (f7369 x7578 x7577)))))
                                  (begin
                                    (write '(funapp 562 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7576)))))
                               g7575))))
                          g7574))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7573
                            (begin
                              (write '(funapp 567 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7573))))))
                  g7572)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 571 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 571 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7579
                    (begin
                      (write '(funapp 574 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7581
                            (lambda (g7372)
                              (letrec*
                               ((g7582
                                 (letrec*
                                  ((x7583
                                    (letrec*
                                     ((x7584
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7375 x7584)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7583)))))
                               g7582))))
                          g7581))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7580
                            (begin
                              (write '(funapp 590 51))
                              (display "\n")
                              (orig-car p))))
                          g7580))))))
                  g7579)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 594 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 594 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7585
                    (begin
                      (write '(funapp 597 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7587
                            (lambda (g7378)
                              (letrec*
                               ((g7588
                                 (letrec*
                                  ((x7589
                                    (letrec*
                                     ((x7590
                                       (begin
                                         (write '(funapp 606 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 607 36))
                                       (display "\n")
                                       (f7381 x7590)))))
                                  (begin
                                    (write '(funapp 608 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7589)))))
                               g7588))))
                          g7587))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7586
                            (begin
                              (write '(funapp 613 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7586))))))
                  g7585)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 617 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 617 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7591
                    (begin
                      (write '(funapp 620 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7593
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7594
                                 (letrec*
                                  ((x7595
                                    (letrec*
                                     ((x7597
                                       (begin
                                         (write '(funapp 629 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7596
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 631 36))
                                       (display "\n")
                                       (f7388 x7597 x7596)))))
                                  (begin
                                    (write '(funapp 632 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7595)))))
                               g7594))))
                          g7593))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7592
                            (begin
                              (write '(funapp 638 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7592))))))
                  g7591)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 642 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 642 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7598
                    (begin
                      (write '(funapp 645 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7600
                            (lambda (g7391)
                              (letrec*
                               ((g7601
                                 (letrec*
                                  ((x7602
                                    (letrec*
                                     ((x7603
                                       (begin
                                         (write '(funapp 654 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 655 36))
                                       (display "\n")
                                       (f7394 x7603)))))
                                  (begin
                                    (write '(funapp 656 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7602)))))
                               g7601))))
                          g7600))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7599
                            (begin
                              (write '(funapp 662 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7599))))))
                  g7598)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 666 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 666 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7604
                    (begin
                      (write '(funapp 669 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7606
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7607
                                 (letrec*
                                  ((x7608
                                    (letrec*
                                     ((x7610
                                       (begin
                                         (write '(funapp 678 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7609
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 680 36))
                                       (display "\n")
                                       (f7401 x7610 x7609)))))
                                  (begin
                                    (write '(funapp 681 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7608)))))
                               g7607))))
                          g7606))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7605
                            (begin
                              (write '(funapp 687 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7605))))))
                  g7604)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7612
                        (letrec*
                         ((x7613
                           (begin
                             (write '(funapp 694 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 694 58))
                           (display "\n")
                           (cdr x7613)))))
                      (begin
                        (write '(funapp 695 23))
                        (display "\n")
                        (cdr x7612)))))
                   g7611)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 701 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 701 62))
                        (display "\n")
                        (assert x7617))))
                    (g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 702 57))
                        (display "\n")
                        (assert x7618))))
                    (g7616
                     (letrec*
                      ((x-cnd7619
                        (begin
                          (write '(funapp 705 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7619
                        (begin (write '(funapp 707 24)) (display "\n") '())
                        (letrec*
                         ((x7622
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 709 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 709 61))
                              (display "\n")
                              (f x7623))))
                          (x7620
                           (letrec*
                            ((x7621
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (map f x7621)))))
                         (begin
                           (write '(funapp 711 26))
                           (display "\n")
                           (cons x7622 x7620)))))))
                   g7616)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 716 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 716 55))
                        (display "\n")
                        (cdr x7625)))))
                   g7624)))
               (cadadr
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
                                (write '(funapp 725 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 725 61))
                              (display "\n")
                              (car x7629)))))
                         (begin
                           (write '(funapp 726 26))
                           (display "\n")
                           (cdr x7628)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7627)))))
                   g7626)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7631
                        (letrec*
                         ((x7632
                           (letrec*
                            ((x7633
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (cdr x7633)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7632)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7631)))))
                   g7630)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7637
                        (begin
                          (write '(funapp 744 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 744 60))
                        (display "\n")
                        (assert x7637))))
                    (g7635
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 746 59))
                        (display "\n")
                        (assert x7638))))
                    (g7636
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
                       ((g7639
                         (begin
                           (write '(funapp 752 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7640 res))
                       g7640))))
                   g7636)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (letrec*
                         ((x7643
                           (begin
                             (write '(funapp 760 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 760 58))
                           (display "\n")
                           (cdr x7643)))))
                      (begin
                        (write '(funapp 761 23))
                        (display "\n")
                        (car x7642)))))
                   g7641)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7645
                        (letrec*
                         ((x7646
                           (letrec*
                            ((x7647
                              (begin
                                (write '(funapp 770 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 770 61))
                              (display "\n")
                              (car x7647)))))
                         (begin
                           (write '(funapp 771 26))
                           (display "\n")
                           (car x7646)))))
                      (begin
                        (write '(funapp 772 23))
                        (display "\n")
                        (cdr x7645)))))
                   g7644)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 777 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 777 57))
                        (display "\n")
                        (assert x7650))))
                    (g7649
                     (letrec*
                      ((x-cnd7651
                        (begin
                          (write '(funapp 780 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7651
                        #f
                        (letrec*
                         ((x-cnd7652
                           (letrec*
                            ((x7653
                              (begin
                                (write '(funapp 785 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 785 56))
                              (display "\n")
                              (eq? x7653 k)))))
                         (if x-cnd7652
                           (begin
                             (write '(funapp 787 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7654
                              (begin
                                (write '(funapp 788 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 788 55))
                              (display "\n")
                              (assq k x7654)))))))))
                   g7649)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 793 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (= 0 x7656)))))
                   g7655)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 798 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 798 57))
                        (display "\n")
                        (assert x7659))))
                    (g7658
                     (letrec*
                      ((x-cnd7660
                        (begin
                          (write '(funapp 801 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7660
                        ""
                        (letrec*
                         ((x7663
                           (letrec*
                            ((x7664
                              (begin
                                (write '(funapp 806 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 806 55))
                              (display "\n")
                              (char->string x7664))))
                          (x7661
                           (letrec*
                            ((x7662
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (list->string x7662)))))
                         (begin
                           (write '(funapp 809 26))
                           (display "\n")
                           (string-append x7663 x7661)))))))
                   g7658)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 814 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 814 58))
                        (display "\n")
                        (assert x7668))))
                    (g7666
                     (letrec*
                      ((x7669
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7669))))
                    (g7667
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 818 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7670
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 820 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7670))))
                   g7667)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7672
                        (letrec*
                         ((x7673
                           (letrec*
                            ((x7674
                              (begin
                                (write '(funapp 830 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 830 61))
                              (display "\n")
                              (cdr x7674)))))
                         (begin
                           (write '(funapp 831 26))
                           (display "\n")
                           (cdr x7673)))))
                      (begin
                        (write '(funapp 832 23))
                        (display "\n")
                        (cdr x7672)))))
                   g7671)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x7678
                        (begin
                          (write '(funapp 837 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 837 57))
                        (display "\n")
                        (assert x7678))))
                    (g7676
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7679))))
                    (g7677
                     (letrec*
                      ((x-cnd7680
                        (begin
                          (write '(funapp 841 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7680
                        x
                        (letrec*
                         ((x7682
                           (begin
                             (write '(funapp 845 34))
                             (display "\n")
                             (cdr x)))
                          (x7681
                           (begin
                             (write '(funapp 845 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (list-tail x7682 x7681)))))))
                   g7677)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7683
                     (begin (write '(funapp 848 49)) (display "\n") '())))
                   g7683)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x-cnd7685
                        (letrec*
                         ((x7686 #\a))
                         (begin
                           (write '(funapp 855 48))
                           (display "\n")
                           (char-ci>=? c x7686)))))
                      (if x-cnd7685
                        (letrec*
                         ((x7687 #\z))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci<=? c x7687)))
                        #f))))
                   g7684)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7688
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7689
                           (begin
                             (write '(funapp 866 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 866 62))
                           (display "\n")
                           (= x7689 9)))))
                      (letrec*
                       ((g7690
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7691
                                 (begin
                                   (write '(funapp 874 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 875 32))
                                 (display "\n")
                                 (= x7691 10)))))
                            (letrec*
                             ((g7692
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7693
                                    (begin
                                      (write '(funapp 881 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 882 35))
                                    (display "\n")
                                    (= x7693 32))))))
                             g7692)))))
                       g7690))))
                   g7688)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7694
                     (letrec*
                      ((x7695
                        (letrec*
                         ((x7696
                           (begin
                             (write '(funapp 891 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 891 58))
                           (display "\n")
                           (cdr x7696)))))
                      (begin
                        (write '(funapp 892 23))
                        (display "\n")
                        (cdr x7695)))))
                   g7694)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7697
                     (letrec*
                      ((x7699
                        (begin
                          (write '(funapp 897 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 897 59))
                        (display "\n")
                        (assert x7699))))
                    (g7698
                     (begin (write '(funapp 898 28)) (display "\n") (> x 0))))
                   g7698)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7700
                     (begin
                       (write '(funapp 900 59))
                       (display "\n")
                       (bool-top))))
                   g7700)))
               ($pc (begin (write '(funapp 901 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7701 #f)) g7701)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7702
                     (letrec*
                      ((x7703
                        (begin
                          (write '(funapp 907 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 907 55))
                        (display "\n")
                        (cdr x7703)))))
                   g7702)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7704
                     (letrec*
                      ((x7706
                        (begin
                          (write '(funapp 912 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 912 59))
                        (display "\n")
                        (assert x7706))))
                    (g7705
                     (letrec*
                      ((x-cnd7707
                        (begin
                          (write '(funapp 915 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7707
                        (begin
                          (write '(funapp 916 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 916 49))
                          (display "\n")
                          (floor x))))))
                   g7705)))
               ($cmp (begin (write '(funapp 918 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7708
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 924 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7709
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7710
                                 (begin
                                   (write '(funapp 932 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7710
                                 (begin
                                   (write '(funapp 933 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7711
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7712
                                       (begin
                                         (write '(funapp 941 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7712
                                       (letrec*
                                        ((x-cnd7713
                                          (begin
                                            (write '(funapp 944 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7713
                                          (begin
                                            (write '(funapp 945 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7714
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7715
                                             (begin
                                               (write '(funapp 954 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7715
                                             (letrec*
                                              ((x-cnd7716
                                                (begin
                                                  (write '(funapp 957 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7716
                                                (letrec*
                                                 ((x-cnd7717
                                                   (letrec*
                                                    ((x7719
                                                      (begin
                                                        (write
                                                         '(funapp 962 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7718
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 964 53))
                                                      (display "\n")
                                                      (equal? x7719 x7718)))))
                                                 (if x-cnd7717
                                                   (letrec*
                                                    ((x7721
                                                      (begin
                                                        (write
                                                         '(funapp 967 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7720
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 969 53))
                                                      (display "\n")
                                                      (equal? x7721 x7720)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7722
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7723
                                                (begin
                                                  (write '(funapp 978 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7723
                                                (letrec*
                                                 ((x-cnd7724
                                                   (begin
                                                     (write '(funapp 981 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7724
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 984 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7725
                                                       (letrec*
                                                        ((x-cnd7726
                                                          (letrec*
                                                           ((x7727
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
                                                             (= x7727 n)))))
                                                        (if x-cnd7726
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7728
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
                                                                    ((g7729
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7730
                                                                           (letrec*
                                                                            ((x7732
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
                                                                             (x7731
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
                                                                               x7732
                                                                               x7731)))))
                                                                         (if x-cnd7730
                                                                           (letrec*
                                                                            ((x7733
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
                                                                               x7733)))
                                                                           #f)))))
                                                                    g7729))))
                                                                g7728))))
                                                           (letrec*
                                                            ((g7734
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1033
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7734))
                                                          #f))))
                                                     g7725))
                                                   #f))
                                                #f)))))
                                         g7722)))))
                                   g7714)))))
                             g7711)))))
                       g7709))))
                   g7708)))
               (cdaaar
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
                                (write '(funapp 1051 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1051 61))
                              (display "\n")
                              (car x7738)))))
                         (begin
                           (write '(funapp 1052 26))
                           (display "\n")
                           (car x7737)))))
                      (begin
                        (write '(funapp 1053 23))
                        (display "\n")
                        (cdr x7736)))))
                   g7735)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7740
                        (letrec*
                         ((x7741
                           (letrec*
                            ((x7742
                              (begin
                                (write '(funapp 1062 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1062 61))
                              (display "\n")
                              (cdr x7742)))))
                         (begin
                           (write '(funapp 1063 26))
                           (display "\n")
                           (car x7741)))))
                      (begin
                        (write '(funapp 1064 23))
                        (display "\n")
                        (car x7740)))))
                   g7739)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7743
                     (begin
                       (write '(funapp 1066 53))
                       (display "\n")
                       (eq? x y))))
                   g7743)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1071 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1071 60))
                        (display "\n")
                        (assert x7747))))
                    (g7745
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1073 59))
                        (display "\n")
                        (assert x7748))))
                    (g7746
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
                       ((g7749
                         (begin
                           (write '(funapp 1079 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7750 res))
                       g7750))))
                   g7746)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7751
                     (begin
                       (write '(funapp 1082 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1082 57))
                          (display "\n")
                          '())))))
                   g7751)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1086 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1086 58))
                        (display "\n")
                        (assert x7755))))
                    (g7753
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7756))))
                    (g7754
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1090 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7757
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1092 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7757))))
                   g7754)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (begin
                             (write '(funapp 1100 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1100 58))
                           (display "\n")
                           (car x7760)))))
                      (begin
                        (write '(funapp 1101 23))
                        (display "\n")
                        (cdr x7759)))))
                   g7758)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7762
                        (letrec*
                         ((x7763
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 1110 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1110 61))
                              (display "\n")
                              (cdr x7764)))))
                         (begin
                           (write '(funapp 1111 26))
                           (display "\n")
                           (car x7763)))))
                      (begin
                        (write '(funapp 1112 23))
                        (display "\n")
                        (cdr x7762)))))
                   g7761)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7766
                        (letrec*
                         ((x7767
                           (begin
                             (write '(funapp 1120 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1120 58))
                           (display "\n")
                           (cdr x7767)))))
                      (begin
                        (write '(funapp 1121 23))
                        (display "\n")
                        (car x7766)))))
                   g7765)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7769
                        (letrec*
                         ((x7770
                           (begin
                             (write '(funapp 1128 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1128 58))
                           (display "\n")
                           (car x7770)))))
                      (begin
                        (write '(funapp 1129 23))
                        (display "\n")
                        (car x7769)))))
                   g7768)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1134 58))
                        (display "\n")
                        (assert x7774))))
                    (g7772
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c2))))
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
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1136 66))
                        (display "\n")
                        (not x7776)))))
                   g7773)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7778
                        (letrec*
                         ((x7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (car x7780)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (car x7779)))))
                      (begin
                        (write '(funapp 1148 23))
                        (display "\n")
                        (car x7778)))))
                   g7777)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1153 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1153 59))
                        (display "\n")
                        (assert x7783))))
                    (g7782
                     (begin (write '(funapp 1154 28)) (display "\n") (< x 0))))
                   g7782)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7784
                     (begin
                       (write '(funapp 1156 53))
                       (display "\n")
                       (memq e l))))
                   g7784)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7786
                        (letrec*
                         ((x7787
                           (begin
                             (write '(funapp 1162 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1162 58))
                           (display "\n")
                           (car x7787)))))
                      (begin
                        (write '(funapp 1163 23))
                        (display "\n")
                        (car x7786)))))
                   g7785)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7788
                     (begin (write '(funapp 1165 51)) (display "\n") '())))
                   g7788)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1169 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1169 57))
                        (display "\n")
                        (assert x7791))))
                    (g7790
                     (letrec*
                      ((x-cnd7792
                        (begin
                          (write '(funapp 1172 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7792
                        (begin (write '(funapp 1174 24)) (display "\n") '())
                        (letrec*
                         ((x7795
                           (letrec*
                            ((x7796
                              (begin
                                (write '(funapp 1176 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1176 61))
                              (display "\n")
                              (reverse x7796))))
                          (x7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (list x7794)))))
                         (begin
                           (write '(funapp 1178 26))
                           (display "\n")
                           (append x7795 x7793)))))))
                   g7790)))
               (caaadr
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
                                (write '(funapp 1187 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1187 61))
                              (display "\n")
                              (car x7800)))))
                         (begin
                           (write '(funapp 1188 26))
                           (display "\n")
                           (car x7799)))))
                      (begin
                        (write '(funapp 1189 23))
                        (display "\n")
                        (car x7798)))))
                   g7797)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7802
                        (letrec*
                         ((x7803
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1198 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1198 61))
                              (display "\n")
                              (car x7804)))))
                         (begin
                           (write '(funapp 1199 26))
                           (display "\n")
                           (cdr x7803)))))
                      (begin
                        (write '(funapp 1200 23))
                        (display "\n")
                        (cdr x7802)))))
                   g7801)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1205 59))
                        (display "\n")
                        (assert x7807))))
                    (g7806
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1206 60))
                        (display "\n")
                        (= 1 x7808)))))
                   g7806)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7810
                        (letrec*
                         ((x7811
                           (letrec*
                            ((x7812
                              (begin
                                (write '(funapp 1215 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1215 61))
                              (display "\n")
                              (cdr x7812)))))
                         (begin
                           (write '(funapp 1216 26))
                           (display "\n")
                           (car x7811)))))
                      (begin
                        (write '(funapp 1217 23))
                        (display "\n")
                        (car x7810)))))
                   g7809)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1223 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1223 59))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1224 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1224 60))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x-cnd7818
                        (begin
                          (write '(funapp 1227 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7818
                        (letrec*
                         ((g7819
                           (begin
                             (write '(funapp 1229 42))
                             (display "\n")
                             (proc))))
                         g7819)
                        (letrec*
                         ((x-cnd7820
                           (letrec*
                            ((x7821
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1232 58))
                              (display "\n")
                              (null? x7821)))))
                         (if x-cnd7820
                           (letrec*
                            ((g7822
                              (letrec*
                               ((x7823
                                 (begin
                                   (write '(funapp 1236 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1236 61))
                                 (display "\n")
                                 (proc x7823)))))
                            g7822)
                           (letrec*
                            ((x-cnd7824
                              (letrec*
                               ((x7825
                                 (begin
                                   (write '(funapp 1240 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1240 62))
                                 (display "\n")
                                 (null? x7825)))))
                            (if x-cnd7824
                              (letrec*
                               ((g7826
                                 (letrec*
                                  ((x7828
                                    (begin
                                      (write '(funapp 1245 43))
                                      (display "\n")
                                      (car args)))
                                   (x7827
                                    (begin
                                      (write '(funapp 1245 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1246 35))
                                    (display "\n")
                                    (proc x7828 x7827)))))
                               g7826)
                              (letrec*
                               ((x-cnd7829
                                 (letrec*
                                  ((x7830
                                    (begin
                                      (write '(funapp 1251 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1252 35))
                                    (display "\n")
                                    (null? x7830)))))
                               (if x-cnd7829
                                 (letrec*
                                  ((g7831
                                    (letrec*
                                     ((x7834
                                       (begin
                                         (write '(funapp 1257 46))
                                         (display "\n")
                                         (car args)))
                                      (x7833
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7832
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1260 38))
                                       (display "\n")
                                       (proc x7834 x7833 x7832)))))
                                  g7831)
                                 (letrec*
                                  ((x-cnd7835
                                    (letrec*
                                     ((x7836
                                       (begin
                                         (write '(funapp 1265 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1266 38))
                                       (display "\n")
                                       (null? x7836)))))
                                  (if x-cnd7835
                                    (letrec*
                                     ((g7837
                                       (letrec*
                                        ((x7841
                                          (begin
                                            (write '(funapp 1271 49))
                                            (display "\n")
                                            (car args)))
                                         (x7840
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7839
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7838
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1275 41))
                                          (display "\n")
                                          (proc x7841 x7840 x7839 x7838)))))
                                     g7837)
                                    (letrec*
                                     ((x-cnd7842
                                       (letrec*
                                        ((x7843
                                          (letrec*
                                           ((x7844
                                             (begin
                                               (write '(funapp 1282 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1283 44))
                                             (display "\n")
                                             (cdr x7844)))))
                                        (begin
                                          (write '(funapp 1284 41))
                                          (display "\n")
                                          (null? x7843)))))
                                     (if x-cnd7842
                                       (letrec*
                                        ((g7845
                                          (letrec*
                                           ((x7851
                                             (begin
                                               (write '(funapp 1289 52))
                                               (display "\n")
                                               (car args)))
                                            (x7850
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7849
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7848
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7846
                                             (letrec*
                                              ((x7847
                                                (begin
                                                  (write '(funapp 1295 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1296 47))
                                                (display "\n")
                                                (car x7847)))))
                                           (begin
                                             (write '(funapp 1297 44))
                                             (display "\n")
                                             (proc
                                              x7851
                                              x7850
                                              x7849
                                              x7848
                                              x7846)))))
                                        g7845)
                                       (letrec*
                                        ((x-cnd7852
                                          (letrec*
                                           ((x7853
                                             (letrec*
                                              ((x7854
                                                (begin
                                                  (write '(funapp 1309 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1310 47))
                                                (display "\n")
                                                (cddr x7854)))))
                                           (begin
                                             (write '(funapp 1311 44))
                                             (display "\n")
                                             (null? x7853)))))
                                        (if x-cnd7852
                                          (letrec*
                                           ((g7855
                                             (letrec*
                                              ((x7863
                                                (begin
                                                  (write '(funapp 1316 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7862
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7861
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7860
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7858
                                                (letrec*
                                                 ((x7859
                                                   (begin
                                                     (write '(funapp 1322 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1323 50))
                                                   (display "\n")
                                                   (car x7859))))
                                               (x7856
                                                (letrec*
                                                 ((x7857
                                                   (begin
                                                     (write '(funapp 1326 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1327 50))
                                                   (display "\n")
                                                   (cadr x7857)))))
                                              (begin
                                                (write '(funapp 1328 47))
                                                (display "\n")
                                                (proc
                                                 x7863
                                                 x7862
                                                 x7861
                                                 x7860
                                                 x7858
                                                 x7856)))))
                                           g7855)
                                          (letrec*
                                           ((x-cnd7864
                                             (letrec*
                                              ((x7865
                                                (letrec*
                                                 ((x7866
                                                   (begin
                                                     (write '(funapp 1341 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1342 50))
                                                   (display "\n")
                                                   (cdddr x7866)))))
                                              (begin
                                                (write '(funapp 1343 47))
                                                (display "\n")
                                                (null? x7865)))))
                                           (if x-cnd7864
                                             (letrec*
                                              ((g7867
                                                (letrec*
                                                 ((x7877
                                                   (begin
                                                     (write '(funapp 1348 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7876
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7875
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7874
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7872
                                                   (letrec*
                                                    ((x7873
                                                      (begin
                                                        (write
                                                         '(funapp 1354 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1355 53))
                                                      (display "\n")
                                                      (car x7873))))
                                                  (x7870
                                                   (letrec*
                                                    ((x7871
                                                      (begin
                                                        (write
                                                         '(funapp 1358 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1359 53))
                                                      (display "\n")
                                                      (cadr x7871))))
                                                  (x7868
                                                   (letrec*
                                                    ((x7869
                                                      (begin
                                                        (write
                                                         '(funapp 1362 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1363 53))
                                                      (display "\n")
                                                      (caddr x7869)))))
                                                 (begin
                                                   (write '(funapp 1364 50))
                                                   (display "\n")
                                                   (proc
                                                    x7877
                                                    x7876
                                                    x7875
                                                    x7874
                                                    x7872
                                                    x7870
                                                    x7868)))))
                                              g7867)
                                             (letrec*
                                              ((g7878
                                                (begin
                                                  (write '(funapp 1375 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7878)))))))))))))))))))
                   g7815)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7881
                        (begin
                          (write '(funapp 1381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1381 57))
                        (display "\n")
                        (assert x7881))))
                    (g7880
                     (letrec*
                      ((x-cnd7882
                        (begin
                          (write '(funapp 1384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7882
                        #f
                        (letrec*
                         ((x-cnd7883
                           (letrec*
                            ((x7884
                              (begin
                                (write '(funapp 1389 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1389 55))
                              (display "\n")
                              (equal? x7884 e)))))
                         (if x-cnd7883
                           l
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 1392 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1392 55))
                              (display "\n")
                              (member e x7885)))))))))
                   g7880)))
               (cddddr
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
                                (write '(funapp 1401 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1401 61))
                              (display "\n")
                              (cdr x7889)))))
                         (begin
                           (write '(funapp 1402 26))
                           (display "\n")
                           (cdr x7888)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (cdr x7887)))))
                   g7886)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x7891
                        (letrec*
                         ((x7892
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 1412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1412 61))
                              (display "\n")
                              (cdr x7893)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cdr x7892)))))
                      (begin
                        (write '(funapp 1414 23))
                        (display "\n")
                        (car x7891)))))
                   g7890)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7894
                     (begin
                       (write '(funapp 1416 53))
                       (display "\n")
                       (random 42))))
                   g7894)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7897
                        (begin
                          (write '(funapp 1420 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1420 59))
                        (display "\n")
                        (assert x7897))))
                    (g7896
                     (begin (write '(funapp 1421 28)) (display "\n") (= x 0))))
                   g7896)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1428 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7899
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1430 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7899))))
                   g7898)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1436 55))
                        (display "\n")
                        (car x7901)))))
                   g7900)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7903
                           (begin
                             (write '(funapp 1446 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7903
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1448 55))
                              (display "\n")
                              (list? x7904)))
                           #f))))
                      (letrec*
                       ((g7905
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1451 52))
                             (display "\n")
                             (null? l)))))
                       g7905))))
                   g7902)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7907
                        (letrec*
                         ((x7908
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1461 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1461 61))
                              (display "\n")
                              (car x7909)))))
                         (begin
                           (write '(funapp 1462 26))
                           (display "\n")
                           (cdr x7908)))))
                      (begin
                        (write '(funapp 1463 23))
                        (display "\n")
                        (cdr x7907)))))
                   g7906)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x-cnd7911
                        (letrec*
                         ((x7912 #\0))
                         (begin
                           (write '(funapp 1470 58))
                           (display "\n")
                           (char<=? x7912 c)))))
                      (if x-cnd7911
                        (letrec*
                         ((x7913 #\9))
                         (begin
                           (write '(funapp 1472 48))
                           (display "\n")
                           (char<=? c x7913)))
                        #f))))
                   g7910)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7916
                        (begin
                          (write '(funapp 1479 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1479 57))
                        (display "\n")
                        (assert x7916))))
                    (g7915
                     (letrec*
                      ((x-cnd7917
                        (begin
                          (write '(funapp 1482 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7917
                        #f
                        (letrec*
                         ((x-cnd7918
                           (letrec*
                            ((x7919
                              (begin
                                (write '(funapp 1487 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1487 56))
                              (display "\n")
                              (eqv? x7919 k)))))
                         (if x-cnd7918
                           (begin
                             (write '(funapp 1489 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7920
                              (begin
                                (write '(funapp 1490 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1490 55))
                              (display "\n")
                              (assq k x7920)))))))))
                   g7915)))
               (not (lambda (x) (letrec* ((g7921 (if x #f #t))) g7921)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7922
                     (begin
                       (write '(funapp 1494 50))
                       (display "\n")
                       (append l1 l2))))
                   g7922)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1498 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1498 57))
                        (display "\n")
                        (assert x7925))))
                    (g7924
                     (letrec*
                      ((x-cnd7926
                        (begin
                          (write '(funapp 1501 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7926
                        #f
                        (letrec*
                         ((x-cnd7927
                           (letrec*
                            ((x7928
                              (begin
                                (write '(funapp 1506 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1506 55))
                              (display "\n")
                              (eq? x7928 e)))))
                         (if x-cnd7927
                           l
                           (letrec*
                            ((x7929
                              (begin
                                (write '(funapp 1509 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1509 55))
                              (display "\n")
                              (memq e x7929)))))))))
                   g7924)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7931
                        (letrec*
                         ((x7932
                           (letrec*
                            ((x7933
                              (begin
                                (write '(funapp 1518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1518 61))
                              (display "\n")
                              (car x7933)))))
                         (begin
                           (write '(funapp 1519 26))
                           (display "\n")
                           (cdr x7932)))))
                      (begin
                        (write '(funapp 1520 23))
                        (display "\n")
                        (car x7931)))))
                   g7930)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1525 57))
                        (display "\n")
                        (assert x7936))))
                    (g7935
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7937
                             (letrec*
                              ((x-cnd7938
                                (begin
                                  (write '(funapp 1533 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7938
                                0
                                (letrec*
                                 ((x7939
                                   (letrec*
                                    ((x7940
                                      (begin
                                        (write '(funapp 1538 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1538 63))
                                      (display "\n")
                                      (rec x7940)))))
                                 (begin
                                   (write '(funapp 1539 34))
                                   (display "\n")
                                   (+ 1 x7939)))))))
                           g7937))))
                      (letrec*
                       ((g7941
                         (begin
                           (write '(funapp 1541 40))
                           (display "\n")
                           (rec l))))
                       g7941))))
                   g7935)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1546 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1546 58))
                        (display "\n")
                        (assert x7945))))
                    (g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7946))))
                    (g7944
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1550 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7947
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1552 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7947))))
                   g7944)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1558 65))
                        (display "\n")
                        (not x7949)))))
                   g7948)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7951
                        (letrec*
                         ((x7952
                           (begin
                             (write '(funapp 1565 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1565 58))
                           (display "\n")
                           (car x7952)))))
                      (begin
                        (write '(funapp 1566 23))
                        (display "\n")
                        (cdr x7951)))))
                   g7950)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1571 57))
                        (display "\n")
                        (assert x7955))))
                    (g7954
                     (letrec*
                      ((x-cnd7956
                        (begin
                          (write '(funapp 1574 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7956
                        #f
                        (letrec*
                         ((x-cnd7957
                           (letrec*
                            ((x7958
                              (begin
                                (write '(funapp 1579 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1579 56))
                              (display "\n")
                              (equal? x7958 k)))))
                         (if x-cnd7957
                           (begin
                             (write '(funapp 1581 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7959
                              (begin
                                (write '(funapp 1582 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1582 55))
                              (display "\n")
                              (assoc k x7959)))))))))
                   g7954)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1587 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1587 55))
                        (display "\n")
                        (car x7961)))))
                   g7960)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7965))))
                    (g7963
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c2))))
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
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1594 63))
                        (display "\n")
                        (not x7967)))))
                   g7964)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1601 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7969
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1603 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7969))))
                   g7968)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1609 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1609 62))
                        (display "\n")
                        (assert x7973))))
                    (g7971
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1610 57))
                        (display "\n")
                        (assert x7974))))
                    (g7972
                     (letrec*
                      ((x-cnd7975
                        (begin
                          (write '(funapp 1613 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7975
                        #t
                        (letrec*
                         ((x-cnd7976
                           (begin
                             (write '(funapp 1617 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7976
                           (letrec*
                            ((g7977
                              (letrec*
                               ((x7979
                                 (begin
                                   (write '(funapp 1620 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1620 64))
                                 (display "\n")
                                 (f x7979))))
                             (g7978
                              (letrec*
                               ((x7980
                                 (begin
                                   (write '(funapp 1622 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1622 58))
                                 (display "\n")
                                 (for-each f x7980)))))
                            g7978)
                           (begin
                             (write '(funapp 1624 27))
                             (display "\n")
                             '())))))))
                   g7972)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 1629 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1629 59))
                        (display "\n")
                        (assert x7983))))
                    (g7982
                     (letrec*
                      ((x-cnd7984
                        (begin
                          (write '(funapp 1631 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7984
                        (begin
                          (write '(funapp 1631 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7982)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x7988
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1636 58))
                        (display "\n")
                        (assert x7988))))
                    (g7986
                     (letrec*
                      ((x7989
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7989))))
                    (g7987
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1640 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7990
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1642 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7990))))
                   g7987)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((x7992
                        (letrec*
                         ((x7993
                           (letrec*
                            ((x7994
                              (begin
                                (write '(funapp 1652 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1652 61))
                              (display "\n")
                              (cdr x7994)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (cdr x7993)))))
                      (begin
                        (write '(funapp 1654 23))
                        (display "\n")
                        (car x7992)))))
                   g7991)))
               (newline (lambda () (letrec* ((g7995 #f)) g7995)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x7998
                        (letrec*
                         ((x7999
                           (begin
                             (write '(funapp 1662 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1662 58))
                           (display "\n")
                           (abs x7999))))
                       (x7997
                        (begin
                          (write '(funapp 1663 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1664 23))
                        (display "\n")
                        (/ x7998 x7997)))))
                   g7996)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((x8004
                        (begin
                          (write '(funapp 1670 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (assert x8004))))
                    (g8001
                     (letrec*
                      ((x8005
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1671 63))
                        (display "\n")
                        (assert x8005))))
                    (g8002
                     (letrec*
                      ((x8006
                        (letrec*
                         ((x8007
                           (begin
                             (write '(funapp 1674 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1674 61))
                           (display "\n")
                           (< index x8007)))))
                      (begin
                        (write '(funapp 1675 23))
                        (display "\n")
                        (assert x8006))))
                    (g8003
                     (letrec*
                      ((x-cnd8008
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8008
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8010
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (cdr l)))
                          (x8009
                           (begin
                             (write '(funapp 1682 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1683 26))
                           (display "\n")
                           (list-ref x8010 x8009)))))))
                   g8003)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x-cnd8012
                        (begin
                          (write '(funapp 1690 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8012
                        a
                        (letrec*
                         ((x8013
                           (begin
                             (write '(funapp 1693 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1693 57))
                           (display "\n")
                           (gcd b x8013)))))))
                   g8011)))
               (f
                (lambda (g x)
                  (letrec*
                   ((g8014
                     (letrec*
                      ((x-cnd8015
                        (begin
                          (write '(funapp 1700 35))
                          (display "\n")
                          (>= x 0))))
                      (if x-cnd8015
                        (begin (write '(funapp 1702 25)) (display "\n") (g x))
                        (letrec*
                         ((x8016
                           (begin
                             (write '(funapp 1704 34))
                             (display "\n")
                             (g x))))
                         (begin
                           (write '(funapp 1705 26))
                           (display "\n")
                           (f
                            (lambda (x)
                              (letrec*
                               ((g8017
                                 (begin
                                   (write '(funapp 1706 56))
                                   (display "\n")
                                   (f g x))))
                               g8017))
                            x8016)))))))
                   g8014)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8018
                     (begin
                       (write '(funapp 1709 51))
                       (display "\n")
                       (f add1 n))))
                   g8018))))
              (letrec*
               ((g8019
                 (begin
                   (write '(funapp 1712 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1713 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8022
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1717 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1717 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1717 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1717 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8023
                              (begin
                                (write '(funapp 1720 27))
                                (display "\n")
                                ((lambda (j7406 k7407 f7408)
                                   (letrec*
                                    ((g8024
                                      (lambda (g7404 g7405)
                                        (letrec*
                                         ((g8025
                                           (letrec*
                                            ((x8026
                                              (letrec*
                                               ((x8028
                                                 (begin
                                                   (write '(funapp 1730 44))
                                                   (display "\n")
                                                   ((lambda (j7410 k7411 f7412)
                                                      (letrec*
                                                       ((g8029
                                                         (lambda (g7409)
                                                           (letrec*
                                                            ((g8030
                                                              (letrec*
                                                               ((x8031
                                                                 (letrec*
                                                                  ((x8032
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1740
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
                                                                       1744
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7412
                                                                     x8032)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1745
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7410
                                                                  k7411
                                                                  x8031)))))
                                                            g8030))))
                                                       g8029))
                                                    j7406
                                                    k7407
                                                    g7404)))
                                                (x8027
                                                 (begin
                                                   (write '(funapp 1755 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7406
                                                    k7407
                                                    g7405))))
                                               (begin
                                                 (write '(funapp 1756 42))
                                                 (display "\n")
                                                 (f7408 x8028 x8027)))))
                                            (begin
                                              (write '(funapp 1757 39))
                                              (display "\n")
                                              (integer?/c
                                               j7406
                                               k7407
                                               x8026)))))
                                         g8025))))
                                    g8024))
                                 xj7402
                                 xk7403
                                 f))))
                            g8023)))
                         (x8021 (input))
                         (x8020 (input)))
                        (begin
                          (write '(funapp 1766 21))
                          (display "\n")
                          (x8022 x8021 x8020)))
                       (letrec*
                        ((x8034
                          (letrec*
                           ((xj7413
                             (begin
                               (write '(funapp 1770 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1770 37))
                                  (display "\n")
                                  'module))))
                            (xk7414
                             (begin
                               (write '(funapp 1770 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1770 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8035
                              (begin
                                (write '(funapp 1773 27))
                                (display "\n")
                                ((lambda (j7416 k7417 f7418)
                                   (letrec*
                                    ((g8036
                                      (lambda (g7415)
                                        (letrec*
                                         ((g8037
                                           (letrec*
                                            ((x8040
                                              (letrec*
                                               ((x8041
                                                 (begin
                                                   (write '(funapp 1782 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1783 42))
                                                 (display "\n")
                                                 (and/c integer?/c x8041))))
                                             (x8038
                                              (letrec*
                                               ((x8039
                                                 (begin
                                                   (write '(funapp 1787 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7416
                                                    k7417
                                                    g7415))))
                                               (begin
                                                 (write '(funapp 1788 42))
                                                 (display "\n")
                                                 (f7418 x8039)))))
                                            (begin
                                              (write '(funapp 1789 39))
                                              (display "\n")
                                              (x8040 j7416 k7417 x8038)))))
                                         g8037))))
                                    g8036))
                                 xj7413
                                 xk7414
                                 main))))
                            g8035)))
                         (x8033 (input)))
                        (begin
                          (write '(funapp 1797 21))
                          (display "\n")
                          (x8034 x8033)))))))))
               g8019))))
           g7447))))
       g7430)))
    g7429)))
