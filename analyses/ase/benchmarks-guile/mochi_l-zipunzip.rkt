(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7424 #t)) g7424)))
    (meta (lambda (v) (letrec* ((g7425 v)) g7425)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7426
          (letrec*
           ((g7427
             (letrec*
              ((x-e7428 lst))
              (letrec*
               ((v1742 x-e7428))
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
                   ((x-cnd7429
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7429
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
           g7427)))
        g7426)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7430 (lambda (v) (letrec* ((g7431 v)) g7431)))) g7430)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7432
          (letrec*
           ((x7433 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7433)))))
        g7432))))
   (letrec*
    ((g7434
      (letrec*
       ((g7435
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7436
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7436)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7437
                 (letrec*
                  ((x7439
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7439))))
                (g7438
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7440
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7441 (if val7245 val7245 #f))) g7441)))))
                   g7440))))
               g7438)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7442
                 (letrec*
                  ((x7444
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7444))))
                (g7443
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7445
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7446 (if val7247 val7247 #f))) g7446)))))
                   g7445))))
               g7443)))
           (>
            (lambda (x y)
              (letrec*
               ((g7447
                 (letrec*
                  ((x7449
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7449))))
                (g7448
                 (letrec*
                  ((x7450
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7450)))))
               g7448)))
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
           ((g7451 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7452
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7453
                     (lambda (k j lst)
                       (letrec*
                        ((g7454
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7455
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7455))
                             lst))))
                        g7454))))
                   g7453)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7457
                        g7265
                        (begin
                          (write '(blame g7263 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7456)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7459
                        g7268
                        (begin
                          (write '(blame g7266 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7458)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7461
                        g7271
                        (begin
                          (write '(blame g7269 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7460)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x-cnd7463
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7464 #t)) g7464)) g7274))))
                      (if x-cnd7463
                        g7274
                        (begin
                          (write '(blame g7272 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7462)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x-cnd7466
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7467 #t)) g7467)) g7277))))
                      (if x-cnd7466
                        g7277
                        (begin
                          (write '(blame g7275 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7465)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x-cnd7469
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7469
                        g7280
                        (begin
                          (write '(blame g7278 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7468)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7470
                     (lambda (k j v)
                       (letrec*
                        ((g7471
                          (letrec*
                           ((x7474
                             (letrec*
                              ((x7475
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7475))))
                            (x7472
                             (letrec*
                              ((x7473
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7473)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7474 x7472)))))
                        g7471))))
                   g7470)))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x-cnd7477
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7477
                        g7283
                        (begin
                          (write '(blame g7281 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7476)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7478
                     (letrec*
                      ((x-cnd7479
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7479
                        g7286
                        (begin
                          (write '(blame g7284 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7478)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7480
                     (letrec*
                      ((x-cnd7481
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7481
                        g7289
                        (begin
                          (write '(blame g7287 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7480)))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7482
                     (letrec*
                      ((x-cnd7483
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7292))))
                      (if x-cnd7483
                        g7292
                        (begin
                          (write '(blame g7290 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7482)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7484
                     (lambda (k j v)
                       (letrec*
                        ((g7485
                          (letrec*
                           ((x-cnd7486
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7486
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7485))))
                   g7484)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7487
                     (lambda (k j v)
                       (letrec*
                        ((g7488
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7489
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7489))))
                        g7488))))
                   g7487)))
               (null?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x-cnd7491
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7295))))
                      (if x-cnd7491
                        g7295
                        (begin
                          (write '(blame g7293 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7490)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7492
                     (lambda (k j v)
                       (letrec*
                        ((g7493
                          (letrec*
                           ((x-cnd7494
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7494
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7498
                                (letrec*
                                 ((x7499
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7499))))
                               (x7495
                                (letrec*
                                 ((x7497
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7496
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7497 k j x7496)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7498 x7495)))))))
                        g7493))))
                   g7492)))
               (any? (lambda (v) (letrec* ((g7500 #t)) g7500)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7501
                     (letrec*
                      ((x7502
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7502)))))
                   g7501)))
               (nonzero?/c
                (lambda (g7296 g7297 g7298)
                  (letrec*
                   ((g7503
                     (letrec*
                      ((x-cnd7504
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7505
                                (letrec*
                                 ((x7506
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7506)))))
                              g7505))
                           g7298))))
                      (if x-cnd7504
                        g7298
                        (begin
                          (write '(blame g7296 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7296)))))))
                   g7503)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7507
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7508
                          (letrec*
                           ((x-cnd7509
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7510
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7510))
                                g7301))))
                           (if x-cnd7509
                             g7301
                             (begin
                               (write '(blame g7299 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7508))))
                   g7507)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7511
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7512
                          (letrec*
                           ((x-cnd7513
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7514
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7514))
                                g7304))))
                           (if x-cnd7513
                             g7304
                             (begin
                               (write '(blame g7302 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7512))))
                   g7511)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7515
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7516
                          (letrec*
                           ((x-cnd7517
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7518
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7518))
                                g7307))))
                           (if x-cnd7517
                             g7307
                             (begin
                               (write '(blame g7305 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7516))))
                   g7515)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7519
                     (lambda (g7308 g7309 g7310)
                       (letrec*
                        ((g7520
                          (letrec*
                           ((x-cnd7521
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7522
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7522))
                                g7310))))
                           (if x-cnd7521
                             g7310
                             (begin
                               (write '(blame g7308 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7520))))
                   g7519)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7523
                     (lambda (g7311 g7312 g7313)
                       (letrec*
                        ((g7524
                          (letrec*
                           ((x-cnd7525
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7526
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7526))
                                g7313))))
                           (if x-cnd7525
                             g7313
                             (begin
                               (write '(blame g7311 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7311)))))))
                        g7524))))
                   g7523)))
               (meta (lambda (v) (letrec* ((g7527 v)) g7527)))
               (+
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7528
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7530
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7531
                                 (letrec*
                                  ((x7532
                                    (letrec*
                                     ((x7534
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7533
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7320 x7534 x7533)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7532)))))
                               g7531))))
                          g7530))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7529
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7529))))))
                  g7528)))
               (-
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7535
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7537
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7538
                                 (letrec*
                                  ((x7539
                                    (letrec*
                                     ((x7541
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7540
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7327 x7541 x7540)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7539)))))
                               g7538))))
                          g7537))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7536
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7536))))))
                  g7535)))
               (*
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7542
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7544
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7545
                                 (letrec*
                                  ((x7546
                                    (letrec*
                                     ((x7548
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7547
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7334 x7548 x7547)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7332 k7333 x7546)))))
                               g7545))))
                          g7544))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7543
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7543))))))
                  g7542)))
               (<
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7549
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7551
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7552
                                 (letrec*
                                  ((x7553
                                    (letrec*
                                     ((x7555
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7554
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7341 x7555 x7554)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7553)))))
                               g7552))))
                          g7551))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7550
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7550))))))
                  g7549)))
               (>
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7556
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7558
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7559
                                 (letrec*
                                  ((x7560
                                    (letrec*
                                     ((x7562
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7561
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7348 x7562 x7561)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7560)))))
                               g7559))))
                          g7558))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7557
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7557))))))
                  g7556)))
               (<=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7563
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7565
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7566
                                 (letrec*
                                  ((x7567
                                    (letrec*
                                     ((x7569
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7568
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7355 x7569 x7568)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7567)))))
                               g7566))))
                          g7565))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7564
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7564))))))
                  g7563)))
               (>=
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7570
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7572
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7573
                                 (letrec*
                                  ((x7574
                                    (letrec*
                                     ((x7576
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7575
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7362 x7576 x7575)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7360 k7361 x7574)))))
                               g7573))))
                          g7572))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7571
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7571))))))
                  g7570)))
               (add1
                (lambda (x)
                  (letrec*
                   ((g7577
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7577)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7578
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7580
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7581
                                 (letrec*
                                  ((x7582
                                    (letrec*
                                     ((x7584
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7583
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7369 x7584 x7583)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7582)))))
                               g7581))))
                          g7580))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7579
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7579))))))
                  g7578)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7585
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7587
                            (lambda (g7372)
                              (letrec*
                               ((g7588
                                 (letrec*
                                  ((x7589
                                    (letrec*
                                     ((x7590
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7375 x7590)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7589)))))
                               g7588))))
                          g7587))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7586
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7586))))))
                  g7585)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7591
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7593
                            (lambda (g7378)
                              (letrec*
                               ((g7594
                                 (letrec*
                                  ((x7595
                                    (letrec*
                                     ((x7596
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7381 x7596)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7595)))))
                               g7594))))
                          g7593))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7592
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7592))))))
                  g7591)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7597
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7599
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7600
                                 (letrec*
                                  ((x7601
                                    (letrec*
                                     ((x7603
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7602
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7388 x7603 x7602)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7601)))))
                               g7600))))
                          g7599))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7598
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7598))))))
                  g7597)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7604
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7606
                            (lambda (g7391)
                              (letrec*
                               ((g7607
                                 (letrec*
                                  ((x7608
                                    (letrec*
                                     ((x7609
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7394 x7609)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7608)))))
                               g7607))))
                          g7606))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7605
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7605))))))
                  g7604)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7610
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7612
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7613
                                 (letrec*
                                  ((x7614
                                    (letrec*
                                     ((x7616
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7615
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7401 x7616 x7615)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7614)))))
                               g7613))))
                          g7612))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7611
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7611))))))
                  g7610)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7618
                        (letrec*
                         ((x7619
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7619)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7618)))))
                   g7617)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7624))))
                    (g7622
                     (letrec*
                      ((x-cnd7625
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7625
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7628
                           (letrec*
                            ((x7629
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7629))))
                          (x7626
                           (letrec*
                            ((x7627
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7627)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7628 x7626)))))))
                   g7622)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7631)))))
                   g7630)))
               (cadadr
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
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7635)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7634)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7633)))))
                   g7632)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7637
                        (letrec*
                         ((x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7639)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7638)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7637)))))
                   g7636)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7643))))
                    (g7641
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7644))))
                    (g7642
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
                       ((g7645
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7646 res))
                       g7646))))
                   g7642)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7648
                        (letrec*
                         ((x7649
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7649)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7648)))))
                   g7647)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7651
                        (letrec*
                         ((x7652
                           (letrec*
                            ((x7653
                              (begin
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7653)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7652)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7651)))))
                   g7650)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7656))))
                    (g7655
                     (letrec*
                      ((x-cnd7657
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7657
                        #f
                        (letrec*
                         ((x-cnd7658
                           (letrec*
                            ((x7659
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7659 k)))))
                         (if x-cnd7658
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7660)))))))))
                   g7655)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7662)))))
                   g7661)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7665))))
                    (g7664
                     (letrec*
                      ((x-cnd7666
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7666
                        ""
                        (letrec*
                         ((x7669
                           (letrec*
                            ((x7670
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7670))))
                          (x7667
                           (letrec*
                            ((x7668
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7668)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7669 x7667)))))))
                   g7664)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7674
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7674))))
                    (g7672
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7675))))
                    (g7673
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7676
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7676))))
                   g7673)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7678
                        (letrec*
                         ((x7679
                           (letrec*
                            ((x7680
                              (begin
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7680)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7679)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7678)))))
                   g7677)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((x7684
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7684))))
                    (g7682
                     (letrec*
                      ((x7685
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7685))))
                    (g7683
                     (letrec*
                      ((x-cnd7686
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7686
                        x
                        (letrec*
                         ((x7688
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7687
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7688 x7687)))))))
                   g7683)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7689
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7689)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((x-cnd7691
                        (letrec*
                         ((x7692 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7692)))))
                      (if x-cnd7691
                        (letrec*
                         ((x7693 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7693)))
                        #f))))
                   g7690)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7694
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7695
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7695 9)))))
                      (letrec*
                       ((g7696
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7697
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7697 10)))))
                            (letrec*
                             ((g7698
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7699
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7699 32))))))
                             g7698)))))
                       g7696))))
                   g7694)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7700
                     (letrec*
                      ((x7701
                        (letrec*
                         ((x7702
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7702)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7701)))))
                   g7700)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7703
                     (letrec*
                      ((x7705
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7705))))
                    (g7704
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7704)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7706
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7706)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7707 #f)) g7707)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7708
                     (letrec*
                      ((x7709
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7709)))))
                   g7708)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7710
                     (letrec*
                      ((x7712
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7712))))
                    (g7711
                     (letrec*
                      ((x-cnd7713
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7713
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7711)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7714
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7715
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7716
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7716
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7717
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7718
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7718
                                       (letrec*
                                        ((x-cnd7719
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7719
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7720
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7721
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7721
                                             (letrec*
                                              ((x-cnd7722
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7722
                                                (letrec*
                                                 ((x-cnd7723
                                                   (letrec*
                                                    ((x7725
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7724
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7725 x7724)))))
                                                 (if x-cnd7723
                                                   (letrec*
                                                    ((x7727
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7726
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7727 x7726)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7728
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7729
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7729
                                                (letrec*
                                                 ((x-cnd7730
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7730
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7731
                                                       (letrec*
                                                        ((x-cnd7732
                                                          (letrec*
                                                           ((x7733
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
                                                             (= x7733 n)))))
                                                        (if x-cnd7732
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7734
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
                                                                    ((g7735
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7736
                                                                           (letrec*
                                                                            ((x7738
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
                                                                             (x7737
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
                                                                               x7738
                                                                               x7737)))))
                                                                         (if x-cnd7736
                                                                           (letrec*
                                                                            ((x7739
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
                                                                               x7739)))
                                                                           #f)))))
                                                                    g7735))))
                                                                g7734))))
                                                           (letrec*
                                                            ((g7740
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7740))
                                                          #f))))
                                                     g7731))
                                                   #f))
                                                #f)))))
                                         g7728)))))
                                   g7720)))))
                             g7717)))))
                       g7715))))
                   g7714)))
               (cdaaar
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
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7744)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7743)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x7742)))))
                   g7741)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7746
                        (letrec*
                         ((x7747
                           (letrec*
                            ((x7748
                              (begin
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7748)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7747)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7746)))))
                   g7745)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7749
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g7749)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7753))))
                    (g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7754))))
                    (g7752
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
                       ((g7755
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7756 res))
                       g7756))))
                   g7752)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7757
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g7757)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7761))))
                    (g7759
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7762))))
                    (g7760
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7763
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7763))))
                   g7760)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7766)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7765)))))
                   g7764)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7768
                        (letrec*
                         ((x7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7770)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7769)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x7768)))))
                   g7767)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7772
                        (letrec*
                         ((x7773
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x7773)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x7772)))))
                   g7771)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7775
                        (letrec*
                         ((x7776
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x7776)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x7775)))))
                   g7774)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7780))))
                    (g7778
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7781))))
                    (g7779
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x7782)))))
                   g7779)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x7786)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x7785)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x7784)))))
                   g7783)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x7789))))
                    (g7788
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g7788)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7790
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g7790)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7792
                        (letrec*
                         ((x7793
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x7793)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x7792)))))
                   g7791)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7794
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g7794)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x7797))))
                    (g7796
                     (letrec*
                      ((x-cnd7798
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7798
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x7802))))
                          (x7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x7800)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x7801 x7799)))))))
                   g7796)))
               (caaadr
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
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x7806)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x7805)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x7804)))))
                   g7803)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7808
                        (letrec*
                         ((x7809
                           (letrec*
                            ((x7810
                              (begin
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x7810)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x7809)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x7808)))))
                   g7807)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x7813))))
                    (g7812
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x7814)))))
                   g7812)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7816
                        (letrec*
                         ((x7817
                           (letrec*
                            ((x7818
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x7818)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x7817)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7816)))))
                   g7815)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x7823))))
                    (g7821
                     (letrec*
                      ((x-cnd7824
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7824
                        (letrec*
                         ((g7825
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g7825)
                        (letrec*
                         ((x-cnd7826
                           (letrec*
                            ((x7827
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x7827)))))
                         (if x-cnd7826
                           (letrec*
                            ((g7828
                              (letrec*
                               ((x7829
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x7829)))))
                            g7828)
                           (letrec*
                            ((x-cnd7830
                              (letrec*
                               ((x7831
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x7831)))))
                            (if x-cnd7830
                              (letrec*
                               ((g7832
                                 (letrec*
                                  ((x7834
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x7833
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x7834 x7833)))))
                               g7832)
                              (letrec*
                               ((x-cnd7835
                                 (letrec*
                                  ((x7836
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x7836)))))
                               (if x-cnd7835
                                 (letrec*
                                  ((g7837
                                    (letrec*
                                     ((x7840
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x7839
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7838
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x7840 x7839 x7838)))))
                                  g7837)
                                 (letrec*
                                  ((x-cnd7841
                                    (letrec*
                                     ((x7842
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x7842)))))
                                  (if x-cnd7841
                                    (letrec*
                                     ((g7843
                                       (letrec*
                                        ((x7847
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x7846
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7845
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7844
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x7847 x7846 x7845 x7844)))))
                                     g7843)
                                    (letrec*
                                     ((x-cnd7848
                                       (letrec*
                                        ((x7849
                                          (letrec*
                                           ((x7850
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x7850)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x7849)))))
                                     (if x-cnd7848
                                       (letrec*
                                        ((g7851
                                          (letrec*
                                           ((x7857
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x7856
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7855
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7854
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7852
                                             (letrec*
                                              ((x7853
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x7853)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x7857
                                              x7856
                                              x7855
                                              x7854
                                              x7852)))))
                                        g7851)
                                       (letrec*
                                        ((x-cnd7858
                                          (letrec*
                                           ((x7859
                                             (letrec*
                                              ((x7860
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x7860)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x7859)))))
                                        (if x-cnd7858
                                          (letrec*
                                           ((g7861
                                             (letrec*
                                              ((x7869
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7868
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7867
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7866
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7864
                                                (letrec*
                                                 ((x7865
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x7865))))
                                               (x7862
                                                (letrec*
                                                 ((x7863
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x7863)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x7869
                                                 x7868
                                                 x7867
                                                 x7866
                                                 x7864
                                                 x7862)))))
                                           g7861)
                                          (letrec*
                                           ((x-cnd7870
                                             (letrec*
                                              ((x7871
                                                (letrec*
                                                 ((x7872
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x7872)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x7871)))))
                                           (if x-cnd7870
                                             (letrec*
                                              ((g7873
                                                (letrec*
                                                 ((x7883
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7882
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7881
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7880
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7878
                                                   (letrec*
                                                    ((x7879
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x7879))))
                                                  (x7876
                                                   (letrec*
                                                    ((x7877
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x7877))))
                                                  (x7874
                                                   (letrec*
                                                    ((x7875
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x7875)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x7883
                                                    x7882
                                                    x7881
                                                    x7880
                                                    x7878
                                                    x7876
                                                    x7874)))))
                                              g7873)
                                             (letrec*
                                              ((g7884
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7884)))))))))))))))))))
                   g7821)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7887
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x7887))))
                    (g7886
                     (letrec*
                      ((x-cnd7888
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7888
                        #f
                        (letrec*
                         ((x-cnd7889
                           (letrec*
                            ((x7890
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x7890 e)))))
                         (if x-cnd7889
                           l
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x7891)))))))))
                   g7886)))
               (cddddr
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
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x7895)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x7894)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x7893)))))
                   g7892)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7897
                        (letrec*
                         ((x7898
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x7899)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x7898)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x7897)))))
                   g7896)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7900
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g7900)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x7903))))
                    (g7902
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g7902)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7905
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7905))))
                   g7904)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x7907)))))
                   g7906)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7909
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7909
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x7910)))
                           #f))))
                      (letrec*
                       ((g7911
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g7911))))
                   g7908)))
               (cddaar
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
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x7915)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x7914)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x7913)))))
                   g7912)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x-cnd7917
                        (letrec*
                         ((x7918 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x7918 c)))))
                      (if x-cnd7917
                        (letrec*
                         ((x7919 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x7919)))
                        #f))))
                   g7916)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7922))))
                    (g7921
                     (letrec*
                      ((x-cnd7923
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7923
                        #f
                        (letrec*
                         ((x-cnd7924
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x7925 k)))))
                         (if x-cnd7924
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7926
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x7926)))))))))
                   g7921)))
               (not (lambda (x) (letrec* ((g7927 (if x #f #t))) g7927)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7928
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g7928)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x7931))))
                    (g7930
                     (letrec*
                      ((x-cnd7932
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7932
                        #f
                        (letrec*
                         ((x-cnd7933
                           (letrec*
                            ((x7934
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x7934 e)))))
                         (if x-cnd7933
                           l
                           (letrec*
                            ((x7935
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x7935)))))))))
                   g7930)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7937
                        (letrec*
                         ((x7938
                           (letrec*
                            ((x7939
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x7939)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x7938)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x7937)))))
                   g7936)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7942))))
                    (g7941
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7943
                             (letrec*
                              ((x-cnd7944
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7944
                                0
                                (letrec*
                                 ((x7945
                                   (letrec*
                                    ((x7946
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x7946)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x7945)))))))
                           g7943))))
                      (letrec*
                       ((g7947
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g7947))))
                   g7941)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7951))))
                    (g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7952))))
                    (g7950
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7953
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7953))))
                   g7950)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x7955)))))
                   g7954)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7957
                        (letrec*
                         ((x7958
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x7958)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x7957)))))
                   g7956)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x7961))))
                    (g7960
                     (letrec*
                      ((x-cnd7962
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7962
                        #f
                        (letrec*
                         ((x-cnd7963
                           (letrec*
                            ((x7964
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x7964 k)))))
                         (if x-cnd7963
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7965
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x7965)))))))))
                   g7960)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x7967)))))
                   g7966)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7971))))
                    (g7969
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7972))))
                    (g7970
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x7973)))))
                   g7970)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7975
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7975))))
                   g7974)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x7979))))
                    (g7977
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x7980))))
                    (g7978
                     (letrec*
                      ((x-cnd7981
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7981
                        #t
                        (letrec*
                         ((x-cnd7982
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7982
                           (letrec*
                            ((g7983
                              (letrec*
                               ((x7985
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x7985))))
                             (g7984
                              (letrec*
                               ((x7986
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x7986)))))
                            g7984)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g7978)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7989
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x7989))))
                    (g7988
                     (letrec*
                      ((x-cnd7990
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7990
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7988)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((x7994
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7994))))
                    (g7992
                     (letrec*
                      ((x7995
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7995))))
                    (g7993
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7996
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7996))))
                   g7993)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7997
                     (letrec*
                      ((x7998
                        (letrec*
                         ((x7999
                           (letrec*
                            ((x8000
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x8000)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x7999)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x7998)))))
                   g7997)))
               (newline (lambda () (letrec* ((g8001 #f)) g8001)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8002
                     (letrec*
                      ((x8004
                        (letrec*
                         ((x8005
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x8005))))
                       (x8003
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x8004 x8003)))))
                   g8002)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8006
                     (letrec*
                      ((x8010
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x8010))))
                    (g8007
                     (letrec*
                      ((x8011
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x8011))))
                    (g8008
                     (letrec*
                      ((x8012
                        (letrec*
                         ((x8013
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x8013)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x8012))))
                    (g8009
                     (letrec*
                      ((x-cnd8014
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8014
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8016
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x8015
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x8016 x8015)))))))
                   g8009)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((x-cnd8018
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8018
                        a
                        (letrec*
                         ((x8019
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8019)))))))
                   g8017)))
               (f
                (lambda (g)
                  (letrec*
                   ((g8020
                     (lambda (x y)
                       (letrec*
                        ((g8021
                          (letrec*
                           ((x8023
                             (begin
                               (write '(funapp 1704 36))
                               (display "\n")
                               (+ x 1)))
                            (x8022
                             (begin
                               (write '(funapp 1704 52))
                               (display "\n")
                               (+ y 1))))
                           (begin
                             (write '(funapp 1705 28))
                             (display "\n")
                             (g x8023 x8022)))))
                        g8021))))
                   g8020)))
               (unzip
                (lambda (x k)
                  (letrec*
                   ((g8024
                     (letrec*
                      ((x-cnd8025
                        (begin
                          (write '(funapp 1713 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd8025
                        (begin
                          (write '(funapp 1715 25))
                          (display "\n")
                          (k 0 0))
                        (letrec*
                         ((x8027
                           (begin
                             (write '(funapp 1717 34))
                             (display "\n")
                             (- x 1)))
                          (x8026
                           (begin
                             (write '(funapp 1717 50))
                             (display "\n")
                             (f k))))
                         (begin
                           (write '(funapp 1718 26))
                           (display "\n")
                           (unzip x8027 x8026)))))))
                   g8024)))
               (zip
                (lambda (x y)
                  (letrec*
                   ((g8028
                     (letrec*
                      ((x-cnd8029
                        (begin
                          (write '(funapp 1725 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd8029
                        (letrec*
                         ((x-cnd8030
                           (begin
                             (write '(funapp 1727 46))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd8030
                           0
                           (begin
                             (write '(funapp 1727 71))
                             (display "\n")
                             'fail)))
                        (letrec*
                         ((x-cnd8031
                           (begin
                             (write '(funapp 1729 38))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd8031
                           (begin
                             (write '(funapp 1731 27))
                             (display "\n")
                             'fail)
                           (letrec*
                            ((x8032
                              (letrec*
                               ((x8034
                                 (begin
                                   (write '(funapp 1735 40))
                                   (display "\n")
                                   (- x 1)))
                                (x8033
                                 (begin
                                   (write '(funapp 1735 56))
                                   (display "\n")
                                   (- y 1))))
                               (begin
                                 (write '(funapp 1736 32))
                                 (display "\n")
                                 (zip x8034 x8033)))))
                            (begin
                              (write '(funapp 1737 29))
                              (display "\n")
                              (+ 1 x8032)))))))))
                   g8028)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8035
                     (begin
                       (write '(funapp 1739 51))
                       (display "\n")
                       (unzip n zip))))
                   g8035))))
              (letrec*
               ((g8036
                 (begin
                   (write '(funapp 1742 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1743 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8038
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1747 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1747 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1747 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1747 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8039
                              (begin
                                (write '(funapp 1750 27))
                                (display "\n")
                                ((lambda (j7405 k7406 f7407)
                                   (letrec*
                                    ((g8040
                                      (lambda (g7404)
                                        (letrec*
                                         ((g8041
                                           (letrec*
                                            ((x8042
                                              (letrec*
                                               ((x8043
                                                 (begin
                                                   (write '(funapp 1760 44))
                                                   (display "\n")
                                                   ((lambda (j7415 k7416 f7417)
                                                      (letrec*
                                                       ((g8044
                                                         (lambda (g7413 g7414)
                                                           (letrec*
                                                            ((g8045
                                                              (letrec*
                                                               ((x8046
                                                                 (letrec*
                                                                  ((x8048
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1770
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (integer?/c
                                                                       j7415
                                                                       k7416
                                                                       g7413)))
                                                                   (x8047
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1775
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (integer?/c
                                                                       j7415
                                                                       k7416
                                                                       g7414))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1779
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7417
                                                                     x8048
                                                                     x8047)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1782
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7415
                                                                  k7416
                                                                  x8046)))))
                                                            g8045))))
                                                       g8044))
                                                    j7405
                                                    k7406
                                                    g7404))))
                                               (begin
                                                 (write '(funapp 1791 42))
                                                 (display "\n")
                                                 (f7407 x8043)))))
                                            (begin
                                              (write '(funapp 1792 39))
                                              (display "\n")
                                              ((lambda (j7410 k7411 f7412)
                                                 (letrec*
                                                  ((g8049
                                                    (lambda (g7408 g7409)
                                                      (letrec*
                                                       ((g8050
                                                         (letrec*
                                                          ((x8051
                                                            (letrec*
                                                             ((x8053
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1802
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7410
                                                                  k7411
                                                                  g7408)))
                                                              (x8052
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1807
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7410
                                                                  k7411
                                                                  g7409))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1811
                                                                  54))
                                                               (display "\n")
                                                               (f7412
                                                                x8053
                                                                x8052)))))
                                                          (begin
                                                            (write
                                                             '(funapp 1812 51))
                                                            (display "\n")
                                                            (integer?/c
                                                             j7410
                                                             k7411
                                                             x8051)))))
                                                       g8050))))
                                                  g8049))
                                               j7405
                                               k7406
                                               x8042)))))
                                         g8041))))
                                    g8040))
                                 xj7402
                                 xk7403
                                 f))))
                            g8039)))
                         (x8037 (input)))
                        (begin
                          (write '(funapp 1828 21))
                          (display "\n")
                          (x8038 x8037)))
                       (letrec*
                        ((x8055
                          (letrec*
                           ((xj7418
                             (begin
                               (write '(funapp 1832 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1832 37))
                                  (display "\n")
                                  'module))))
                            (xk7419
                             (begin
                               (write '(funapp 1832 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1832 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8056
                              (begin
                                (write '(funapp 1835 27))
                                (display "\n")
                                ((lambda (j7421 k7422 f7423)
                                   (letrec*
                                    ((g8057
                                      (lambda (g7420)
                                        (letrec*
                                         ((g8058
                                           (letrec*
                                            ((x8059
                                              (letrec*
                                               ((x8060
                                                 (begin
                                                   (write '(funapp 1845 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7421
                                                    k7422
                                                    g7420))))
                                               (begin
                                                 (write '(funapp 1846 42))
                                                 (display "\n")
                                                 (f7423 x8060)))))
                                            (begin
                                              (write '(funapp 1847 39))
                                              (display "\n")
                                              (integer?/c
                                               j7421
                                               k7422
                                               x8059)))))
                                         g8058))))
                                    g8057))
                                 xj7418
                                 xk7419
                                 main))))
                            g8056)))
                         (x8054 (input)))
                        (begin
                          (write '(funapp 1855 21))
                          (display "\n")
                          (x8055 x8054)))))))))
               g8036))))
           g7452))))
       g7435)))
    g7434)))
