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
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7577
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7579
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7580
                                 (letrec*
                                  ((x7581
                                    (letrec*
                                     ((x7583
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7582
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 561 36))
                                       (display "\n")
                                       (f7369 x7583 x7582)))))
                                  (begin
                                    (write '(funapp 562 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7581)))))
                               g7580))))
                          g7579))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7578
                            (begin
                              (write '(funapp 567 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7578))))))
                  g7577)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 571 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 571 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7584
                    (begin
                      (write '(funapp 574 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7586
                            (lambda (g7372)
                              (letrec*
                               ((g7587
                                 (letrec*
                                  ((x7588
                                    (letrec*
                                     ((x7589
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7375 x7589)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7588)))))
                               g7587))))
                          g7586))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7585
                            (begin
                              (write '(funapp 590 51))
                              (display "\n")
                              (orig-car p))))
                          g7585))))))
                  g7584)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 594 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 594 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7590
                    (begin
                      (write '(funapp 597 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7592
                            (lambda (g7378)
                              (letrec*
                               ((g7593
                                 (letrec*
                                  ((x7594
                                    (letrec*
                                     ((x7595
                                       (begin
                                         (write '(funapp 606 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 607 36))
                                       (display "\n")
                                       (f7381 x7595)))))
                                  (begin
                                    (write '(funapp 608 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7594)))))
                               g7593))))
                          g7592))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7591
                            (begin
                              (write '(funapp 613 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7591))))))
                  g7590)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 617 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 617 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7596
                    (begin
                      (write '(funapp 620 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7598
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7599
                                 (letrec*
                                  ((x7600
                                    (letrec*
                                     ((x7602
                                       (begin
                                         (write '(funapp 629 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7601
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 631 36))
                                       (display "\n")
                                       (f7388 x7602 x7601)))))
                                  (begin
                                    (write '(funapp 632 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7600)))))
                               g7599))))
                          g7598))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7597
                            (begin
                              (write '(funapp 638 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7597))))))
                  g7596)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 642 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 642 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7603
                    (begin
                      (write '(funapp 645 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7605
                            (lambda (g7391)
                              (letrec*
                               ((g7606
                                 (letrec*
                                  ((x7607
                                    (letrec*
                                     ((x7608
                                       (begin
                                         (write '(funapp 654 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 655 36))
                                       (display "\n")
                                       (f7394 x7608)))))
                                  (begin
                                    (write '(funapp 656 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7607)))))
                               g7606))))
                          g7605))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7604
                            (begin
                              (write '(funapp 662 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7604))))))
                  g7603)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 666 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 666 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7609
                    (begin
                      (write '(funapp 669 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7611
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7612
                                 (letrec*
                                  ((x7613
                                    (letrec*
                                     ((x7615
                                       (begin
                                         (write '(funapp 678 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7614
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 680 36))
                                       (display "\n")
                                       (f7401 x7615 x7614)))))
                                  (begin
                                    (write '(funapp 681 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7613)))))
                               g7612))))
                          g7611))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7610
                            (begin
                              (write '(funapp 687 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7610))))))
                  g7609)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (begin
                             (write '(funapp 694 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 694 58))
                           (display "\n")
                           (cdr x7618)))))
                      (begin
                        (write '(funapp 695 23))
                        (display "\n")
                        (cdr x7617)))))
                   g7616)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 701 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 701 62))
                        (display "\n")
                        (assert x7622))))
                    (g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 702 57))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((x-cnd7624
                        (begin
                          (write '(funapp 705 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7624
                        (begin (write '(funapp 707 24)) (display "\n") '())
                        (letrec*
                         ((x7627
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 709 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 709 61))
                              (display "\n")
                              (f x7628))))
                          (x7625
                           (letrec*
                            ((x7626
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (map f x7626)))))
                         (begin
                           (write '(funapp 711 26))
                           (display "\n")
                           (cons x7627 x7625)))))))
                   g7621)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 716 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 716 55))
                        (display "\n")
                        (cdr x7630)))))
                   g7629)))
               (cadadr
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
                                (write '(funapp 725 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 725 61))
                              (display "\n")
                              (car x7634)))))
                         (begin
                           (write '(funapp 726 26))
                           (display "\n")
                           (cdr x7633)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7632)))))
                   g7631)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7636
                        (letrec*
                         ((x7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (cdr x7638)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7637)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7636)))))
                   g7635)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 744 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 744 60))
                        (display "\n")
                        (assert x7642))))
                    (g7640
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 746 59))
                        (display "\n")
                        (assert x7643))))
                    (g7641
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
                       ((g7644
                         (begin
                           (write '(funapp 752 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7645 res))
                       g7645))))
                   g7641)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7647
                        (letrec*
                         ((x7648
                           (begin
                             (write '(funapp 760 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 760 58))
                           (display "\n")
                           (cdr x7648)))))
                      (begin
                        (write '(funapp 761 23))
                        (display "\n")
                        (car x7647)))))
                   g7646)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7650
                        (letrec*
                         ((x7651
                           (letrec*
                            ((x7652
                              (begin
                                (write '(funapp 770 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 770 61))
                              (display "\n")
                              (car x7652)))))
                         (begin
                           (write '(funapp 771 26))
                           (display "\n")
                           (car x7651)))))
                      (begin
                        (write '(funapp 772 23))
                        (display "\n")
                        (cdr x7650)))))
                   g7649)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 777 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 777 57))
                        (display "\n")
                        (assert x7655))))
                    (g7654
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 780 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7656
                        #f
                        (letrec*
                         ((x-cnd7657
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 785 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 785 56))
                              (display "\n")
                              (eq? x7658 k)))))
                         (if x-cnd7657
                           (begin
                             (write '(funapp 787 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7659
                              (begin
                                (write '(funapp 788 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 788 55))
                              (display "\n")
                              (assq k x7659)))))))))
                   g7654)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 793 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (= 0 x7661)))))
                   g7660)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 798 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 798 57))
                        (display "\n")
                        (assert x7664))))
                    (g7663
                     (letrec*
                      ((x-cnd7665
                        (begin
                          (write '(funapp 801 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7665
                        ""
                        (letrec*
                         ((x7668
                           (letrec*
                            ((x7669
                              (begin
                                (write '(funapp 806 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 806 55))
                              (display "\n")
                              (char->string x7669))))
                          (x7666
                           (letrec*
                            ((x7667
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (list->string x7667)))))
                         (begin
                           (write '(funapp 809 26))
                           (display "\n")
                           (string-append x7668 x7666)))))))
                   g7663)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 814 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 814 58))
                        (display "\n")
                        (assert x7673))))
                    (g7671
                     (letrec*
                      ((x7674
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7674))))
                    (g7672
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 818 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7675
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 820 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7675))))
                   g7672)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((x7677
                        (letrec*
                         ((x7678
                           (letrec*
                            ((x7679
                              (begin
                                (write '(funapp 830 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 830 61))
                              (display "\n")
                              (cdr x7679)))))
                         (begin
                           (write '(funapp 831 26))
                           (display "\n")
                           (cdr x7678)))))
                      (begin
                        (write '(funapp 832 23))
                        (display "\n")
                        (cdr x7677)))))
                   g7676)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7683
                        (begin
                          (write '(funapp 837 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 837 57))
                        (display "\n")
                        (assert x7683))))
                    (g7681
                     (letrec*
                      ((x7684
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7684))))
                    (g7682
                     (letrec*
                      ((x-cnd7685
                        (begin
                          (write '(funapp 841 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7685
                        x
                        (letrec*
                         ((x7687
                           (begin
                             (write '(funapp 845 34))
                             (display "\n")
                             (cdr x)))
                          (x7686
                           (begin
                             (write '(funapp 845 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (list-tail x7687 x7686)))))))
                   g7682)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7688
                     (begin (write '(funapp 848 49)) (display "\n") '())))
                   g7688)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x-cnd7690
                        (letrec*
                         ((x7691 #\a))
                         (begin
                           (write '(funapp 855 48))
                           (display "\n")
                           (char-ci>=? c x7691)))))
                      (if x-cnd7690
                        (letrec*
                         ((x7692 #\z))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci<=? c x7692)))
                        #f))))
                   g7689)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7694
                           (begin
                             (write '(funapp 866 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 866 62))
                           (display "\n")
                           (= x7694 9)))))
                      (letrec*
                       ((g7695
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7696
                                 (begin
                                   (write '(funapp 874 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 875 32))
                                 (display "\n")
                                 (= x7696 10)))))
                            (letrec*
                             ((g7697
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7698
                                    (begin
                                      (write '(funapp 881 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 882 35))
                                    (display "\n")
                                    (= x7698 32))))))
                             g7697)))))
                       g7695))))
                   g7693)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7699
                     (letrec*
                      ((x7700
                        (letrec*
                         ((x7701
                           (begin
                             (write '(funapp 891 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 891 58))
                           (display "\n")
                           (cdr x7701)))))
                      (begin
                        (write '(funapp 892 23))
                        (display "\n")
                        (cdr x7700)))))
                   g7699)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7702
                     (letrec*
                      ((x7704
                        (begin
                          (write '(funapp 897 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 897 59))
                        (display "\n")
                        (assert x7704))))
                    (g7703
                     (begin (write '(funapp 898 28)) (display "\n") (> x 0))))
                   g7703)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7705
                     (begin
                       (write '(funapp 900 59))
                       (display "\n")
                       (bool-top))))
                   g7705)))
               ($pc (begin (write '(funapp 901 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7706 #f)) g7706)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7707
                     (letrec*
                      ((x7708
                        (begin
                          (write '(funapp 907 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 907 55))
                        (display "\n")
                        (cdr x7708)))))
                   g7707)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7709
                     (letrec*
                      ((x7711
                        (begin
                          (write '(funapp 912 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 912 59))
                        (display "\n")
                        (assert x7711))))
                    (g7710
                     (letrec*
                      ((x-cnd7712
                        (begin
                          (write '(funapp 915 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7712
                        (begin
                          (write '(funapp 916 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 916 49))
                          (display "\n")
                          (floor x))))))
                   g7710)))
               ($cmp (begin (write '(funapp 918 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7713
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 924 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7714
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7715
                                 (begin
                                   (write '(funapp 932 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7715
                                 (begin
                                   (write '(funapp 933 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7716
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7717
                                       (begin
                                         (write '(funapp 941 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7717
                                       (letrec*
                                        ((x-cnd7718
                                          (begin
                                            (write '(funapp 944 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7718
                                          (begin
                                            (write '(funapp 945 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7719
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7720
                                             (begin
                                               (write '(funapp 954 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7720
                                             (letrec*
                                              ((x-cnd7721
                                                (begin
                                                  (write '(funapp 957 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7721
                                                (letrec*
                                                 ((x-cnd7722
                                                   (letrec*
                                                    ((x7724
                                                      (begin
                                                        (write
                                                         '(funapp 962 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7723
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 964 53))
                                                      (display "\n")
                                                      (equal? x7724 x7723)))))
                                                 (if x-cnd7722
                                                   (letrec*
                                                    ((x7726
                                                      (begin
                                                        (write
                                                         '(funapp 967 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7725
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 969 53))
                                                      (display "\n")
                                                      (equal? x7726 x7725)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7727
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7728
                                                (begin
                                                  (write '(funapp 978 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7728
                                                (letrec*
                                                 ((x-cnd7729
                                                   (begin
                                                     (write '(funapp 981 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7729
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 984 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7730
                                                       (letrec*
                                                        ((x-cnd7731
                                                          (letrec*
                                                           ((x7732
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
                                                             (= x7732 n)))))
                                                        (if x-cnd7731
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7733
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
                                                                    ((g7734
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7735
                                                                           (letrec*
                                                                            ((x7737
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
                                                                             (x7736
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
                                                                               x7737
                                                                               x7736)))))
                                                                         (if x-cnd7735
                                                                           (letrec*
                                                                            ((x7738
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
                                                                               x7738)))
                                                                           #f)))))
                                                                    g7734))))
                                                                g7733))))
                                                           (letrec*
                                                            ((g7739
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1033
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7739))
                                                          #f))))
                                                     g7730))
                                                   #f))
                                                #f)))))
                                         g7727)))))
                                   g7719)))))
                             g7716)))))
                       g7714))))
                   g7713)))
               (cdaaar
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
                                (write '(funapp 1051 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1051 61))
                              (display "\n")
                              (car x7743)))))
                         (begin
                           (write '(funapp 1052 26))
                           (display "\n")
                           (car x7742)))))
                      (begin
                        (write '(funapp 1053 23))
                        (display "\n")
                        (cdr x7741)))))
                   g7740)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (letrec*
                         ((x7746
                           (letrec*
                            ((x7747
                              (begin
                                (write '(funapp 1062 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1062 61))
                              (display "\n")
                              (cdr x7747)))))
                         (begin
                           (write '(funapp 1063 26))
                           (display "\n")
                           (car x7746)))))
                      (begin
                        (write '(funapp 1064 23))
                        (display "\n")
                        (car x7745)))))
                   g7744)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7748
                     (begin
                       (write '(funapp 1066 53))
                       (display "\n")
                       (eq? x y))))
                   g7748)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1071 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1071 60))
                        (display "\n")
                        (assert x7752))))
                    (g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1073 59))
                        (display "\n")
                        (assert x7753))))
                    (g7751
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
                       ((g7754
                         (begin
                           (write '(funapp 1079 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7755 res))
                       g7755))))
                   g7751)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7756
                     (begin
                       (write '(funapp 1082 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1082 57))
                          (display "\n")
                          '())))))
                   g7756)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 1086 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1086 58))
                        (display "\n")
                        (assert x7760))))
                    (g7758
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7761))))
                    (g7759
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1090 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7762
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1092 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7762))))
                   g7759)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7764
                        (letrec*
                         ((x7765
                           (begin
                             (write '(funapp 1100 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1100 58))
                           (display "\n")
                           (car x7765)))))
                      (begin
                        (write '(funapp 1101 23))
                        (display "\n")
                        (cdr x7764)))))
                   g7763)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7767
                        (letrec*
                         ((x7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1110 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1110 61))
                              (display "\n")
                              (cdr x7769)))))
                         (begin
                           (write '(funapp 1111 26))
                           (display "\n")
                           (car x7768)))))
                      (begin
                        (write '(funapp 1112 23))
                        (display "\n")
                        (cdr x7767)))))
                   g7766)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (begin
                             (write '(funapp 1120 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1120 58))
                           (display "\n")
                           (cdr x7772)))))
                      (begin
                        (write '(funapp 1121 23))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7774
                        (letrec*
                         ((x7775
                           (begin
                             (write '(funapp 1128 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1128 58))
                           (display "\n")
                           (car x7775)))))
                      (begin
                        (write '(funapp 1129 23))
                        (display "\n")
                        (car x7774)))))
                   g7773)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1134 58))
                        (display "\n")
                        (assert x7779))))
                    (g7777
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c2))))
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
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1136 66))
                        (display "\n")
                        (not x7781)))))
                   g7778)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7783
                        (letrec*
                         ((x7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (car x7785)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (car x7784)))))
                      (begin
                        (write '(funapp 1148 23))
                        (display "\n")
                        (car x7783)))))
                   g7782)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1153 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1153 59))
                        (display "\n")
                        (assert x7788))))
                    (g7787
                     (begin (write '(funapp 1154 28)) (display "\n") (< x 0))))
                   g7787)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7789
                     (begin
                       (write '(funapp 1156 53))
                       (display "\n")
                       (memq e l))))
                   g7789)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7791
                        (letrec*
                         ((x7792
                           (begin
                             (write '(funapp 1162 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1162 58))
                           (display "\n")
                           (car x7792)))))
                      (begin
                        (write '(funapp 1163 23))
                        (display "\n")
                        (car x7791)))))
                   g7790)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7793
                     (begin (write '(funapp 1165 51)) (display "\n") '())))
                   g7793)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1169 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1169 57))
                        (display "\n")
                        (assert x7796))))
                    (g7795
                     (letrec*
                      ((x-cnd7797
                        (begin
                          (write '(funapp 1172 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7797
                        (begin (write '(funapp 1174 24)) (display "\n") '())
                        (letrec*
                         ((x7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1176 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1176 61))
                              (display "\n")
                              (reverse x7801))))
                          (x7798
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (list x7799)))))
                         (begin
                           (write '(funapp 1178 26))
                           (display "\n")
                           (append x7800 x7798)))))))
                   g7795)))
               (caaadr
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
                                (write '(funapp 1187 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1187 61))
                              (display "\n")
                              (car x7805)))))
                         (begin
                           (write '(funapp 1188 26))
                           (display "\n")
                           (car x7804)))))
                      (begin
                        (write '(funapp 1189 23))
                        (display "\n")
                        (car x7803)))))
                   g7802)))
               (cddadr
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
                                (write '(funapp 1198 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1198 61))
                              (display "\n")
                              (car x7809)))))
                         (begin
                           (write '(funapp 1199 26))
                           (display "\n")
                           (cdr x7808)))))
                      (begin
                        (write '(funapp 1200 23))
                        (display "\n")
                        (cdr x7807)))))
                   g7806)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1205 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1205 59))
                        (display "\n")
                        (assert x7812))))
                    (g7811
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1206 60))
                        (display "\n")
                        (= 1 x7813)))))
                   g7811)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x7815
                        (letrec*
                         ((x7816
                           (letrec*
                            ((x7817
                              (begin
                                (write '(funapp 1215 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1215 61))
                              (display "\n")
                              (cdr x7817)))))
                         (begin
                           (write '(funapp 1216 26))
                           (display "\n")
                           (car x7816)))))
                      (begin
                        (write '(funapp 1217 23))
                        (display "\n")
                        (car x7815)))))
                   g7814)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1223 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1223 59))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1224 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1224 60))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x-cnd7823
                        (begin
                          (write '(funapp 1227 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7823
                        (letrec*
                         ((g7824
                           (begin
                             (write '(funapp 1229 42))
                             (display "\n")
                             (proc))))
                         g7824)
                        (letrec*
                         ((x-cnd7825
                           (letrec*
                            ((x7826
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1232 58))
                              (display "\n")
                              (null? x7826)))))
                         (if x-cnd7825
                           (letrec*
                            ((g7827
                              (letrec*
                               ((x7828
                                 (begin
                                   (write '(funapp 1236 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1236 61))
                                 (display "\n")
                                 (proc x7828)))))
                            g7827)
                           (letrec*
                            ((x-cnd7829
                              (letrec*
                               ((x7830
                                 (begin
                                   (write '(funapp 1240 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1240 62))
                                 (display "\n")
                                 (null? x7830)))))
                            (if x-cnd7829
                              (letrec*
                               ((g7831
                                 (letrec*
                                  ((x7833
                                    (begin
                                      (write '(funapp 1245 43))
                                      (display "\n")
                                      (car args)))
                                   (x7832
                                    (begin
                                      (write '(funapp 1245 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1246 35))
                                    (display "\n")
                                    (proc x7833 x7832)))))
                               g7831)
                              (letrec*
                               ((x-cnd7834
                                 (letrec*
                                  ((x7835
                                    (begin
                                      (write '(funapp 1251 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1252 35))
                                    (display "\n")
                                    (null? x7835)))))
                               (if x-cnd7834
                                 (letrec*
                                  ((g7836
                                    (letrec*
                                     ((x7839
                                       (begin
                                         (write '(funapp 1257 46))
                                         (display "\n")
                                         (car args)))
                                      (x7838
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7837
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1260 38))
                                       (display "\n")
                                       (proc x7839 x7838 x7837)))))
                                  g7836)
                                 (letrec*
                                  ((x-cnd7840
                                    (letrec*
                                     ((x7841
                                       (begin
                                         (write '(funapp 1265 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1266 38))
                                       (display "\n")
                                       (null? x7841)))))
                                  (if x-cnd7840
                                    (letrec*
                                     ((g7842
                                       (letrec*
                                        ((x7846
                                          (begin
                                            (write '(funapp 1271 49))
                                            (display "\n")
                                            (car args)))
                                         (x7845
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7844
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7843
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1275 41))
                                          (display "\n")
                                          (proc x7846 x7845 x7844 x7843)))))
                                     g7842)
                                    (letrec*
                                     ((x-cnd7847
                                       (letrec*
                                        ((x7848
                                          (letrec*
                                           ((x7849
                                             (begin
                                               (write '(funapp 1282 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1283 44))
                                             (display "\n")
                                             (cdr x7849)))))
                                        (begin
                                          (write '(funapp 1284 41))
                                          (display "\n")
                                          (null? x7848)))))
                                     (if x-cnd7847
                                       (letrec*
                                        ((g7850
                                          (letrec*
                                           ((x7856
                                             (begin
                                               (write '(funapp 1289 52))
                                               (display "\n")
                                               (car args)))
                                            (x7855
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7854
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7853
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7851
                                             (letrec*
                                              ((x7852
                                                (begin
                                                  (write '(funapp 1295 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1296 47))
                                                (display "\n")
                                                (car x7852)))))
                                           (begin
                                             (write '(funapp 1297 44))
                                             (display "\n")
                                             (proc
                                              x7856
                                              x7855
                                              x7854
                                              x7853
                                              x7851)))))
                                        g7850)
                                       (letrec*
                                        ((x-cnd7857
                                          (letrec*
                                           ((x7858
                                             (letrec*
                                              ((x7859
                                                (begin
                                                  (write '(funapp 1309 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1310 47))
                                                (display "\n")
                                                (cddr x7859)))))
                                           (begin
                                             (write '(funapp 1311 44))
                                             (display "\n")
                                             (null? x7858)))))
                                        (if x-cnd7857
                                          (letrec*
                                           ((g7860
                                             (letrec*
                                              ((x7868
                                                (begin
                                                  (write '(funapp 1316 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7867
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7866
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7865
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7863
                                                (letrec*
                                                 ((x7864
                                                   (begin
                                                     (write '(funapp 1322 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1323 50))
                                                   (display "\n")
                                                   (car x7864))))
                                               (x7861
                                                (letrec*
                                                 ((x7862
                                                   (begin
                                                     (write '(funapp 1326 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1327 50))
                                                   (display "\n")
                                                   (cadr x7862)))))
                                              (begin
                                                (write '(funapp 1328 47))
                                                (display "\n")
                                                (proc
                                                 x7868
                                                 x7867
                                                 x7866
                                                 x7865
                                                 x7863
                                                 x7861)))))
                                           g7860)
                                          (letrec*
                                           ((x-cnd7869
                                             (letrec*
                                              ((x7870
                                                (letrec*
                                                 ((x7871
                                                   (begin
                                                     (write '(funapp 1341 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1342 50))
                                                   (display "\n")
                                                   (cdddr x7871)))))
                                              (begin
                                                (write '(funapp 1343 47))
                                                (display "\n")
                                                (null? x7870)))))
                                           (if x-cnd7869
                                             (letrec*
                                              ((g7872
                                                (letrec*
                                                 ((x7882
                                                   (begin
                                                     (write '(funapp 1348 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7881
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7880
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7879
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7877
                                                   (letrec*
                                                    ((x7878
                                                      (begin
                                                        (write
                                                         '(funapp 1354 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1355 53))
                                                      (display "\n")
                                                      (car x7878))))
                                                  (x7875
                                                   (letrec*
                                                    ((x7876
                                                      (begin
                                                        (write
                                                         '(funapp 1358 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1359 53))
                                                      (display "\n")
                                                      (cadr x7876))))
                                                  (x7873
                                                   (letrec*
                                                    ((x7874
                                                      (begin
                                                        (write
                                                         '(funapp 1362 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1363 53))
                                                      (display "\n")
                                                      (caddr x7874)))))
                                                 (begin
                                                   (write '(funapp 1364 50))
                                                   (display "\n")
                                                   (proc
                                                    x7882
                                                    x7881
                                                    x7880
                                                    x7879
                                                    x7877
                                                    x7875
                                                    x7873)))))
                                              g7872)
                                             (letrec*
                                              ((g7883
                                                (begin
                                                  (write '(funapp 1375 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7883)))))))))))))))))))
                   g7820)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1381 57))
                        (display "\n")
                        (assert x7886))))
                    (g7885
                     (letrec*
                      ((x-cnd7887
                        (begin
                          (write '(funapp 1384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7887
                        #f
                        (letrec*
                         ((x-cnd7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1389 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1389 55))
                              (display "\n")
                              (equal? x7889 e)))))
                         (if x-cnd7888
                           l
                           (letrec*
                            ((x7890
                              (begin
                                (write '(funapp 1392 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1392 55))
                              (display "\n")
                              (member e x7890)))))))))
                   g7885)))
               (cddddr
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
                                (write '(funapp 1401 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1401 61))
                              (display "\n")
                              (cdr x7894)))))
                         (begin
                           (write '(funapp 1402 26))
                           (display "\n")
                           (cdr x7893)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (cdr x7892)))))
                   g7891)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7896
                        (letrec*
                         ((x7897
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1412 61))
                              (display "\n")
                              (cdr x7898)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cdr x7897)))))
                      (begin
                        (write '(funapp 1414 23))
                        (display "\n")
                        (car x7896)))))
                   g7895)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7899
                     (begin
                       (write '(funapp 1416 53))
                       (display "\n")
                       (random 42))))
                   g7899)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7902
                        (begin
                          (write '(funapp 1420 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1420 59))
                        (display "\n")
                        (assert x7902))))
                    (g7901
                     (begin (write '(funapp 1421 28)) (display "\n") (= x 0))))
                   g7901)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1428 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7904
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1430 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7904))))
                   g7903)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1436 55))
                        (display "\n")
                        (car x7906)))))
                   g7905)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7908
                           (begin
                             (write '(funapp 1446 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7908
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1448 55))
                              (display "\n")
                              (list? x7909)))
                           #f))))
                      (letrec*
                       ((g7910
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1451 52))
                             (display "\n")
                             (null? l)))))
                       g7910))))
                   g7907)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7912
                        (letrec*
                         ((x7913
                           (letrec*
                            ((x7914
                              (begin
                                (write '(funapp 1461 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1461 61))
                              (display "\n")
                              (car x7914)))))
                         (begin
                           (write '(funapp 1462 26))
                           (display "\n")
                           (cdr x7913)))))
                      (begin
                        (write '(funapp 1463 23))
                        (display "\n")
                        (cdr x7912)))))
                   g7911)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x-cnd7916
                        (letrec*
                         ((x7917 #\0))
                         (begin
                           (write '(funapp 1470 58))
                           (display "\n")
                           (char<=? x7917 c)))))
                      (if x-cnd7916
                        (letrec*
                         ((x7918 #\9))
                         (begin
                           (write '(funapp 1472 48))
                           (display "\n")
                           (char<=? c x7918)))
                        #f))))
                   g7915)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1479 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1479 57))
                        (display "\n")
                        (assert x7921))))
                    (g7920
                     (letrec*
                      ((x-cnd7922
                        (begin
                          (write '(funapp 1482 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7922
                        #f
                        (letrec*
                         ((x-cnd7923
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1487 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1487 56))
                              (display "\n")
                              (eqv? x7924 k)))))
                         (if x-cnd7923
                           (begin
                             (write '(funapp 1489 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1490 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1490 55))
                              (display "\n")
                              (assq k x7925)))))))))
                   g7920)))
               (not (lambda (x) (letrec* ((g7926 (if x #f #t))) g7926)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7927
                     (begin
                       (write '(funapp 1494 50))
                       (display "\n")
                       (append l1 l2))))
                   g7927)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1498 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1498 57))
                        (display "\n")
                        (assert x7930))))
                    (g7929
                     (letrec*
                      ((x-cnd7931
                        (begin
                          (write '(funapp 1501 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7931
                        #f
                        (letrec*
                         ((x-cnd7932
                           (letrec*
                            ((x7933
                              (begin
                                (write '(funapp 1506 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1506 55))
                              (display "\n")
                              (eq? x7933 e)))))
                         (if x-cnd7932
                           l
                           (letrec*
                            ((x7934
                              (begin
                                (write '(funapp 1509 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1509 55))
                              (display "\n")
                              (memq e x7934)))))))))
                   g7929)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7936
                        (letrec*
                         ((x7937
                           (letrec*
                            ((x7938
                              (begin
                                (write '(funapp 1518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1518 61))
                              (display "\n")
                              (car x7938)))))
                         (begin
                           (write '(funapp 1519 26))
                           (display "\n")
                           (cdr x7937)))))
                      (begin
                        (write '(funapp 1520 23))
                        (display "\n")
                        (car x7936)))))
                   g7935)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1525 57))
                        (display "\n")
                        (assert x7941))))
                    (g7940
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7942
                             (letrec*
                              ((x-cnd7943
                                (begin
                                  (write '(funapp 1533 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7943
                                0
                                (letrec*
                                 ((x7944
                                   (letrec*
                                    ((x7945
                                      (begin
                                        (write '(funapp 1538 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1538 63))
                                      (display "\n")
                                      (rec x7945)))))
                                 (begin
                                   (write '(funapp 1539 34))
                                   (display "\n")
                                   (+ 1 x7944)))))))
                           g7942))))
                      (letrec*
                       ((g7946
                         (begin
                           (write '(funapp 1541 40))
                           (display "\n")
                           (rec l))))
                       g7946))))
                   g7940)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1546 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1546 58))
                        (display "\n")
                        (assert x7950))))
                    (g7948
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7951))))
                    (g7949
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1550 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7952
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1552 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7952))))
                   g7949)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1558 65))
                        (display "\n")
                        (not x7954)))))
                   g7953)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7956
                        (letrec*
                         ((x7957
                           (begin
                             (write '(funapp 1565 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1565 58))
                           (display "\n")
                           (car x7957)))))
                      (begin
                        (write '(funapp 1566 23))
                        (display "\n")
                        (cdr x7956)))))
                   g7955)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 1571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1571 57))
                        (display "\n")
                        (assert x7960))))
                    (g7959
                     (letrec*
                      ((x-cnd7961
                        (begin
                          (write '(funapp 1574 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7961
                        #f
                        (letrec*
                         ((x-cnd7962
                           (letrec*
                            ((x7963
                              (begin
                                (write '(funapp 1579 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1579 56))
                              (display "\n")
                              (equal? x7963 k)))))
                         (if x-cnd7962
                           (begin
                             (write '(funapp 1581 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7964
                              (begin
                                (write '(funapp 1582 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1582 55))
                              (display "\n")
                              (assoc k x7964)))))))))
                   g7959)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1587 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1587 55))
                        (display "\n")
                        (car x7966)))))
                   g7965)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c2))))
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
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1594 63))
                        (display "\n")
                        (not x7972)))))
                   g7969)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1601 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7974
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1603 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7974))))
                   g7973)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1609 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1609 62))
                        (display "\n")
                        (assert x7978))))
                    (g7976
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1610 57))
                        (display "\n")
                        (assert x7979))))
                    (g7977
                     (letrec*
                      ((x-cnd7980
                        (begin
                          (write '(funapp 1613 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7980
                        #t
                        (letrec*
                         ((x-cnd7981
                           (begin
                             (write '(funapp 1617 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7981
                           (letrec*
                            ((g7982
                              (letrec*
                               ((x7984
                                 (begin
                                   (write '(funapp 1620 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1620 64))
                                 (display "\n")
                                 (f x7984))))
                             (g7983
                              (letrec*
                               ((x7985
                                 (begin
                                   (write '(funapp 1622 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1622 58))
                                 (display "\n")
                                 (for-each f x7985)))))
                            g7983)
                           (begin
                             (write '(funapp 1624 27))
                             (display "\n")
                             '())))))))
                   g7977)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((x7988
                        (begin
                          (write '(funapp 1629 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1629 59))
                        (display "\n")
                        (assert x7988))))
                    (g7987
                     (letrec*
                      ((x-cnd7989
                        (begin
                          (write '(funapp 1631 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7989
                        (begin
                          (write '(funapp 1631 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7987)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x7993
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1636 58))
                        (display "\n")
                        (assert x7993))))
                    (g7991
                     (letrec*
                      ((x7994
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7994))))
                    (g7992
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1640 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7995
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1642 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7995))))
                   g7992)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x7997
                        (letrec*
                         ((x7998
                           (letrec*
                            ((x7999
                              (begin
                                (write '(funapp 1652 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1652 61))
                              (display "\n")
                              (cdr x7999)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (cdr x7998)))))
                      (begin
                        (write '(funapp 1654 23))
                        (display "\n")
                        (car x7997)))))
                   g7996)))
               (newline (lambda () (letrec* ((g8000 #f)) g8000)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((x8003
                        (letrec*
                         ((x8004
                           (begin
                             (write '(funapp 1662 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1662 58))
                           (display "\n")
                           (abs x8004))))
                       (x8002
                        (begin
                          (write '(funapp 1663 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1664 23))
                        (display "\n")
                        (/ x8003 x8002)))))
                   g8001)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((x8009
                        (begin
                          (write '(funapp 1670 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (assert x8009))))
                    (g8006
                     (letrec*
                      ((x8010
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1671 63))
                        (display "\n")
                        (assert x8010))))
                    (g8007
                     (letrec*
                      ((x8011
                        (letrec*
                         ((x8012
                           (begin
                             (write '(funapp 1674 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1674 61))
                           (display "\n")
                           (< index x8012)))))
                      (begin
                        (write '(funapp 1675 23))
                        (display "\n")
                        (assert x8011))))
                    (g8008
                     (letrec*
                      ((x-cnd8013
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8013
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8015
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (cdr l)))
                          (x8014
                           (begin
                             (write '(funapp 1682 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1683 26))
                           (display "\n")
                           (list-ref x8015 x8014)))))))
                   g8008)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8016
                     (letrec*
                      ((x-cnd8017
                        (begin
                          (write '(funapp 1690 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8017
                        a
                        (letrec*
                         ((x8018
                           (begin
                             (write '(funapp 1693 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1693 57))
                           (display "\n")
                           (gcd b x8018)))))))
                   g8016)))
               (f
                (lambda (g)
                  (letrec*
                   ((g8019
                     (lambda (x y)
                       (letrec*
                        ((g8020
                          (letrec*
                           ((x8022
                             (begin
                               (write '(funapp 1703 36))
                               (display "\n")
                               (+ x 1)))
                            (x8021
                             (begin
                               (write '(funapp 1703 52))
                               (display "\n")
                               (+ y 1))))
                           (begin
                             (write '(funapp 1704 28))
                             (display "\n")
                             (g x8022 x8021)))))
                        g8020))))
                   g8019)))
               (unzip
                (lambda (x k)
                  (letrec*
                   ((g8023
                     (letrec*
                      ((x-cnd8024
                        (begin
                          (write '(funapp 1712 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd8024
                        (begin
                          (write '(funapp 1714 25))
                          (display "\n")
                          (k 0 0))
                        (letrec*
                         ((x8026
                           (begin
                             (write '(funapp 1716 34))
                             (display "\n")
                             (- x 1)))
                          (x8025
                           (begin
                             (write '(funapp 1716 50))
                             (display "\n")
                             (f k))))
                         (begin
                           (write '(funapp 1717 26))
                           (display "\n")
                           (unzip x8026 x8025)))))))
                   g8023)))
               (zip
                (lambda (x y)
                  (letrec*
                   ((g8027
                     (letrec*
                      ((x-cnd8028
                        (begin
                          (write '(funapp 1724 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd8028
                        (letrec*
                         ((x-cnd8029
                           (begin
                             (write '(funapp 1726 46))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd8029
                           0
                           (begin
                             (write '(funapp 1726 71))
                             (display "\n")
                             'fail)))
                        (letrec*
                         ((x-cnd8030
                           (begin
                             (write '(funapp 1728 38))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd8030
                           (begin
                             (write '(funapp 1730 27))
                             (display "\n")
                             'fail)
                           (letrec*
                            ((x8031
                              (letrec*
                               ((x8033
                                 (begin
                                   (write '(funapp 1734 40))
                                   (display "\n")
                                   (- x 1)))
                                (x8032
                                 (begin
                                   (write '(funapp 1734 56))
                                   (display "\n")
                                   (- y 1))))
                               (begin
                                 (write '(funapp 1735 32))
                                 (display "\n")
                                 (zip x8033 x8032)))))
                            (begin
                              (write '(funapp 1736 29))
                              (display "\n")
                              (+ 1 x8031)))))))))
                   g8027)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8034
                     (begin
                       (write '(funapp 1738 51))
                       (display "\n")
                       (unzip n zip))))
                   g8034))))
              (letrec*
               ((g8035
                 (begin
                   (write '(funapp 1741 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1742 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8037
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1746 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1746 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1746 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1746 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8038
                              (begin
                                (write '(funapp 1749 27))
                                (display "\n")
                                ((lambda (j7405 k7406 f7407)
                                   (letrec*
                                    ((g8039
                                      (lambda (g7404)
                                        (letrec*
                                         ((g8040
                                           (letrec*
                                            ((x8041
                                              (letrec*
                                               ((x8042
                                                 (begin
                                                   (write '(funapp 1759 44))
                                                   (display "\n")
                                                   ((lambda (j7415 k7416 f7417)
                                                      (letrec*
                                                       ((g8043
                                                         (lambda (g7413 g7414)
                                                           (letrec*
                                                            ((g8044
                                                              (letrec*
                                                               ((x8045
                                                                 (letrec*
                                                                  ((x8047
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1769
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (integer?/c
                                                                       j7415
                                                                       k7416
                                                                       g7413)))
                                                                   (x8046
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1774
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
                                                                       1778
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7417
                                                                     x8047
                                                                     x8046)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1781
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7415
                                                                  k7416
                                                                  x8045)))))
                                                            g8044))))
                                                       g8043))
                                                    j7405
                                                    k7406
                                                    g7404))))
                                               (begin
                                                 (write '(funapp 1790 42))
                                                 (display "\n")
                                                 (f7407 x8042)))))
                                            (begin
                                              (write '(funapp 1791 39))
                                              (display "\n")
                                              ((lambda (j7410 k7411 f7412)
                                                 (letrec*
                                                  ((g8048
                                                    (lambda (g7408 g7409)
                                                      (letrec*
                                                       ((g8049
                                                         (letrec*
                                                          ((x8050
                                                            (letrec*
                                                             ((x8052
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1801
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7410
                                                                  k7411
                                                                  g7408)))
                                                              (x8051
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1806
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7410
                                                                  k7411
                                                                  g7409))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1810
                                                                  54))
                                                               (display "\n")
                                                               (f7412
                                                                x8052
                                                                x8051)))))
                                                          (begin
                                                            (write
                                                             '(funapp 1811 51))
                                                            (display "\n")
                                                            (integer?/c
                                                             j7410
                                                             k7411
                                                             x8050)))))
                                                       g8049))))
                                                  g8048))
                                               j7405
                                               k7406
                                               x8041)))))
                                         g8040))))
                                    g8039))
                                 xj7402
                                 xk7403
                                 f))))
                            g8038)))
                         (x8036 (input)))
                        (begin
                          (write '(funapp 1827 21))
                          (display "\n")
                          (x8037 x8036)))
                       (letrec*
                        ((x8054
                          (letrec*
                           ((xj7418
                             (begin
                               (write '(funapp 1831 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1831 37))
                                  (display "\n")
                                  'module))))
                            (xk7419
                             (begin
                               (write '(funapp 1831 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1831 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8055
                              (begin
                                (write '(funapp 1834 27))
                                (display "\n")
                                ((lambda (j7421 k7422 f7423)
                                   (letrec*
                                    ((g8056
                                      (lambda (g7420)
                                        (letrec*
                                         ((g8057
                                           (letrec*
                                            ((x8058
                                              (letrec*
                                               ((x8059
                                                 (begin
                                                   (write '(funapp 1844 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7421
                                                    k7422
                                                    g7420))))
                                               (begin
                                                 (write '(funapp 1845 42))
                                                 (display "\n")
                                                 (f7423 x8059)))))
                                            (begin
                                              (write '(funapp 1846 39))
                                              (display "\n")
                                              (integer?/c
                                               j7421
                                               k7422
                                               x8058)))))
                                         g8057))))
                                    g8056))
                                 xj7418
                                 xk7419
                                 main))))
                            g8055)))
                         (x8053 (input)))
                        (begin
                          (write '(funapp 1854 21))
                          (display "\n")
                          (x8054 x8053)))))))))
               g8035))))
           g7452))))
       g7435)))
    g7434)))
