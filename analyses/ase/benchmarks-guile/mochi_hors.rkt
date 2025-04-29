(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7408 #t)) g7408)))
    (meta (lambda (v) (letrec* ((g7409 v)) g7409)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7410
          (letrec*
           ((g7411
             (letrec*
              ((x-e7412 lst))
              (letrec*
               ((v1742 x-e7412))
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
                   ((x-cnd7413
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7413
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
           g7411)))
        g7410)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7414 (lambda (v) (letrec* ((g7415 v)) g7415)))) g7414)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7416
          (letrec*
           ((x7417 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7417)))))
        g7416))))
   (letrec*
    ((g7418
      (letrec*
       ((g7419
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7420
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7420)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7421
                 (letrec*
                  ((x7423
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7423))))
                (g7422
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7424
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7425 (if val7245 val7245 #f))) g7425)))))
                   g7424))))
               g7422)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7426
                 (letrec*
                  ((x7428
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7428))))
                (g7427
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7429
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7430 (if val7247 val7247 #f))) g7430)))))
                   g7429))))
               g7427)))
           (>
            (lambda (x y)
              (letrec*
               ((g7431
                 (letrec*
                  ((x7433
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7433))))
                (g7432
                 (letrec*
                  ((x7434
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7434)))))
               g7432)))
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
           ((g7435 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7436
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7437
                     (lambda (k j lst)
                       (letrec*
                        ((g7438
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7439
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7439))
                             lst))))
                        g7438))))
                   g7437)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x-cnd7441
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7441
                        g7265
                        (begin
                          (write '(blame g7263 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7440)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7443
                        g7268
                        (begin
                          (write '(blame g7266 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7442)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7445
                        g7271
                        (begin
                          (write '(blame g7269 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7444)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7448 #t)) g7448)) g7274))))
                      (if x-cnd7447
                        g7274
                        (begin
                          (write '(blame g7272 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7446)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7451 #t)) g7451)) g7277))))
                      (if x-cnd7450
                        g7277
                        (begin
                          (write '(blame g7275 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7449)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7453
                        g7280
                        (begin
                          (write '(blame g7278 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7452)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7454
                     (lambda (k j v)
                       (letrec*
                        ((g7455
                          (letrec*
                           ((x7458
                             (letrec*
                              ((x7459
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7459))))
                            (x7456
                             (letrec*
                              ((x7457
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7457)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7458 x7456)))))
                        g7455))))
                   g7454)))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7461
                        g7283
                        (begin
                          (write '(blame g7281 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7460)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x-cnd7463
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7463
                        g7286
                        (begin
                          (write '(blame g7284 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7462)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x-cnd7465
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7465
                        g7289
                        (begin
                          (write '(blame g7287 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7464)))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x-cnd7467
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7292))))
                      (if x-cnd7467
                        g7292
                        (begin
                          (write '(blame g7290 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7466)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7468
                     (lambda (k j v)
                       (letrec*
                        ((g7469
                          (letrec*
                           ((x-cnd7470
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7470
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7469))))
                   g7468)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7471
                     (lambda (k j v)
                       (letrec*
                        ((g7472
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7473
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7473))))
                        g7472))))
                   g7471)))
               (null?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x-cnd7475
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7295))))
                      (if x-cnd7475
                        g7295
                        (begin
                          (write '(blame g7293 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7474)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7476
                     (lambda (k j v)
                       (letrec*
                        ((g7477
                          (letrec*
                           ((x-cnd7478
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7478
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7482
                                (letrec*
                                 ((x7483
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7483))))
                               (x7479
                                (letrec*
                                 ((x7481
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7480
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7481 k j x7480)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7482 x7479)))))))
                        g7477))))
                   g7476)))
               (any? (lambda (v) (letrec* ((g7484 #t)) g7484)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7485
                     (letrec*
                      ((x7486
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7486)))))
                   g7485)))
               (nonzero?/c
                (lambda (g7296 g7297 g7298)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x-cnd7488
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7489
                                (letrec*
                                 ((x7490
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7490)))))
                              g7489))
                           g7298))))
                      (if x-cnd7488
                        g7298
                        (begin
                          (write '(blame g7296 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7296)))))))
                   g7487)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7491
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7492
                          (letrec*
                           ((x-cnd7493
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7494
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7494))
                                g7301))))
                           (if x-cnd7493
                             g7301
                             (begin
                               (write '(blame g7299 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7492))))
                   g7491)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7495
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7496
                          (letrec*
                           ((x-cnd7497
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7498
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7498))
                                g7304))))
                           (if x-cnd7497
                             g7304
                             (begin
                               (write '(blame g7302 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7496))))
                   g7495)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7499
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7500
                          (letrec*
                           ((x-cnd7501
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7502
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7502))
                                g7307))))
                           (if x-cnd7501
                             g7307
                             (begin
                               (write '(blame g7305 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7500))))
                   g7499)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7503
                     (lambda (g7308 g7309 g7310)
                       (letrec*
                        ((g7504
                          (letrec*
                           ((x-cnd7505
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7506
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7506))
                                g7310))))
                           (if x-cnd7505
                             g7310
                             (begin
                               (write '(blame g7308 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7504))))
                   g7503)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7507
                     (lambda (g7311 g7312 g7313)
                       (letrec*
                        ((g7508
                          (letrec*
                           ((x-cnd7509
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7510
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7510))
                                g7313))))
                           (if x-cnd7509
                             g7313
                             (begin
                               (write '(blame g7311 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7311)))))))
                        g7508))))
                   g7507)))
               (meta (lambda (v) (letrec* ((g7511 v)) g7511)))
               (+
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7512
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7514
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7515
                                 (letrec*
                                  ((x7516
                                    (letrec*
                                     ((x7518
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7517
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7320 x7518 x7517)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7516)))))
                               g7515))))
                          g7514))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7513
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7513))))))
                  g7512)))
               (-
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7519
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7521
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7522
                                 (letrec*
                                  ((x7523
                                    (letrec*
                                     ((x7525
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7524
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7327 x7525 x7524)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7523)))))
                               g7522))))
                          g7521))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7520
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7520))))))
                  g7519)))
               (*
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7526
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7528
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7529
                                 (letrec*
                                  ((x7530
                                    (letrec*
                                     ((x7532
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7531
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7334 x7532 x7531)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7332 k7333 x7530)))))
                               g7529))))
                          g7528))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7527
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7527))))))
                  g7526)))
               (<
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7533
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7535
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7536
                                 (letrec*
                                  ((x7537
                                    (letrec*
                                     ((x7539
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7538
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7341 x7539 x7538)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7537)))))
                               g7536))))
                          g7535))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7534
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7534))))))
                  g7533)))
               (>
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7540
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7542
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7543
                                 (letrec*
                                  ((x7544
                                    (letrec*
                                     ((x7546
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7545
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7348 x7546 x7545)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7544)))))
                               g7543))))
                          g7542))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7541
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7541))))))
                  g7540)))
               (<=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7547
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7549
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7550
                                 (letrec*
                                  ((x7551
                                    (letrec*
                                     ((x7553
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7552
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7355 x7553 x7552)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7551)))))
                               g7550))))
                          g7549))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7548
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7548))))))
                  g7547)))
               (>=
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7554
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7556
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7557
                                 (letrec*
                                  ((x7558
                                    (letrec*
                                     ((x7560
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7559
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7362 x7560 x7559)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7360 k7361 x7558)))))
                               g7557))))
                          g7556))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7555
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7555))))))
                  g7554)))
               (add1
                (lambda (x)
                  (letrec*
                   ((g7561
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7561)))
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7562
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7562)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7563
                    (begin
                      (write '(funapp 552 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7565
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7566
                                 (letrec*
                                  ((x7567
                                    (letrec*
                                     ((x7569
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7568
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7369 x7569 x7568)))))
                                  (begin
                                    (write '(funapp 564 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7567)))))
                               g7566))))
                          g7565))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7564
                            (begin
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7564))))))
                  g7563)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7570
                    (begin
                      (write '(funapp 576 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7572
                            (lambda (g7372)
                              (letrec*
                               ((g7573
                                 (letrec*
                                  ((x7574
                                    (letrec*
                                     ((x7575
                                       (begin
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7375 x7575)))))
                                  (begin
                                    (write '(funapp 587 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7574)))))
                               g7573))))
                          g7572))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7571
                            (begin
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7571))))))
                  g7570)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7576
                    (begin
                      (write '(funapp 599 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7578
                            (lambda (g7378)
                              (letrec*
                               ((g7579
                                 (letrec*
                                  ((x7580
                                    (letrec*
                                     ((x7581
                                       (begin
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7381 x7581)))))
                                  (begin
                                    (write '(funapp 610 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7580)))))
                               g7579))))
                          g7578))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7577
                            (begin
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7577))))))
                  g7576)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7582
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7584
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7585
                                 (letrec*
                                  ((x7586
                                    (letrec*
                                     ((x7588
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7587
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7388 x7588 x7587)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7586)))))
                               g7585))))
                          g7584))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7583
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7583))))))
                  g7582)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7589
                    (begin
                      (write '(funapp 647 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7591
                            (lambda (g7391)
                              (letrec*
                               ((g7592
                                 (letrec*
                                  ((x7593
                                    (letrec*
                                     ((x7594
                                       (begin
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7394 x7594)))))
                                  (begin
                                    (write '(funapp 658 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7593)))))
                               g7592))))
                          g7591))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7590
                            (begin
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7590))))))
                  g7589)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7595
                    (begin
                      (write '(funapp 671 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7597
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7598
                                 (letrec*
                                  ((x7599
                                    (letrec*
                                     ((x7601
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7600
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7401 x7601 x7600)))))
                                  (begin
                                    (write '(funapp 683 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7599)))))
                               g7598))))
                          g7597))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7596
                            (begin
                              (write '(funapp 689 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7596))))))
                  g7595)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7603
                        (letrec*
                         ((x7604
                           (begin
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7604)))))
                      (begin
                        (write '(funapp 697 23))
                        (display "\n")
                        (cdr x7603)))))
                   g7602)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7608
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7608))))
                    (g7606
                     (letrec*
                      ((x7609
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7609))))
                    (g7607
                     (letrec*
                      ((x-cnd7610
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7610
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7613
                           (letrec*
                            ((x7614
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7614))))
                          (x7611
                           (letrec*
                            ((x7612
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7612)))))
                         (begin
                           (write '(funapp 713 26))
                           (display "\n")
                           (cons x7613 x7611)))))))
                   g7607)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
                        (display "\n")
                        (cdr x7616)))))
                   g7615)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7618
                        (letrec*
                         ((x7619
                           (letrec*
                            ((x7620
                              (begin
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7620)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7619)))))
                      (begin
                        (write '(funapp 729 23))
                        (display "\n")
                        (car x7618)))))
                   g7617)))
               (cdadar
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
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7624)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7623)))))
                      (begin
                        (write '(funapp 740 23))
                        (display "\n")
                        (cdr x7622)))))
                   g7621)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x7628))))
                    (g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x7629))))
                    (g7627
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
                       ((g7630
                         (begin
                           (write '(funapp 754 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7631 res))
                       g7631))))
                   g7627)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7633
                        (letrec*
                         ((x7634
                           (begin
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x7634)))))
                      (begin
                        (write '(funapp 763 23))
                        (display "\n")
                        (car x7633)))))
                   g7632)))
               (cdaadr
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
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x7638)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x7637)))))
                      (begin
                        (write '(funapp 774 23))
                        (display "\n")
                        (cdr x7636)))))
                   g7635)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x7641))))
                    (g7640
                     (letrec*
                      ((x-cnd7642
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7642
                        #f
                        (letrec*
                         ((x-cnd7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x7644 k)))))
                         (if x-cnd7643
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
                              (display "\n")
                              (assq k x7645)))))))))
                   g7640)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
                        (display "\n")
                        (= 0 x7647)))))
                   g7646)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x7650))))
                    (g7649
                     (letrec*
                      ((x-cnd7651
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7651
                        ""
                        (letrec*
                         ((x7654
                           (letrec*
                            ((x7655
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x7655))))
                          (x7652
                           (letrec*
                            ((x7653
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x7653)))))
                         (begin
                           (write '(funapp 811 26))
                           (display "\n")
                           (string-append x7654 x7652)))))))
                   g7649)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7661
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7661))))
                   g7658)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7663
                        (letrec*
                         ((x7664
                           (letrec*
                            ((x7665
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7665)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x7664)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7663)))))
                   g7662)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x7669
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7669))))
                    (g7667
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x7670))))
                    (g7668
                     (letrec*
                      ((x-cnd7671
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7671
                        x
                        (letrec*
                         ((x7673
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x7672
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x7673 x7672)))))))
                   g7668)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7674
                     (begin (write '(funapp 850 49)) (display "\n") '())))
                   g7674)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x-cnd7676
                        (letrec*
                         ((x7677 #\a))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x7677)))))
                      (if x-cnd7676
                        (letrec*
                         ((x7678 #\z))
                         (begin
                           (write '(funapp 859 48))
                           (display "\n")
                           (char-ci<=? c x7678)))
                        #f))))
                   g7675)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7679
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7680
                           (begin
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
                           (display "\n")
                           (= x7680 9)))))
                      (letrec*
                       ((g7681
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7682
                                 (begin
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x7682 10)))))
                            (letrec*
                             ((g7683
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7684
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
                                    (display "\n")
                                    (= x7684 32))))))
                             g7683)))))
                       g7681))))
                   g7679)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7685
                     (letrec*
                      ((x7686
                        (letrec*
                         ((x7687
                           (begin
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x7687)))))
                      (begin
                        (write '(funapp 894 23))
                        (display "\n")
                        (cdr x7686)))))
                   g7685)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7688
                     (letrec*
                      ((x7690
                        (begin
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x7690))))
                    (g7689
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g7689)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7691
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g7691)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7692 #f)) g7692)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((x7694
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
                        (display "\n")
                        (cdr x7694)))))
                   g7693)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7695
                     (letrec*
                      ((x7697
                        (begin
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x7697))))
                    (g7696
                     (letrec*
                      ((x-cnd7698
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7698
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g7696)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7699
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7700
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7701
                                 (begin
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7701
                                 (begin
                                   (write '(funapp 935 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7702
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7703
                                       (begin
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7703
                                       (letrec*
                                        ((x-cnd7704
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7704
                                          (begin
                                            (write '(funapp 947 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7705
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7706
                                             (begin
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7706
                                             (letrec*
                                              ((x-cnd7707
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7707
                                                (letrec*
                                                 ((x-cnd7708
                                                   (letrec*
                                                    ((x7710
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7709
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x7710 x7709)))))
                                                 (if x-cnd7708
                                                   (letrec*
                                                    ((x7712
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7711
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
                                                      (display "\n")
                                                      (equal? x7712 x7711)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7713
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7714
                                                (begin
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7714
                                                (letrec*
                                                 ((x-cnd7715
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7715
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7716
                                                       (letrec*
                                                        ((x-cnd7717
                                                          (letrec*
                                                           ((x7718
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
                                                             (= x7718 n)))))
                                                        (if x-cnd7717
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7719
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
                                                                    ((g7720
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7721
                                                                           (letrec*
                                                                            ((x7723
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
                                                                             (x7722
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
                                                                               x7723
                                                                               x7722)))))
                                                                         (if x-cnd7721
                                                                           (letrec*
                                                                            ((x7724
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
                                                                               x7724)))
                                                                           #f)))))
                                                                    g7720))))
                                                                g7719))))
                                                           (letrec*
                                                            ((g7725
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7725))
                                                          #f))))
                                                     g7716))
                                                   #f))
                                                #f)))))
                                         g7713)))))
                                   g7705)))))
                             g7702)))))
                       g7700))))
                   g7699)))
               (cdaaar
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
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x7729)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x7728)))))
                      (begin
                        (write '(funapp 1055 23))
                        (display "\n")
                        (cdr x7727)))))
                   g7726)))
               (caaddr
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
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x7733)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x7732)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x7731)))))
                   g7730)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7734
                     (begin
                       (write '(funapp 1068 53))
                       (display "\n")
                       (eq? x y))))
                   g7734)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x7738))))
                    (g7736
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x7739))))
                    (g7737
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
                       ((g7740
                         (begin
                           (write '(funapp 1081 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7741 res))
                       g7741))))
                   g7737)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7742
                     (begin
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
                          (display "\n")
                          '())))))
                   g7742)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7746))))
                    (g7744
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7747))))
                    (g7745
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7748
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7748))))
                   g7745)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (letrec*
                         ((x7751
                           (begin
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x7751)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (cdr x7750)))))
                   g7749)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7753
                        (letrec*
                         ((x7754
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x7755)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x7754)))))
                      (begin
                        (write '(funapp 1114 23))
                        (display "\n")
                        (cdr x7753)))))
                   g7752)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (letrec*
                         ((x7758
                           (begin
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x7758)))))
                      (begin
                        (write '(funapp 1123 23))
                        (display "\n")
                        (car x7757)))))
                   g7756)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (begin
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x7761)))))
                      (begin
                        (write '(funapp 1131 23))
                        (display "\n")
                        (car x7760)))))
                   g7759)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7765))))
                    (g7763
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x7766))))
                    (g7764
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
                        (display "\n")
                        (not x7767)))))
                   g7764)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7769
                        (letrec*
                         ((x7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x7771)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x7770)))))
                      (begin
                        (write '(funapp 1150 23))
                        (display "\n")
                        (car x7769)))))
                   g7768)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x7774))))
                    (g7773
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g7773)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7775
                     (begin
                       (write '(funapp 1158 53))
                       (display "\n")
                       (memq e l))))
                   g7775)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7777
                        (letrec*
                         ((x7778
                           (begin
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x7778)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7779
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g7779)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x7782))))
                    (g7781
                     (letrec*
                      ((x-cnd7783
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7783
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x7786
                           (letrec*
                            ((x7787
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x7787))))
                          (x7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x7785)))))
                         (begin
                           (write '(funapp 1180 26))
                           (display "\n")
                           (append x7786 x7784)))))))
                   g7781)))
               (caaadr
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
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x7791)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x7790)))))
                      (begin
                        (write '(funapp 1191 23))
                        (display "\n")
                        (car x7789)))))
                   g7788)))
               (cddadr
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
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x7795)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x7794)))))
                      (begin
                        (write '(funapp 1202 23))
                        (display "\n")
                        (cdr x7793)))))
                   g7792)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x7798))))
                    (g7797
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
                        (display "\n")
                        (= 1 x7799)))))
                   g7797)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7801
                        (letrec*
                         ((x7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x7803)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x7802)))))
                      (begin
                        (write '(funapp 1219 23))
                        (display "\n")
                        (car x7801)))))
                   g7800)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x7807))))
                    (g7805
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x7808))))
                    (g7806
                     (letrec*
                      ((x-cnd7809
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7809
                        (letrec*
                         ((g7810
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g7810)
                        (letrec*
                         ((x-cnd7811
                           (letrec*
                            ((x7812
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x7812)))))
                         (if x-cnd7811
                           (letrec*
                            ((g7813
                              (letrec*
                               ((x7814
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x7814)))))
                            g7813)
                           (letrec*
                            ((x-cnd7815
                              (letrec*
                               ((x7816
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x7816)))))
                            (if x-cnd7815
                              (letrec*
                               ((g7817
                                 (letrec*
                                  ((x7819
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x7818
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x7819 x7818)))))
                               g7817)
                              (letrec*
                               ((x-cnd7820
                                 (letrec*
                                  ((x7821
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x7821)))))
                               (if x-cnd7820
                                 (letrec*
                                  ((g7822
                                    (letrec*
                                     ((x7825
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x7824
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7823
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x7825 x7824 x7823)))))
                                  g7822)
                                 (letrec*
                                  ((x-cnd7826
                                    (letrec*
                                     ((x7827
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x7827)))))
                                  (if x-cnd7826
                                    (letrec*
                                     ((g7828
                                       (letrec*
                                        ((x7832
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x7831
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7830
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7829
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
                                          (display "\n")
                                          (proc x7832 x7831 x7830 x7829)))))
                                     g7828)
                                    (letrec*
                                     ((x-cnd7833
                                       (letrec*
                                        ((x7834
                                          (letrec*
                                           ((x7835
                                             (begin
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x7835)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x7834)))))
                                     (if x-cnd7833
                                       (letrec*
                                        ((g7836
                                          (letrec*
                                           ((x7842
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x7841
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7840
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7839
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7837
                                             (letrec*
                                              ((x7838
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x7838)))))
                                           (begin
                                             (write '(funapp 1299 44))
                                             (display "\n")
                                             (proc
                                              x7842
                                              x7841
                                              x7840
                                              x7839
                                              x7837)))))
                                        g7836)
                                       (letrec*
                                        ((x-cnd7843
                                          (letrec*
                                           ((x7844
                                             (letrec*
                                              ((x7845
                                                (begin
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x7845)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x7844)))))
                                        (if x-cnd7843
                                          (letrec*
                                           ((g7846
                                             (letrec*
                                              ((x7854
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7853
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7852
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7851
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7849
                                                (letrec*
                                                 ((x7850
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x7850))))
                                               (x7847
                                                (letrec*
                                                 ((x7848
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x7848)))))
                                              (begin
                                                (write '(funapp 1330 47))
                                                (display "\n")
                                                (proc
                                                 x7854
                                                 x7853
                                                 x7852
                                                 x7851
                                                 x7849
                                                 x7847)))))
                                           g7846)
                                          (letrec*
                                           ((x-cnd7855
                                             (letrec*
                                              ((x7856
                                                (letrec*
                                                 ((x7857
                                                   (begin
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x7857)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x7856)))))
                                           (if x-cnd7855
                                             (letrec*
                                              ((g7858
                                                (letrec*
                                                 ((x7868
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7867
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7866
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7865
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7863
                                                   (letrec*
                                                    ((x7864
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x7864))))
                                                  (x7861
                                                   (letrec*
                                                    ((x7862
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x7862))))
                                                  (x7859
                                                   (letrec*
                                                    ((x7860
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x7860)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
                                                   (display "\n")
                                                   (proc
                                                    x7868
                                                    x7867
                                                    x7866
                                                    x7865
                                                    x7863
                                                    x7861
                                                    x7859)))))
                                              g7858)
                                             (letrec*
                                              ((g7869
                                                (begin
                                                  (write '(funapp 1377 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7869)))))))))))))))))))
                   g7806)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x7872
                        (begin
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x7872))))
                    (g7871
                     (letrec*
                      ((x-cnd7873
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7873
                        #f
                        (letrec*
                         ((x-cnd7874
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x7875 e)))))
                         (if x-cnd7874
                           l
                           (letrec*
                            ((x7876
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
                              (display "\n")
                              (member e x7876)))))))))
                   g7871)))
               (cddddr
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
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x7880)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x7879)))))
                      (begin
                        (write '(funapp 1405 23))
                        (display "\n")
                        (cdr x7878)))))
                   g7877)))
               (cadddr
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
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x7884)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x7883)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x7882)))))
                   g7881)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7885
                     (begin
                       (write '(funapp 1418 53))
                       (display "\n")
                       (random 42))))
                   g7885)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x7888))))
                    (g7887
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g7887)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7890
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7890))))
                   g7889)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x7892
                        (begin
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
                        (display "\n")
                        (car x7892)))))
                   g7891)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7894
                           (begin
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7894
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x7895)))
                           #f))))
                      (letrec*
                       ((g7896
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
                             (display "\n")
                             (null? l)))))
                       g7896))))
                   g7893)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x7898
                        (letrec*
                         ((x7899
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x7900)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x7899)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (cdr x7898)))))
                   g7897)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x-cnd7902
                        (letrec*
                         ((x7903 #\0))
                         (begin
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x7903 c)))))
                      (if x-cnd7902
                        (letrec*
                         ((x7904 #\9))
                         (begin
                           (write '(funapp 1474 48))
                           (display "\n")
                           (char<=? c x7904)))
                        #f))))
                   g7901)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x7907))))
                    (g7906
                     (letrec*
                      ((x-cnd7908
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7908
                        #f
                        (letrec*
                         ((x-cnd7909
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x7910 k)))))
                         (if x-cnd7909
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7911
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x7911)))))))))
                   g7906)))
               (not (lambda (x) (letrec* ((g7912 (if x #f #t))) g7912)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7913
                     (begin
                       (write '(funapp 1496 50))
                       (display "\n")
                       (append l1 l2))))
                   g7913)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7916
                        (begin
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x7916))))
                    (g7915
                     (letrec*
                      ((x-cnd7917
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7917
                        #f
                        (letrec*
                         ((x-cnd7918
                           (letrec*
                            ((x7919
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x7919 e)))))
                         (if x-cnd7918
                           l
                           (letrec*
                            ((x7920
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
                              (display "\n")
                              (memq e x7920)))))))))
                   g7915)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7922
                        (letrec*
                         ((x7923
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x7924)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x7923)))))
                      (begin
                        (write '(funapp 1522 23))
                        (display "\n")
                        (car x7922)))))
                   g7921)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
                        (display "\n")
                        (assert x7927))))
                    (g7926
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7928
                             (letrec*
                              ((x-cnd7929
                                (begin
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7929
                                0
                                (letrec*
                                 ((x7930
                                   (letrec*
                                    ((x7931
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x7931)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x7930)))))))
                           g7928))))
                      (letrec*
                       ((g7932
                         (begin
                           (write '(funapp 1543 40))
                           (display "\n")
                           (rec l))))
                       g7932))))
                   g7926)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7936))))
                    (g7934
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7937))))
                    (g7935
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7938
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7938))))
                   g7935)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
                        (display "\n")
                        (not x7940)))))
                   g7939)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7942
                        (letrec*
                         ((x7943
                           (begin
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x7943)))))
                      (begin
                        (write '(funapp 1568 23))
                        (display "\n")
                        (cdr x7942)))))
                   g7941)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x7946))))
                    (g7945
                     (letrec*
                      ((x-cnd7947
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7947
                        #f
                        (letrec*
                         ((x-cnd7948
                           (letrec*
                            ((x7949
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x7949 k)))))
                         (if x-cnd7948
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7950
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
                              (display "\n")
                              (assoc k x7950)))))))))
                   g7945)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
                        (display "\n")
                        (car x7952)))))
                   g7951)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7956))))
                    (g7954
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x7957))))
                    (g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
                        (display "\n")
                        (not x7958)))))
                   g7955)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7960
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7960))))
                   g7959)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x7964))))
                    (g7962
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x7965))))
                    (g7963
                     (letrec*
                      ((x-cnd7966
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7966
                        #t
                        (letrec*
                         ((x-cnd7967
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7967
                           (letrec*
                            ((g7968
                              (letrec*
                               ((x7970
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x7970))))
                             (g7969
                              (letrec*
                               ((x7971
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x7971)))))
                            g7969)
                           (begin
                             (write '(funapp 1626 27))
                             (display "\n")
                             '())))))))
                   g7963)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x7974))))
                    (g7973
                     (letrec*
                      ((x-cnd7975
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7975
                        (begin
                          (write '(funapp 1633 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7973)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7979))))
                    (g7977
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x7980))))
                    (g7978
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7981
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7981))))
                   g7978)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7982
                     (letrec*
                      ((x7983
                        (letrec*
                         ((x7984
                           (letrec*
                            ((x7985
                              (begin
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x7985)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x7984)))))
                      (begin
                        (write '(funapp 1656 23))
                        (display "\n")
                        (car x7983)))))
                   g7982)))
               (newline (lambda () (letrec* ((g7986 #f)) g7986)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x7989
                        (letrec*
                         ((x7990
                           (begin
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x7990))))
                       (x7988
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
                        (display "\n")
                        (/ x7989 x7988)))))
                   g7987)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((x7995
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x7995))))
                    (g7992
                     (letrec*
                      ((x7996
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x7996))))
                    (g7993
                     (letrec*
                      ((x7997
                        (letrec*
                         ((x7998
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x7998)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x7997))))
                    (g7994
                     (letrec*
                      ((x-cnd7999
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7999
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8001
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x8000
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
                           (display "\n")
                           (list-ref x8001 x8000)))))))
                   g7994)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8002
                     (letrec*
                      ((x-cnd8003
                        (begin
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8003
                        a
                        (letrec*
                         ((x8004
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x8004)))))))
                   g8002)))
               (c
                (lambda (_)
                  (letrec*
                   ((g8005
                     (begin (write '(funapp 1697 47)) (display "\n") 'unit)))
                   g8005)))
               (b
                (lambda (x _)
                  (letrec*
                   ((g8006
                     (begin (write '(funapp 1698 50)) (display "\n") (x 1))))
                   g8006)))
               (a
                (lambda (x y q)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((x-cnd8008
                        (begin
                          (write '(funapp 1704 35))
                          (display "\n")
                          (= q 0))))
                      (if x-cnd8008
                        (letrec*
                         ((g8009
                           (begin
                             (write '(funapp 1706 42))
                             (display "\n")
                             (x 0)))
                          (g8010
                           (begin
                             (write '(funapp 1706 56))
                             (display "\n")
                             (y 0))))
                         g8010)
                        (begin
                          (write '(funapp 1707 25))
                          (display "\n")
                          (error
                           (begin
                             (write '(funapp 1707 31))
                             (display "\n")
                             'invalid)))))))
                   g8007)))
               (f
                (lambda (n x q)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x-cnd8012
                        (begin
                          (write '(funapp 1714 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd8012
                        (begin (write '(funapp 1716 25)) (display "\n") (x q))
                        (begin
                          (write '(funapp 1717 25))
                          (display "\n")
                          (a
                           x
                           (lambda (p)
                             (letrec*
                              ((g8013
                                (letrec*
                                 ((x8015
                                   (begin
                                     (write '(funapp 1723 40))
                                     (display "\n")
                                     (- n 1))))
                                 (begin
                                   (write '(funapp 1724 32))
                                   (display "\n")
                                   (f
                                    x8015
                                    (lambda (_)
                                      (letrec*
                                       ((g8014
                                         (begin
                                           (write '(funapp 1726 62))
                                           (display "\n")
                                           (b x _))))
                                       g8014))
                                    p)))))
                              g8013))
                           q))))))
                   g8011)))
               (s
                (lambda (n q)
                  (letrec*
                   ((g8016
                     (begin
                       (write '(funapp 1731 50))
                       (display "\n")
                       (f n c q))))
                   g8016)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8017
                     (begin (write '(funapp 1732 51)) (display "\n") (s n 0))))
                   g8017))))
              (letrec*
               ((g8018
                 (begin
                   (write '(funapp 1735 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1736 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8020
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1740 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1740 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1740 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1740 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8021
                              (begin
                                (write '(funapp 1743 27))
                                (display "\n")
                                ((lambda (j7405 k7406 f7407)
                                   (letrec*
                                    ((g8022
                                      (lambda (g7404)
                                        (letrec*
                                         ((g8023
                                           (letrec*
                                            ((x8024
                                              (letrec*
                                               ((x8025
                                                 (begin
                                                   (write '(funapp 1753 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7405
                                                    k7406
                                                    g7404))))
                                               (begin
                                                 (write '(funapp 1754 42))
                                                 (display "\n")
                                                 (f7407 x8025)))))
                                            (begin
                                              (write '(funapp 1755 39))
                                              (display "\n")
                                              (any/c j7405 k7406 x8024)))))
                                         g8023))))
                                    g8022))
                                 xj7402
                                 xk7403
                                 main))))
                            g8021)))
                         (x8019 (input)))
                        (begin
                          (write '(funapp 1763 21))
                          (display "\n")
                          (x8020 x8019)))))))))
               g8018))))
           g7436))))
       g7419)))
    g7418)))
