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
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7562
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7564
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7565
                                 (letrec*
                                  ((x7566
                                    (letrec*
                                     ((x7568
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7567
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7369 x7568 x7567)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7566)))))
                               g7565))))
                          g7564))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7563
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7563))))))
                  g7562)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7569
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7571
                            (lambda (g7372)
                              (letrec*
                               ((g7572
                                 (letrec*
                                  ((x7573
                                    (letrec*
                                     ((x7574
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7375 x7574)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7573)))))
                               g7572))))
                          g7571))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7570
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7570))))))
                  g7569)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7575
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7577
                            (lambda (g7378)
                              (letrec*
                               ((g7578
                                 (letrec*
                                  ((x7579
                                    (letrec*
                                     ((x7580
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7381 x7580)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7579)))))
                               g7578))))
                          g7577))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7576
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7576))))))
                  g7575)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7581
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7583
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7584
                                 (letrec*
                                  ((x7585
                                    (letrec*
                                     ((x7587
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7586
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7388 x7587 x7586)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7585)))))
                               g7584))))
                          g7583))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7582
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7582))))))
                  g7581)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7588
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7590
                            (lambda (g7391)
                              (letrec*
                               ((g7591
                                 (letrec*
                                  ((x7592
                                    (letrec*
                                     ((x7593
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7394 x7593)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7592)))))
                               g7591))))
                          g7590))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7589
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7589))))))
                  g7588)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7594
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7596
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7597
                                 (letrec*
                                  ((x7598
                                    (letrec*
                                     ((x7600
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7599
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7401 x7600 x7599)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7598)))))
                               g7597))))
                          g7596))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7595
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7595))))))
                  g7594)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7602
                        (letrec*
                         ((x7603
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7603)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7602)))))
                   g7601)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7607))))
                    (g7605
                     (letrec*
                      ((x7608
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7608))))
                    (g7606
                     (letrec*
                      ((x-cnd7609
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7609
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7612
                           (letrec*
                            ((x7613
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7613))))
                          (x7610
                           (letrec*
                            ((x7611
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7611)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7612 x7610)))))))
                   g7606)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7615)))))
                   g7614)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7619)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7618)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7617)))))
                   g7616)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7621
                        (letrec*
                         ((x7622
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7623)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7622)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7621)))))
                   g7620)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7627))))
                    (g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7628))))
                    (g7626
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
                       ((g7629
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7630 res))
                       g7630))))
                   g7626)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7632
                        (letrec*
                         ((x7633
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7633)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7632)))))
                   g7631)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7635
                        (letrec*
                         ((x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7637)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7636)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7635)))))
                   g7634)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7640))))
                    (g7639
                     (letrec*
                      ((x-cnd7641
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7641
                        #f
                        (letrec*
                         ((x-cnd7642
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7643 k)))))
                         (if x-cnd7642
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7644)))))))))
                   g7639)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7646)))))
                   g7645)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7649))))
                    (g7648
                     (letrec*
                      ((x-cnd7650
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7650
                        ""
                        (letrec*
                         ((x7653
                           (letrec*
                            ((x7654
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7654))))
                          (x7651
                           (letrec*
                            ((x7652
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7652)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7653 x7651)))))))
                   g7648)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7658))))
                    (g7656
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7660
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7660))))
                   g7657)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7662
                        (letrec*
                         ((x7663
                           (letrec*
                            ((x7664
                              (begin
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7664)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7663)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7662)))))
                   g7661)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7668))))
                    (g7666
                     (letrec*
                      ((x7669
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7669))))
                    (g7667
                     (letrec*
                      ((x-cnd7670
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7670
                        x
                        (letrec*
                         ((x7672
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7671
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7672 x7671)))))))
                   g7667)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7673
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7673)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x-cnd7675
                        (letrec*
                         ((x7676 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7676)))))
                      (if x-cnd7675
                        (letrec*
                         ((x7677 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7677)))
                        #f))))
                   g7674)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7679
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7679 9)))))
                      (letrec*
                       ((g7680
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7681
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7681 10)))))
                            (letrec*
                             ((g7682
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7683
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7683 32))))))
                             g7682)))))
                       g7680))))
                   g7678)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x7685
                        (letrec*
                         ((x7686
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7686)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7685)))))
                   g7684)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x7689
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7689))))
                    (g7688
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7688)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7690
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7690)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7691 #f)) g7691)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7692
                     (letrec*
                      ((x7693
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7693)))))
                   g7692)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7694
                     (letrec*
                      ((x7696
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7696))))
                    (g7695
                     (letrec*
                      ((x-cnd7697
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7697
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7695)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7698
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7699
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7700
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7700
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7701
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7702
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7702
                                       (letrec*
                                        ((x-cnd7703
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7703
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7704
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7705
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7705
                                             (letrec*
                                              ((x-cnd7706
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7706
                                                (letrec*
                                                 ((x-cnd7707
                                                   (letrec*
                                                    ((x7709
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7708
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7709 x7708)))))
                                                 (if x-cnd7707
                                                   (letrec*
                                                    ((x7711
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7710
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7711 x7710)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7712
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7713
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7713
                                                (letrec*
                                                 ((x-cnd7714
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7714
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7715
                                                       (letrec*
                                                        ((x-cnd7716
                                                          (letrec*
                                                           ((x7717
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
                                                             (= x7717 n)))))
                                                        (if x-cnd7716
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7718
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
                                                                    ((g7719
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7720
                                                                           (letrec*
                                                                            ((x7722
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
                                                                             (x7721
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
                                                                               x7722
                                                                               x7721)))))
                                                                         (if x-cnd7720
                                                                           (letrec*
                                                                            ((x7723
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
                                                                               x7723)))
                                                                           #f)))))
                                                                    g7719))))
                                                                g7718))))
                                                           (letrec*
                                                            ((g7724
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7724))
                                                          #f))))
                                                     g7715))
                                                   #f))
                                                #f)))))
                                         g7712)))))
                                   g7704)))))
                             g7701)))))
                       g7699))))
                   g7698)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7725
                     (letrec*
                      ((x7726
                        (letrec*
                         ((x7727
                           (letrec*
                            ((x7728
                              (begin
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7728)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7727)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x7726)))))
                   g7725)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7730
                        (letrec*
                         ((x7731
                           (letrec*
                            ((x7732
                              (begin
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7732)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7731)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7730)))))
                   g7729)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7733
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g7733)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7737))))
                    (g7735
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7738))))
                    (g7736
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
                       ((g7739
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7740 res))
                       g7740))))
                   g7736)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7741
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g7741)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7745))))
                    (g7743
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7746))))
                    (g7744
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7747
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7747))))
                   g7744)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7749
                        (letrec*
                         ((x7750
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7750)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7749)))))
                   g7748)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7752
                        (letrec*
                         ((x7753
                           (letrec*
                            ((x7754
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7754)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7753)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x7752)))))
                   g7751)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x7757)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x7756)))))
                   g7755)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x7760)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x7759)))))
                   g7758)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7764))))
                    (g7762
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c2))))
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
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x7766)))))
                   g7763)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x7770)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x7769)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x7768)))))
                   g7767)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x7773))))
                    (g7772
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g7772)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7774
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g7774)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7776
                        (letrec*
                         ((x7777
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x7777)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7778
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g7778)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x7781))))
                    (g7780
                     (letrec*
                      ((x-cnd7782
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7782
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x7785
                           (letrec*
                            ((x7786
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x7786))))
                          (x7783
                           (letrec*
                            ((x7784
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x7784)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x7785 x7783)))))))
                   g7780)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7788
                        (letrec*
                         ((x7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x7790)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x7789)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x7788)))))
                   g7787)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7792
                        (letrec*
                         ((x7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x7794)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x7793)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x7792)))))
                   g7791)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x7797))))
                    (g7796
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x7798)))))
                   g7796)))
               (caadar
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
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x7802)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x7801)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7800)))))
                   g7799)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x7806))))
                    (g7804
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x7807))))
                    (g7805
                     (letrec*
                      ((x-cnd7808
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7808
                        (letrec*
                         ((g7809
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g7809)
                        (letrec*
                         ((x-cnd7810
                           (letrec*
                            ((x7811
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x7811)))))
                         (if x-cnd7810
                           (letrec*
                            ((g7812
                              (letrec*
                               ((x7813
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x7813)))))
                            g7812)
                           (letrec*
                            ((x-cnd7814
                              (letrec*
                               ((x7815
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x7815)))))
                            (if x-cnd7814
                              (letrec*
                               ((g7816
                                 (letrec*
                                  ((x7818
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x7817
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x7818 x7817)))))
                               g7816)
                              (letrec*
                               ((x-cnd7819
                                 (letrec*
                                  ((x7820
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x7820)))))
                               (if x-cnd7819
                                 (letrec*
                                  ((g7821
                                    (letrec*
                                     ((x7824
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x7823
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7822
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x7824 x7823 x7822)))))
                                  g7821)
                                 (letrec*
                                  ((x-cnd7825
                                    (letrec*
                                     ((x7826
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x7826)))))
                                  (if x-cnd7825
                                    (letrec*
                                     ((g7827
                                       (letrec*
                                        ((x7831
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x7830
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7829
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7828
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x7831 x7830 x7829 x7828)))))
                                     g7827)
                                    (letrec*
                                     ((x-cnd7832
                                       (letrec*
                                        ((x7833
                                          (letrec*
                                           ((x7834
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x7834)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x7833)))))
                                     (if x-cnd7832
                                       (letrec*
                                        ((g7835
                                          (letrec*
                                           ((x7841
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x7840
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7839
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7838
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7836
                                             (letrec*
                                              ((x7837
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x7837)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x7841
                                              x7840
                                              x7839
                                              x7838
                                              x7836)))))
                                        g7835)
                                       (letrec*
                                        ((x-cnd7842
                                          (letrec*
                                           ((x7843
                                             (letrec*
                                              ((x7844
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x7844)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x7843)))))
                                        (if x-cnd7842
                                          (letrec*
                                           ((g7845
                                             (letrec*
                                              ((x7853
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7852
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7851
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7850
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7848
                                                (letrec*
                                                 ((x7849
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x7849))))
                                               (x7846
                                                (letrec*
                                                 ((x7847
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x7847)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x7853
                                                 x7852
                                                 x7851
                                                 x7850
                                                 x7848
                                                 x7846)))))
                                           g7845)
                                          (letrec*
                                           ((x-cnd7854
                                             (letrec*
                                              ((x7855
                                                (letrec*
                                                 ((x7856
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x7856)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x7855)))))
                                           (if x-cnd7854
                                             (letrec*
                                              ((g7857
                                                (letrec*
                                                 ((x7867
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7866
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7865
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7864
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7862
                                                   (letrec*
                                                    ((x7863
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x7863))))
                                                  (x7860
                                                   (letrec*
                                                    ((x7861
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x7861))))
                                                  (x7858
                                                   (letrec*
                                                    ((x7859
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x7859)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x7867
                                                    x7866
                                                    x7865
                                                    x7864
                                                    x7862
                                                    x7860
                                                    x7858)))))
                                              g7857)
                                             (letrec*
                                              ((g7868
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7868)))))))))))))))))))
                   g7805)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7871
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x7871))))
                    (g7870
                     (letrec*
                      ((x-cnd7872
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7872
                        #f
                        (letrec*
                         ((x-cnd7873
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x7874 e)))))
                         (if x-cnd7873
                           l
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x7875)))))))))
                   g7870)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x7877
                        (letrec*
                         ((x7878
                           (letrec*
                            ((x7879
                              (begin
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x7879)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x7878)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x7877)))))
                   g7876)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7881
                        (letrec*
                         ((x7882
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x7883)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x7882)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x7881)))))
                   g7880)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7884
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g7884)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7887
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x7887))))
                    (g7886
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g7886)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7889
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7889))))
                   g7888)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x7891
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x7891)))))
                   g7890)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7893
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7893
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x7894)))
                           #f))))
                      (letrec*
                       ((g7895
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g7895))))
                   g7892)))
               (cddaar
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
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x7899)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x7898)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x7897)))))
                   g7896)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x-cnd7901
                        (letrec*
                         ((x7902 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x7902 c)))))
                      (if x-cnd7901
                        (letrec*
                         ((x7903 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x7903)))
                        #f))))
                   g7900)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7906))))
                    (g7905
                     (letrec*
                      ((x-cnd7907
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7907
                        #f
                        (letrec*
                         ((x-cnd7908
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x7909 k)))))
                         (if x-cnd7908
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x7910)))))))))
                   g7905)))
               (not (lambda (x) (letrec* ((g7911 (if x #f #t))) g7911)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7912
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g7912)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x7915))))
                    (g7914
                     (letrec*
                      ((x-cnd7916
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7916
                        #f
                        (letrec*
                         ((x-cnd7917
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x7918 e)))))
                         (if x-cnd7917
                           l
                           (letrec*
                            ((x7919
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x7919)))))))))
                   g7914)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7921
                        (letrec*
                         ((x7922
                           (letrec*
                            ((x7923
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x7923)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x7922)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x7921)))))
                   g7920)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7926
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7926))))
                    (g7925
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7927
                             (letrec*
                              ((x-cnd7928
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7928
                                0
                                (letrec*
                                 ((x7929
                                   (letrec*
                                    ((x7930
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x7930)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x7929)))))))
                           g7927))))
                      (letrec*
                       ((g7931
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g7931))))
                   g7925)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7935))))
                    (g7933
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7936))))
                    (g7934
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7937
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7937))))
                   g7934)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x7939)))))
                   g7938)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7941
                        (letrec*
                         ((x7942
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x7942)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x7941)))))
                   g7940)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x7945))))
                    (g7944
                     (letrec*
                      ((x-cnd7946
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7946
                        #f
                        (letrec*
                         ((x-cnd7947
                           (letrec*
                            ((x7948
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x7948 k)))))
                         (if x-cnd7947
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7949
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x7949)))))))))
                   g7944)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x7951)))))
                   g7950)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
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
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x7957)))))
                   g7954)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7959
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7959))))
                   g7958)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x7963))))
                    (g7961
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x7964))))
                    (g7962
                     (letrec*
                      ((x-cnd7965
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7965
                        #t
                        (letrec*
                         ((x-cnd7966
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7966
                           (letrec*
                            ((g7967
                              (letrec*
                               ((x7969
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x7969))))
                             (g7968
                              (letrec*
                               ((x7970
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x7970)))))
                            g7968)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g7962)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7971
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x7973))))
                    (g7972
                     (letrec*
                      ((x-cnd7974
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7974
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7972)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7978))))
                    (g7976
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7979))))
                    (g7977
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7980
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7980))))
                   g7977)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x7982
                        (letrec*
                         ((x7983
                           (letrec*
                            ((x7984
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x7984)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x7983)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x7982)))))
                   g7981)))
               (newline (lambda () (letrec* ((g7985 #f)) g7985)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((x7988
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x7989))))
                       (x7987
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x7988 x7987)))))
                   g7986)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x7994
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x7994))))
                    (g7991
                     (letrec*
                      ((x7995
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x7995))))
                    (g7992
                     (letrec*
                      ((x7996
                        (letrec*
                         ((x7997
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x7997)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x7996))))
                    (g7993
                     (letrec*
                      ((x-cnd7998
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7998
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8000
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x7999
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x8000 x7999)))))))
                   g7993)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((x-cnd8002
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8002
                        a
                        (letrec*
                         ((x8003
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8003)))))))
                   g8001)))
               (main
                (lambda (len)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((xs
                        (begin
                          (write '(funapp 1701 28))
                          (display "\n")
                          (mk-list len))))
                      (letrec*
                       ((g8005
                         (letrec*
                          ((x-cnd8006
                            (letrec*
                             ((x8007
                               (begin
                                 (write '(funapp 1706 46))
                                 (display "\n")
                                 (= len 0))))
                             (begin
                               (write '(funapp 1706 58))
                               (display "\n")
                               (not x8007)))))
                          (if x-cnd8006
                            (letrec*
                             ((x8008
                               (begin
                                 (write '(funapp 1708 46))
                                 (display "\n")
                                 (reverse xs empty))))
                             (begin
                               (write '(funapp 1708 67))
                               (display "\n")
                               (car x8008)))
                            0))))
                       g8005))))
                   g8004)))
               (reverse
                (lambda (l ac)
                  (letrec*
                   ((g8009
                     (letrec*
                      ((x-cnd8010
                        (begin
                          (write '(funapp 1717 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd8010
                        ac
                        (letrec*
                         ((x8013
                           (begin
                             (write '(funapp 1721 34))
                             (display "\n")
                             (cdr l)))
                          (x8011
                           (letrec*
                            ((x8012
                              (begin
                                (write '(funapp 1722 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1722 61))
                              (display "\n")
                              (cons x8012 ac)))))
                         (begin
                           (write '(funapp 1723 26))
                           (display "\n")
                           (reverse x8013 x8011)))))))
                   g8009)))
               (mk-list
                (lambda (n)
                  (letrec*
                   ((g8014
                     (letrec*
                      ((x-cnd8015
                        (begin
                          (write '(funapp 1730 35))
                          (display "\n")
                          (= n 0))))
                      (if x-cnd8015
                        empty
                        (letrec*
                         ((x8016
                           (letrec*
                            ((x8017
                              (begin
                                (write '(funapp 1734 51))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1734 61))
                              (display "\n")
                              (mk-list x8017)))))
                         (begin
                           (write '(funapp 1735 26))
                           (display "\n")
                           (cons n x8016)))))))
                   g8014))))
              (letrec*
               ((g8018
                 (begin
                   (write '(funapp 1739 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1740 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8020
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1744 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1744 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1744 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1744 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8021
                              (begin
                                (write '(funapp 1747 27))
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
                                                   (write '(funapp 1757 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7405
                                                    k7406
                                                    g7404))))
                                               (begin
                                                 (write '(funapp 1758 42))
                                                 (display "\n")
                                                 (f7407 x8025)))))
                                            (begin
                                              (write '(funapp 1759 39))
                                              (display "\n")
                                              (integer?/c
                                               j7405
                                               k7406
                                               x8024)))))
                                         g8023))))
                                    g8022))
                                 xj7402
                                 xk7403
                                 main))))
                            g8021)))
                         (x8019 (input)))
                        (begin
                          (write '(funapp 1767 21))
                          (display "\n")
                          (x8020 x8019)))))))))
               g8018))))
           g7436))))
       g7419)))
    g7418)))
