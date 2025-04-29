(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7420 #t)) g7420)))
    (meta (lambda (v) (letrec* ((g7421 v)) g7421)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7422
          (letrec*
           ((g7423
             (letrec*
              ((x-e7424 lst))
              (letrec*
               ((v1742 x-e7424))
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
                   ((x-cnd7425
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7425
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
           g7423)))
        g7422)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7426 (lambda (v) (letrec* ((g7427 v)) g7427)))) g7426)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7428
          (letrec*
           ((x7429 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7429)))))
        g7428))))
   (letrec*
    ((g7430
      (letrec*
       ((g7431
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7432
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7432)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7433
                 (letrec*
                  ((x7435
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7435))))
                (g7434
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7436
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7437 (if val7245 val7245 #f))) g7437)))))
                   g7436))))
               g7434)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7438
                 (letrec*
                  ((x7440
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7440))))
                (g7439
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7441
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7442 (if val7247 val7247 #f))) g7442)))))
                   g7441))))
               g7439)))
           (>
            (lambda (x y)
              (letrec*
               ((g7443
                 (letrec*
                  ((x7445
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7445))))
                (g7444
                 (letrec*
                  ((x7446
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7446)))))
               g7444)))
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
           ((g7447 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7448
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7449
                     (lambda (k j lst)
                       (letrec*
                        ((g7450
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7451
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7451))
                             lst))))
                        g7450))))
                   g7449)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7453
                        g7265
                        (begin
                          (write '(blame g7263 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7452)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7455
                        g7268
                        (begin
                          (write '(blame g7266 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7454)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7457
                        g7271
                        (begin
                          (write '(blame g7269 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7456)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7460 #t)) g7460)) g7274))))
                      (if x-cnd7459
                        g7274
                        (begin
                          (write '(blame g7272 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7458)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x-cnd7462
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7463 #t)) g7463)) g7277))))
                      (if x-cnd7462
                        g7277
                        (begin
                          (write '(blame g7275 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7461)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x-cnd7465
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7465
                        g7280
                        (begin
                          (write '(blame g7278 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7464)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7466
                     (lambda (k j v)
                       (letrec*
                        ((g7467
                          (letrec*
                           ((x7470
                             (letrec*
                              ((x7471
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7471))))
                            (x7468
                             (letrec*
                              ((x7469
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7469)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7470 x7468)))))
                        g7467))))
                   g7466)))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x-cnd7473
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7473
                        g7283
                        (begin
                          (write '(blame g7281 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7472)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x-cnd7475
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7475
                        g7286
                        (begin
                          (write '(blame g7284 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7474)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x-cnd7477
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7477
                        g7289
                        (begin
                          (write '(blame g7287 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7476)))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7478
                     (letrec*
                      ((x-cnd7479
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7292))))
                      (if x-cnd7479
                        g7292
                        (begin
                          (write '(blame g7290 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7478)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7480
                     (lambda (k j v)
                       (letrec*
                        ((g7481
                          (letrec*
                           ((x-cnd7482
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7482
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7481))))
                   g7480)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7483
                     (lambda (k j v)
                       (letrec*
                        ((g7484
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7485
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7485))))
                        g7484))))
                   g7483)))
               (null?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x-cnd7487
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7295))))
                      (if x-cnd7487
                        g7295
                        (begin
                          (write '(blame g7293 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7486)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7488
                     (lambda (k j v)
                       (letrec*
                        ((g7489
                          (letrec*
                           ((x-cnd7490
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7490
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7494
                                (letrec*
                                 ((x7495
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7495))))
                               (x7491
                                (letrec*
                                 ((x7493
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7492
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7493 k j x7492)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7494 x7491)))))))
                        g7489))))
                   g7488)))
               (any? (lambda (v) (letrec* ((g7496 #t)) g7496)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7497
                     (letrec*
                      ((x7498
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7498)))))
                   g7497)))
               (nonzero?/c
                (lambda (g7296 g7297 g7298)
                  (letrec*
                   ((g7499
                     (letrec*
                      ((x-cnd7500
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7501
                                (letrec*
                                 ((x7502
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7502)))))
                              g7501))
                           g7298))))
                      (if x-cnd7500
                        g7298
                        (begin
                          (write '(blame g7296 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7296)))))))
                   g7499)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7503
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7504
                          (letrec*
                           ((x-cnd7505
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7506
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7506))
                                g7301))))
                           (if x-cnd7505
                             g7301
                             (begin
                               (write '(blame g7299 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7504))))
                   g7503)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7507
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7508
                          (letrec*
                           ((x-cnd7509
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7510
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7510))
                                g7304))))
                           (if x-cnd7509
                             g7304
                             (begin
                               (write '(blame g7302 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7508))))
                   g7507)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7511
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7512
                          (letrec*
                           ((x-cnd7513
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7514
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7514))
                                g7307))))
                           (if x-cnd7513
                             g7307
                             (begin
                               (write '(blame g7305 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7512))))
                   g7511)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7515
                     (lambda (g7308 g7309 g7310)
                       (letrec*
                        ((g7516
                          (letrec*
                           ((x-cnd7517
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7518
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7518))
                                g7310))))
                           (if x-cnd7517
                             g7310
                             (begin
                               (write '(blame g7308 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7516))))
                   g7515)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7519
                     (lambda (g7311 g7312 g7313)
                       (letrec*
                        ((g7520
                          (letrec*
                           ((x-cnd7521
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7522
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7522))
                                g7313))))
                           (if x-cnd7521
                             g7313
                             (begin
                               (write '(blame g7311 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7311)))))))
                        g7520))))
                   g7519)))
               (meta (lambda (v) (letrec* ((g7523 v)) g7523)))
               (+
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7524
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7526
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7527
                                 (letrec*
                                  ((x7528
                                    (letrec*
                                     ((x7530
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7529
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7320 x7530 x7529)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7528)))))
                               g7527))))
                          g7526))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7525
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7525))))))
                  g7524)))
               (-
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7531
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7533
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7534
                                 (letrec*
                                  ((x7535
                                    (letrec*
                                     ((x7537
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7536
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7327 x7537 x7536)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7535)))))
                               g7534))))
                          g7533))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7532
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7532))))))
                  g7531)))
               (*
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7538
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7540
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7541
                                 (letrec*
                                  ((x7542
                                    (letrec*
                                     ((x7544
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7543
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7334 x7544 x7543)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7332 k7333 x7542)))))
                               g7541))))
                          g7540))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7539
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7539))))))
                  g7538)))
               (<
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7545
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7547
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7548
                                 (letrec*
                                  ((x7549
                                    (letrec*
                                     ((x7551
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7550
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7341 x7551 x7550)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7549)))))
                               g7548))))
                          g7547))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7546
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7546))))))
                  g7545)))
               (>
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7552
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7554
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7555
                                 (letrec*
                                  ((x7556
                                    (letrec*
                                     ((x7558
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7557
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7348 x7558 x7557)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7556)))))
                               g7555))))
                          g7554))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7553
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7553))))))
                  g7552)))
               (<=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7559
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7561
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7562
                                 (letrec*
                                  ((x7563
                                    (letrec*
                                     ((x7565
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7564
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7355 x7565 x7564)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7563)))))
                               g7562))))
                          g7561))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7560
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7560))))))
                  g7559)))
               (>=
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7566
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7568
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7569
                                 (letrec*
                                  ((x7570
                                    (letrec*
                                     ((x7572
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7571
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7362 x7572 x7571)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7360 k7361 x7570)))))
                               g7569))))
                          g7568))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7567
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7567))))))
                  g7566)))
               (add1
                (lambda (x)
                  (letrec*
                   ((g7573
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7573)))
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7574
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7574)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7575
                    (begin
                      (write '(funapp 552 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7577
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7578
                                 (letrec*
                                  ((x7579
                                    (letrec*
                                     ((x7581
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7580
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7369 x7581 x7580)))))
                                  (begin
                                    (write '(funapp 564 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7579)))))
                               g7578))))
                          g7577))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7576
                            (begin
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7576))))))
                  g7575)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7582
                    (begin
                      (write '(funapp 576 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7584
                            (lambda (g7372)
                              (letrec*
                               ((g7585
                                 (letrec*
                                  ((x7586
                                    (letrec*
                                     ((x7587
                                       (begin
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7375 x7587)))))
                                  (begin
                                    (write '(funapp 587 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7586)))))
                               g7585))))
                          g7584))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7583
                            (begin
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7583))))))
                  g7582)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7588
                    (begin
                      (write '(funapp 599 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7590
                            (lambda (g7378)
                              (letrec*
                               ((g7591
                                 (letrec*
                                  ((x7592
                                    (letrec*
                                     ((x7593
                                       (begin
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7381 x7593)))))
                                  (begin
                                    (write '(funapp 610 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7592)))))
                               g7591))))
                          g7590))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7589
                            (begin
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7589))))))
                  g7588)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7594
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7596
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7597
                                 (letrec*
                                  ((x7598
                                    (letrec*
                                     ((x7600
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7599
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7388 x7600 x7599)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7598)))))
                               g7597))))
                          g7596))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7595
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7595))))))
                  g7594)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7601
                    (begin
                      (write '(funapp 647 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7603
                            (lambda (g7391)
                              (letrec*
                               ((g7604
                                 (letrec*
                                  ((x7605
                                    (letrec*
                                     ((x7606
                                       (begin
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7394 x7606)))))
                                  (begin
                                    (write '(funapp 658 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7605)))))
                               g7604))))
                          g7603))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7602
                            (begin
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7602))))))
                  g7601)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7607
                    (begin
                      (write '(funapp 671 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7609
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7610
                                 (letrec*
                                  ((x7611
                                    (letrec*
                                     ((x7613
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7612
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7401 x7613 x7612)))))
                                  (begin
                                    (write '(funapp 683 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7611)))))
                               g7610))))
                          g7609))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7608
                            (begin
                              (write '(funapp 689 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7608))))))
                  g7607)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (letrec*
                         ((x7616
                           (begin
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7616)))))
                      (begin
                        (write '(funapp 697 23))
                        (display "\n")
                        (cdr x7615)))))
                   g7614)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7620))))
                    (g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7621))))
                    (g7619
                     (letrec*
                      ((x-cnd7622
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7622
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7625
                           (letrec*
                            ((x7626
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7626))))
                          (x7623
                           (letrec*
                            ((x7624
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7624)))))
                         (begin
                           (write '(funapp 713 26))
                           (display "\n")
                           (cons x7625 x7623)))))))
                   g7619)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
                        (display "\n")
                        (cdr x7628)))))
                   g7627)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7630
                        (letrec*
                         ((x7631
                           (letrec*
                            ((x7632
                              (begin
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7632)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7631)))))
                      (begin
                        (write '(funapp 729 23))
                        (display "\n")
                        (car x7630)))))
                   g7629)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (letrec*
                         ((x7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7636)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7635)))))
                      (begin
                        (write '(funapp 740 23))
                        (display "\n")
                        (cdr x7634)))))
                   g7633)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x7640))))
                    (g7638
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x7641))))
                    (g7639
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
                       ((g7642
                         (begin
                           (write '(funapp 754 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7643 res))
                       g7643))))
                   g7639)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7645
                        (letrec*
                         ((x7646
                           (begin
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x7646)))))
                      (begin
                        (write '(funapp 763 23))
                        (display "\n")
                        (car x7645)))))
                   g7644)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7648
                        (letrec*
                         ((x7649
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x7650)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x7649)))))
                      (begin
                        (write '(funapp 774 23))
                        (display "\n")
                        (cdr x7648)))))
                   g7647)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x7653))))
                    (g7652
                     (letrec*
                      ((x-cnd7654
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7654
                        #f
                        (letrec*
                         ((x-cnd7655
                           (letrec*
                            ((x7656
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x7656 k)))))
                         (if x-cnd7655
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7657
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
                              (display "\n")
                              (assq k x7657)))))))))
                   g7652)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
                        (display "\n")
                        (= 0 x7659)))))
                   g7658)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x7662))))
                    (g7661
                     (letrec*
                      ((x-cnd7663
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7663
                        ""
                        (letrec*
                         ((x7666
                           (letrec*
                            ((x7667
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x7667))))
                          (x7664
                           (letrec*
                            ((x7665
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x7665)))))
                         (begin
                           (write '(funapp 811 26))
                           (display "\n")
                           (string-append x7666 x7664)))))))
                   g7661)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x7671
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7671))))
                    (g7669
                     (letrec*
                      ((x7672
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x7672))))
                    (g7670
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7673
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7673))))
                   g7670)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7675
                        (letrec*
                         ((x7676
                           (letrec*
                            ((x7677
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7677)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x7676)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7675)))))
                   g7674)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((x7681
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7681))))
                    (g7679
                     (letrec*
                      ((x7682
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x7682))))
                    (g7680
                     (letrec*
                      ((x-cnd7683
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7683
                        x
                        (letrec*
                         ((x7685
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x7684
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x7685 x7684)))))))
                   g7680)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7686
                     (begin (write '(funapp 850 49)) (display "\n") '())))
                   g7686)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x-cnd7688
                        (letrec*
                         ((x7689 #\a))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x7689)))))
                      (if x-cnd7688
                        (letrec*
                         ((x7690 #\z))
                         (begin
                           (write '(funapp 859 48))
                           (display "\n")
                           (char-ci<=? c x7690)))
                        #f))))
                   g7687)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7691
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7692
                           (begin
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
                           (display "\n")
                           (= x7692 9)))))
                      (letrec*
                       ((g7693
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7694
                                 (begin
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x7694 10)))))
                            (letrec*
                             ((g7695
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7696
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
                                    (display "\n")
                                    (= x7696 32))))))
                             g7695)))))
                       g7693))))
                   g7691)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7697
                     (letrec*
                      ((x7698
                        (letrec*
                         ((x7699
                           (begin
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x7699)))))
                      (begin
                        (write '(funapp 894 23))
                        (display "\n")
                        (cdr x7698)))))
                   g7697)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7700
                     (letrec*
                      ((x7702
                        (begin
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x7702))))
                    (g7701
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g7701)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7703
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g7703)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7704 #f)) g7704)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7705
                     (letrec*
                      ((x7706
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
                        (display "\n")
                        (cdr x7706)))))
                   g7705)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7707
                     (letrec*
                      ((x7709
                        (begin
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x7709))))
                    (g7708
                     (letrec*
                      ((x-cnd7710
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7710
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g7708)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7711
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7712
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7713
                                 (begin
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7713
                                 (begin
                                   (write '(funapp 935 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7714
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7715
                                       (begin
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7715
                                       (letrec*
                                        ((x-cnd7716
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7716
                                          (begin
                                            (write '(funapp 947 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7717
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7718
                                             (begin
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7718
                                             (letrec*
                                              ((x-cnd7719
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7719
                                                (letrec*
                                                 ((x-cnd7720
                                                   (letrec*
                                                    ((x7722
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7721
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x7722 x7721)))))
                                                 (if x-cnd7720
                                                   (letrec*
                                                    ((x7724
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7723
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
                                                      (display "\n")
                                                      (equal? x7724 x7723)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7725
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7726
                                                (begin
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7726
                                                (letrec*
                                                 ((x-cnd7727
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7727
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7728
                                                       (letrec*
                                                        ((x-cnd7729
                                                          (letrec*
                                                           ((x7730
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
                                                             (= x7730 n)))))
                                                        (if x-cnd7729
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7731
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
                                                                    ((g7732
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7733
                                                                           (letrec*
                                                                            ((x7735
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
                                                                             (x7734
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
                                                                               x7735
                                                                               x7734)))))
                                                                         (if x-cnd7733
                                                                           (letrec*
                                                                            ((x7736
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
                                                                               x7736)))
                                                                           #f)))))
                                                                    g7732))))
                                                                g7731))))
                                                           (letrec*
                                                            ((g7737
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7737))
                                                          #f))))
                                                     g7728))
                                                   #f))
                                                #f)))))
                                         g7725)))))
                                   g7717)))))
                             g7714)))))
                       g7712))))
                   g7711)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7739
                        (letrec*
                         ((x7740
                           (letrec*
                            ((x7741
                              (begin
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x7741)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x7740)))))
                      (begin
                        (write '(funapp 1055 23))
                        (display "\n")
                        (cdr x7739)))))
                   g7738)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (letrec*
                         ((x7744
                           (letrec*
                            ((x7745
                              (begin
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x7745)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x7744)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x7743)))))
                   g7742)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7746
                     (begin
                       (write '(funapp 1068 53))
                       (display "\n")
                       (eq? x y))))
                   g7746)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x7750))))
                    (g7748
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x7751))))
                    (g7749
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
                       ((g7752
                         (begin
                           (write '(funapp 1081 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7753 res))
                       g7753))))
                   g7749)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7754
                     (begin
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
                          (display "\n")
                          '())))))
                   g7754)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7758))))
                    (g7756
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7759))))
                    (g7757
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7760
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7760))))
                   g7757)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7762
                        (letrec*
                         ((x7763
                           (begin
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x7763)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (cdr x7762)))))
                   g7761)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x7767)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x7766)))))
                      (begin
                        (write '(funapp 1114 23))
                        (display "\n")
                        (cdr x7765)))))
                   g7764)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7769
                        (letrec*
                         ((x7770
                           (begin
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x7770)))))
                      (begin
                        (write '(funapp 1123 23))
                        (display "\n")
                        (car x7769)))))
                   g7768)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7772
                        (letrec*
                         ((x7773
                           (begin
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x7773)))))
                      (begin
                        (write '(funapp 1131 23))
                        (display "\n")
                        (car x7772)))))
                   g7771)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7777))))
                    (g7775
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x7778))))
                    (g7776
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
                        (display "\n")
                        (not x7779)))))
                   g7776)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7781
                        (letrec*
                         ((x7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x7783)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x7782)))))
                      (begin
                        (write '(funapp 1150 23))
                        (display "\n")
                        (car x7781)))))
                   g7780)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x7786))))
                    (g7785
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g7785)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7787
                     (begin
                       (write '(funapp 1158 53))
                       (display "\n")
                       (memq e l))))
                   g7787)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7789
                        (letrec*
                         ((x7790
                           (begin
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x7790)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x7789)))))
                   g7788)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7791
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g7791)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x7794))))
                    (g7793
                     (letrec*
                      ((x-cnd7795
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7795
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x7798
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x7799))))
                          (x7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x7797)))))
                         (begin
                           (write '(funapp 1180 26))
                           (display "\n")
                           (append x7798 x7796)))))))
                   g7793)))
               (caaadr
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
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x7803)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x7802)))))
                      (begin
                        (write '(funapp 1191 23))
                        (display "\n")
                        (car x7801)))))
                   g7800)))
               (cddadr
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
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x7807)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x7806)))))
                      (begin
                        (write '(funapp 1202 23))
                        (display "\n")
                        (cdr x7805)))))
                   g7804)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x7810))))
                    (g7809
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
                        (display "\n")
                        (= 1 x7811)))))
                   g7809)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7813
                        (letrec*
                         ((x7814
                           (letrec*
                            ((x7815
                              (begin
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x7815)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x7814)))))
                      (begin
                        (write '(funapp 1219 23))
                        (display "\n")
                        (car x7813)))))
                   g7812)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x7819))))
                    (g7817
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x7820))))
                    (g7818
                     (letrec*
                      ((x-cnd7821
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7821
                        (letrec*
                         ((g7822
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g7822)
                        (letrec*
                         ((x-cnd7823
                           (letrec*
                            ((x7824
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x7824)))))
                         (if x-cnd7823
                           (letrec*
                            ((g7825
                              (letrec*
                               ((x7826
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x7826)))))
                            g7825)
                           (letrec*
                            ((x-cnd7827
                              (letrec*
                               ((x7828
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x7828)))))
                            (if x-cnd7827
                              (letrec*
                               ((g7829
                                 (letrec*
                                  ((x7831
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x7830
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x7831 x7830)))))
                               g7829)
                              (letrec*
                               ((x-cnd7832
                                 (letrec*
                                  ((x7833
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x7833)))))
                               (if x-cnd7832
                                 (letrec*
                                  ((g7834
                                    (letrec*
                                     ((x7837
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x7836
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7835
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x7837 x7836 x7835)))))
                                  g7834)
                                 (letrec*
                                  ((x-cnd7838
                                    (letrec*
                                     ((x7839
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x7839)))))
                                  (if x-cnd7838
                                    (letrec*
                                     ((g7840
                                       (letrec*
                                        ((x7844
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x7843
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7842
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7841
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
                                          (display "\n")
                                          (proc x7844 x7843 x7842 x7841)))))
                                     g7840)
                                    (letrec*
                                     ((x-cnd7845
                                       (letrec*
                                        ((x7846
                                          (letrec*
                                           ((x7847
                                             (begin
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x7847)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x7846)))))
                                     (if x-cnd7845
                                       (letrec*
                                        ((g7848
                                          (letrec*
                                           ((x7854
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x7853
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7852
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7851
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7849
                                             (letrec*
                                              ((x7850
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x7850)))))
                                           (begin
                                             (write '(funapp 1299 44))
                                             (display "\n")
                                             (proc
                                              x7854
                                              x7853
                                              x7852
                                              x7851
                                              x7849)))))
                                        g7848)
                                       (letrec*
                                        ((x-cnd7855
                                          (letrec*
                                           ((x7856
                                             (letrec*
                                              ((x7857
                                                (begin
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x7857)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x7856)))))
                                        (if x-cnd7855
                                          (letrec*
                                           ((g7858
                                             (letrec*
                                              ((x7866
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7865
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7864
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7863
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7861
                                                (letrec*
                                                 ((x7862
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x7862))))
                                               (x7859
                                                (letrec*
                                                 ((x7860
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x7860)))))
                                              (begin
                                                (write '(funapp 1330 47))
                                                (display "\n")
                                                (proc
                                                 x7866
                                                 x7865
                                                 x7864
                                                 x7863
                                                 x7861
                                                 x7859)))))
                                           g7858)
                                          (letrec*
                                           ((x-cnd7867
                                             (letrec*
                                              ((x7868
                                                (letrec*
                                                 ((x7869
                                                   (begin
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x7869)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x7868)))))
                                           (if x-cnd7867
                                             (letrec*
                                              ((g7870
                                                (letrec*
                                                 ((x7880
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7879
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7878
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7877
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7875
                                                   (letrec*
                                                    ((x7876
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x7876))))
                                                  (x7873
                                                   (letrec*
                                                    ((x7874
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x7874))))
                                                  (x7871
                                                   (letrec*
                                                    ((x7872
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x7872)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
                                                   (display "\n")
                                                   (proc
                                                    x7880
                                                    x7879
                                                    x7878
                                                    x7877
                                                    x7875
                                                    x7873
                                                    x7871)))))
                                              g7870)
                                             (letrec*
                                              ((g7881
                                                (begin
                                                  (write '(funapp 1377 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7881)))))))))))))))))))
                   g7818)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7884
                        (begin
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x7884))))
                    (g7883
                     (letrec*
                      ((x-cnd7885
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7885
                        #f
                        (letrec*
                         ((x-cnd7886
                           (letrec*
                            ((x7887
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x7887 e)))))
                         (if x-cnd7886
                           l
                           (letrec*
                            ((x7888
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
                              (display "\n")
                              (member e x7888)))))))))
                   g7883)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7890
                        (letrec*
                         ((x7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x7892)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x7891)))))
                      (begin
                        (write '(funapp 1405 23))
                        (display "\n")
                        (cdr x7890)))))
                   g7889)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7894
                        (letrec*
                         ((x7895
                           (letrec*
                            ((x7896
                              (begin
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x7896)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x7895)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x7894)))))
                   g7893)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7897
                     (begin
                       (write '(funapp 1418 53))
                       (display "\n")
                       (random 42))))
                   g7897)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7900
                        (begin
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x7900))))
                    (g7899
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g7899)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7902
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7902))))
                   g7901)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7904
                        (begin
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
                        (display "\n")
                        (car x7904)))))
                   g7903)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7906
                           (begin
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7906
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x7907)))
                           #f))))
                      (letrec*
                       ((g7908
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
                             (display "\n")
                             (null? l)))))
                       g7908))))
                   g7905)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7910
                        (letrec*
                         ((x7911
                           (letrec*
                            ((x7912
                              (begin
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x7912)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x7911)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (cdr x7910)))))
                   g7909)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x-cnd7914
                        (letrec*
                         ((x7915 #\0))
                         (begin
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x7915 c)))))
                      (if x-cnd7914
                        (letrec*
                         ((x7916 #\9))
                         (begin
                           (write '(funapp 1474 48))
                           (display "\n")
                           (char<=? c x7916)))
                        #f))))
                   g7913)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x7919))))
                    (g7918
                     (letrec*
                      ((x-cnd7920
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7920
                        #f
                        (letrec*
                         ((x-cnd7921
                           (letrec*
                            ((x7922
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x7922 k)))))
                         (if x-cnd7921
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7923
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x7923)))))))))
                   g7918)))
               (not (lambda (x) (letrec* ((g7924 (if x #f #t))) g7924)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7925
                     (begin
                       (write '(funapp 1496 50))
                       (display "\n")
                       (append l1 l2))))
                   g7925)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x7928))))
                    (g7927
                     (letrec*
                      ((x-cnd7929
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7929
                        #f
                        (letrec*
                         ((x-cnd7930
                           (letrec*
                            ((x7931
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x7931 e)))))
                         (if x-cnd7930
                           l
                           (letrec*
                            ((x7932
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
                              (display "\n")
                              (memq e x7932)))))))))
                   g7927)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7934
                        (letrec*
                         ((x7935
                           (letrec*
                            ((x7936
                              (begin
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x7936)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x7935)))))
                      (begin
                        (write '(funapp 1522 23))
                        (display "\n")
                        (car x7934)))))
                   g7933)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
                        (display "\n")
                        (assert x7939))))
                    (g7938
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7940
                             (letrec*
                              ((x-cnd7941
                                (begin
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7941
                                0
                                (letrec*
                                 ((x7942
                                   (letrec*
                                    ((x7943
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x7943)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x7942)))))))
                           g7940))))
                      (letrec*
                       ((g7944
                         (begin
                           (write '(funapp 1543 40))
                           (display "\n")
                           (rec l))))
                       g7944))))
                   g7938)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7948))))
                    (g7946
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7949))))
                    (g7947
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7950
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7950))))
                   g7947)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
                        (display "\n")
                        (not x7952)))))
                   g7951)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7954
                        (letrec*
                         ((x7955
                           (begin
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x7955)))))
                      (begin
                        (write '(funapp 1568 23))
                        (display "\n")
                        (cdr x7954)))))
                   g7953)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x7958))))
                    (g7957
                     (letrec*
                      ((x-cnd7959
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7959
                        #f
                        (letrec*
                         ((x-cnd7960
                           (letrec*
                            ((x7961
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x7961 k)))))
                         (if x-cnd7960
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7962
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
                              (display "\n")
                              (assoc k x7962)))))))))
                   g7957)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
                        (display "\n")
                        (car x7964)))))
                   g7963)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7968))))
                    (g7966
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x7969))))
                    (g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
                        (display "\n")
                        (not x7970)))))
                   g7967)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7971
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7972
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7972))))
                   g7971)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7976
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x7976))))
                    (g7974
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x7977))))
                    (g7975
                     (letrec*
                      ((x-cnd7978
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7978
                        #t
                        (letrec*
                         ((x-cnd7979
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7979
                           (letrec*
                            ((g7980
                              (letrec*
                               ((x7982
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x7982))))
                             (g7981
                              (letrec*
                               ((x7983
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x7983)))))
                            g7981)
                           (begin
                             (write '(funapp 1626 27))
                             (display "\n")
                             '())))))))
                   g7975)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x7986
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x7986))))
                    (g7985
                     (letrec*
                      ((x-cnd7987
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7987
                        (begin
                          (write '(funapp 1633 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7985)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7988
                     (letrec*
                      ((x7991
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7991))))
                    (g7989
                     (letrec*
                      ((x7992
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x7992))))
                    (g7990
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7993
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7993))))
                   g7990)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x7995
                        (letrec*
                         ((x7996
                           (letrec*
                            ((x7997
                              (begin
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x7997)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x7996)))))
                      (begin
                        (write '(funapp 1656 23))
                        (display "\n")
                        (car x7995)))))
                   g7994)))
               (newline (lambda () (letrec* ((g7998 #f)) g7998)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x8001
                        (letrec*
                         ((x8002
                           (begin
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x8002))))
                       (x8000
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
                        (display "\n")
                        (/ x8001 x8000)))))
                   g7999)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x8007
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x8007))))
                    (g8004
                     (letrec*
                      ((x8008
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x8008))))
                    (g8005
                     (letrec*
                      ((x8009
                        (letrec*
                         ((x8010
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x8010)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x8009))))
                    (g8006
                     (letrec*
                      ((x-cnd8011
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8011
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8013
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x8012
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
                           (display "\n")
                           (list-ref x8013 x8012)))))))
                   g8006)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8014
                     (letrec*
                      ((x-cnd8015
                        (begin
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8015
                        a
                        (letrec*
                         ((x8016
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x8016)))))))
                   g8014)))
               (mappend
                (lambda (xs ys)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((x-cnd8018
                        (begin
                          (write '(funapp 1702 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8018
                        ys
                        (letrec*
                         ((x8021
                           (begin
                             (write '(funapp 1706 34))
                             (display "\n")
                             (car xs)))
                          (x8019
                           (letrec*
                            ((x8020
                              (begin
                                (write '(funapp 1708 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1708 56))
                              (display "\n")
                              (mappend x8020 ys)))))
                         (begin
                           (write '(funapp 1709 26))
                           (display "\n")
                           (cons x8021 x8019)))))))
                   g8017)))
               (map-append
                (lambda (f xs)
                  (letrec*
                   ((g8022
                     (letrec*
                      ((x-cnd8023
                        (begin
                          (write '(funapp 1716 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8023
                        empty
                        (letrec*
                         ((x8026
                           (letrec*
                            ((x8027
                              (begin
                                (write '(funapp 1720 51))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1720 62))
                              (display "\n")
                              (f x8027))))
                          (x8024
                           (letrec*
                            ((x8025
                              (begin
                                (write '(funapp 1722 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1722 56))
                              (display "\n")
                              (map-append f x8025)))))
                         (begin
                           (write '(funapp 1723 26))
                           (display "\n")
                           (mappend x8026 x8024)))))))
                   g8022))))
              (letrec*
               ((g8028
                 (begin
                   (write '(funapp 1727 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1728 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8031
                          (letrec*
                           ((xj7402
                             (begin
                               (write '(funapp 1732 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1732 37))
                                  (display "\n")
                                  'module))))
                            (xk7403
                             (begin
                               (write '(funapp 1732 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1732 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8032
                              (begin
                                (write '(funapp 1735 27))
                                (display "\n")
                                ((lambda (j7406 k7407 f7408)
                                   (letrec*
                                    ((g8033
                                      (lambda (g7404 g7405)
                                        (letrec*
                                         ((g8034
                                           (letrec*
                                            ((x8044
                                              (begin
                                                (write '(funapp 1742 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8035
                                              (letrec*
                                               ((x8038
                                                 (begin
                                                   (write '(funapp 1746 44))
                                                   (display "\n")
                                                   ((lambda (j7410 k7411 f7412)
                                                      (letrec*
                                                       ((g8039
                                                         (lambda (g7409)
                                                           (letrec*
                                                            ((g8040
                                                              (letrec*
                                                               ((x8043
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1753
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (listof
                                                                    any/c)))
                                                                (x8041
                                                                 (letrec*
                                                                  ((x8042
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1757
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7410
                                                                       k7411
                                                                       g7409))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1761
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7412
                                                                     x8042)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1762
                                                                    56))
                                                                 (display "\n")
                                                                 (x8043
                                                                  j7410
                                                                  k7411
                                                                  x8041)))))
                                                            g8040))))
                                                       g8039))
                                                    j7406
                                                    k7407
                                                    g7404)))
                                                (x8036
                                                 (letrec*
                                                  ((x8037
                                                    (begin
                                                      (write '(funapp 1773 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1774 45))
                                                    (display "\n")
                                                    (x8037
                                                     j7406
                                                     k7407
                                                     g7405)))))
                                               (begin
                                                 (write '(funapp 1775 42))
                                                 (display "\n")
                                                 (f7408 x8038 x8036)))))
                                            (begin
                                              (write '(funapp 1776 39))
                                              (display "\n")
                                              (x8044 j7406 k7407 x8035)))))
                                         g8034))))
                                    g8033))
                                 xj7402
                                 xk7403
                                 map-append))))
                            g8032)))
                         (x8030 (input))
                         (x8029 (input)))
                        (begin
                          (write '(funapp 1785 21))
                          (display "\n")
                          (x8031 x8030 x8029)))
                       (letrec*
                        ((x8047
                          (letrec*
                           ((xj7413
                             (begin
                               (write '(funapp 1789 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1789 37))
                                  (display "\n")
                                  'module))))
                            (xk7414
                             (begin
                               (write '(funapp 1789 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1789 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8048
                              (begin
                                (write '(funapp 1792 27))
                                (display "\n")
                                ((lambda (j7417 k7418 f7419)
                                   (letrec*
                                    ((g8049
                                      (lambda (g7415 g7416)
                                        (letrec*
                                         ((g8050
                                           (letrec*
                                            ((x8056
                                              (begin
                                                (write '(funapp 1799 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8051
                                              (letrec*
                                               ((x8054
                                                 (letrec*
                                                  ((x8055
                                                    (begin
                                                      (write '(funapp 1804 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1805 45))
                                                    (display "\n")
                                                    (x8055
                                                     j7417
                                                     k7418
                                                     g7415))))
                                                (x8052
                                                 (letrec*
                                                  ((x8053
                                                    (begin
                                                      (write '(funapp 1808 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1809 45))
                                                    (display "\n")
                                                    (x8053
                                                     j7417
                                                     k7418
                                                     g7416)))))
                                               (begin
                                                 (write '(funapp 1810 42))
                                                 (display "\n")
                                                 (f7419 x8054 x8052)))))
                                            (begin
                                              (write '(funapp 1811 39))
                                              (display "\n")
                                              (x8056 j7417 k7418 x8051)))))
                                         g8050))))
                                    g8049))
                                 xj7413
                                 xk7414
                                 mappend))))
                            g8048)))
                         (x8046 (input))
                         (x8045 (input)))
                        (begin
                          (write '(funapp 1820 21))
                          (display "\n")
                          (x8047 x8046 x8045)))))))))
               g8028))))
           g7448))))
       g7431)))
    g7430)))
