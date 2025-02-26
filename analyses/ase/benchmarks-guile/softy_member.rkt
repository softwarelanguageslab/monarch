(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7407 #t)) g7407)))
    (meta (lambda (v) (letrec* ((g7408 v)) g7408)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7409
          (letrec*
           ((g7410
             (letrec*
              ((x-e7411 lst))
              (letrec*
               ((v1742 x-e7411))
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
                   ((x-cnd7412
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7412
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
           g7410)))
        g7409)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7413 (lambda (v) (letrec* ((g7414 v)) g7414)))) g7413)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7415
          (letrec*
           ((x7416 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7416)))))
        g7415))))
   (letrec*
    ((g7417
      (letrec*
       ((g7418
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7419
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7419)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7420
                 (letrec*
                  ((x7422
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7422))))
                (g7421
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7423
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7424 (if val7245 val7245 #f))) g7424)))))
                   g7423))))
               g7421)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7425
                 (letrec*
                  ((x7427
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7427))))
                (g7426
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7428
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7429 (if val7247 val7247 #f))) g7429)))))
                   g7428))))
               g7426)))
           (>
            (lambda (x y)
              (letrec*
               ((g7430
                 (letrec*
                  ((x7432
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7432))))
                (g7431
                 (letrec*
                  ((x7433
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7433)))))
               g7431)))
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
           ((g7434 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7435
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7436
                     (lambda (k j lst)
                       (letrec*
                        ((g7437
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7438
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7438))
                             lst))))
                        g7437))))
                   g7436)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x-cnd7440
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7440
                        g7265
                        (begin
                          (write '(blame g7263 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7439)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7441
                     (letrec*
                      ((x-cnd7442
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7442
                        g7268
                        (begin
                          (write '(blame g7266 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7441)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x-cnd7444
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7444
                        g7271
                        (begin
                          (write '(blame g7269 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7443)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x-cnd7446
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7447 #t)) g7447)) g7274))))
                      (if x-cnd7446
                        g7274
                        (begin
                          (write '(blame g7272 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7445)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7450 #t)) g7450)) g7277))))
                      (if x-cnd7449
                        g7277
                        (begin
                          (write '(blame g7275 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7448)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7452
                        g7280
                        (begin
                          (write '(blame g7278 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7451)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7453
                     (lambda (k j v)
                       (letrec*
                        ((g7454
                          (letrec*
                           ((x7457
                             (letrec*
                              ((x7458
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7458))))
                            (x7455
                             (letrec*
                              ((x7456
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7456)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7457 x7455)))))
                        g7454))))
                   g7453)))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x-cnd7460
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7460
                        g7283
                        (begin
                          (write '(blame g7281 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7459)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x-cnd7462
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7462
                        g7286
                        (begin
                          (write '(blame g7284 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7461)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7463
                     (letrec*
                      ((x-cnd7464
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7464
                        g7289
                        (begin
                          (write '(blame g7287 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7463)))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x-cnd7466
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7292))))
                      (if x-cnd7466
                        g7292
                        (begin
                          (write '(blame g7290 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7465)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7467
                     (lambda (k j v)
                       (letrec*
                        ((g7468
                          (letrec*
                           ((x-cnd7469
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7469
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7468))))
                   g7467)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7470
                     (lambda (k j v)
                       (letrec*
                        ((g7471
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7472
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7472))))
                        g7471))))
                   g7470)))
               (null?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x-cnd7474
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7295))))
                      (if x-cnd7474
                        g7295
                        (begin
                          (write '(blame g7293 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7473)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7475
                     (lambda (k j v)
                       (letrec*
                        ((g7476
                          (letrec*
                           ((x-cnd7477
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7477
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7481
                                (letrec*
                                 ((x7482
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7482))))
                               (x7478
                                (letrec*
                                 ((x7480
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7479
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7480 k j x7479)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7481 x7478)))))))
                        g7476))))
                   g7475)))
               (any? (lambda (v) (letrec* ((g7483 #t)) g7483)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7484
                     (letrec*
                      ((x7485
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7485)))))
                   g7484)))
               (nonzero?/c
                (lambda (g7296 g7297 g7298)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x-cnd7487
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7488
                                (letrec*
                                 ((x7489
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7489)))))
                              g7488))
                           g7298))))
                      (if x-cnd7487
                        g7298
                        (begin
                          (write '(blame g7296 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7296)))))))
                   g7486)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7490
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7491
                          (letrec*
                           ((x-cnd7492
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7493
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7493))
                                g7301))))
                           (if x-cnd7492
                             g7301
                             (begin
                               (write '(blame g7299 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7491))))
                   g7490)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7494
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7495
                          (letrec*
                           ((x-cnd7496
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7497
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7497))
                                g7304))))
                           (if x-cnd7496
                             g7304
                             (begin
                               (write '(blame g7302 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7495))))
                   g7494)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7498
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7499
                          (letrec*
                           ((x-cnd7500
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7501
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7501))
                                g7307))))
                           (if x-cnd7500
                             g7307
                             (begin
                               (write '(blame g7305 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7499))))
                   g7498)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7502
                     (lambda (g7308 g7309 g7310)
                       (letrec*
                        ((g7503
                          (letrec*
                           ((x-cnd7504
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7505
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7505))
                                g7310))))
                           (if x-cnd7504
                             g7310
                             (begin
                               (write '(blame g7308 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7503))))
                   g7502)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7506
                     (lambda (g7311 g7312 g7313)
                       (letrec*
                        ((g7507
                          (letrec*
                           ((x-cnd7508
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7509
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7509))
                                g7313))))
                           (if x-cnd7508
                             g7313
                             (begin
                               (write '(blame g7311 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7311)))))))
                        g7507))))
                   g7506)))
               (meta (lambda (v) (letrec* ((g7510 v)) g7510)))
               (+
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7511
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7513
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7514
                                 (letrec*
                                  ((x7515
                                    (letrec*
                                     ((x7517
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7516
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7320 x7517 x7516)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7515)))))
                               g7514))))
                          g7513))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7512
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7512))))))
                  g7511)))
               (-
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7518
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7520
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7521
                                 (letrec*
                                  ((x7522
                                    (letrec*
                                     ((x7524
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7523
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7327 x7524 x7523)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7522)))))
                               g7521))))
                          g7520))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7519
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7519))))))
                  g7518)))
               (*
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7525
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7527
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7528
                                 (letrec*
                                  ((x7529
                                    (letrec*
                                     ((x7531
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7530
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7334 x7531 x7530)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7332 k7333 x7529)))))
                               g7528))))
                          g7527))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7526
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7526))))))
                  g7525)))
               (<
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7532
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7534
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7535
                                 (letrec*
                                  ((x7536
                                    (letrec*
                                     ((x7538
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7537
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7341 x7538 x7537)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7536)))))
                               g7535))))
                          g7534))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7533
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7533))))))
                  g7532)))
               (>
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7539
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7541
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7542
                                 (letrec*
                                  ((x7543
                                    (letrec*
                                     ((x7545
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7544
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7348 x7545 x7544)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7543)))))
                               g7542))))
                          g7541))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7540
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7540))))))
                  g7539)))
               (<=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7546
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7548
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7549
                                 (letrec*
                                  ((x7550
                                    (letrec*
                                     ((x7552
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7551
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7355 x7552 x7551)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7550)))))
                               g7549))))
                          g7548))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7547
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7547))))))
                  g7546)))
               (>=
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7553
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7555
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7556
                                 (letrec*
                                  ((x7557
                                    (letrec*
                                     ((x7559
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7558
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7362 x7559 x7558)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7360 k7361 x7557)))))
                               g7556))))
                          g7555))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7554
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7554))))))
                  g7553)))
               (add1
                (lambda (x)
                  (letrec*
                   ((g7560
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7560)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7561
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7563
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7564
                                 (letrec*
                                  ((x7565
                                    (letrec*
                                     ((x7567
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7566
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7369 x7567 x7566)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7565)))))
                               g7564))))
                          g7563))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7562
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7562))))))
                  g7561)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7568
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7570
                            (lambda (g7372)
                              (letrec*
                               ((g7571
                                 (letrec*
                                  ((x7572
                                    (letrec*
                                     ((x7573
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7375 x7573)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7572)))))
                               g7571))))
                          g7570))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7569
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7569))))))
                  g7568)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7574
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7576
                            (lambda (g7378)
                              (letrec*
                               ((g7577
                                 (letrec*
                                  ((x7578
                                    (letrec*
                                     ((x7579
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7381 x7579)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7578)))))
                               g7577))))
                          g7576))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7575
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7575))))))
                  g7574)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7580
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7582
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7583
                                 (letrec*
                                  ((x7584
                                    (letrec*
                                     ((x7586
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7585
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7388 x7586 x7585)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7584)))))
                               g7583))))
                          g7582))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7581
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7581))))))
                  g7580)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7587
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7589
                            (lambda (g7391)
                              (letrec*
                               ((g7590
                                 (letrec*
                                  ((x7591
                                    (letrec*
                                     ((x7592
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7394 x7592)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7591)))))
                               g7590))))
                          g7589))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7588
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7588))))))
                  g7587)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7593
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7595
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7596
                                 (letrec*
                                  ((x7597
                                    (letrec*
                                     ((x7599
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7598
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7401 x7599 x7598)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7597)))))
                               g7596))))
                          g7595))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7594
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7594))))))
                  g7593)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7601
                        (letrec*
                         ((x7602
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7602)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7601)))))
                   g7600)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7606
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7606))))
                    (g7604
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7607))))
                    (g7605
                     (letrec*
                      ((x-cnd7608
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7608
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7611
                           (letrec*
                            ((x7612
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7612))))
                          (x7609
                           (letrec*
                            ((x7610
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7610)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7611 x7609)))))))
                   g7605)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7614)))))
                   g7613)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (letrec*
                         ((x7617
                           (letrec*
                            ((x7618
                              (begin
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7618)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7617)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7616)))))
                   g7615)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7620
                        (letrec*
                         ((x7621
                           (letrec*
                            ((x7622
                              (begin
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7622)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7621)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7620)))))
                   g7619)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7627))))
                    (g7625
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
                       ((g7628
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7629 res))
                       g7629))))
                   g7625)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7631
                        (letrec*
                         ((x7632
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7632)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7631)))))
                   g7630)))
               (cdaadr
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
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7636)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7635)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7634)))))
                   g7633)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7639))))
                    (g7638
                     (letrec*
                      ((x-cnd7640
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7640
                        #f
                        (letrec*
                         ((x-cnd7641
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7642 k)))))
                         (if x-cnd7641
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7643)))))))))
                   g7638)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7645)))))
                   g7644)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7648))))
                    (g7647
                     (letrec*
                      ((x-cnd7649
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7649
                        ""
                        (letrec*
                         ((x7652
                           (letrec*
                            ((x7653
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7653))))
                          (x7650
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7651)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7652 x7650)))))))
                   g7647)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7657))))
                    (g7655
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7658))))
                    (g7656
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7659
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7659))))
                   g7656)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7661
                        (letrec*
                         ((x7662
                           (letrec*
                            ((x7663
                              (begin
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7663)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7662)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7661)))))
                   g7660)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7667))))
                    (g7665
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7668))))
                    (g7666
                     (letrec*
                      ((x-cnd7669
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7669
                        x
                        (letrec*
                         ((x7671
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7670
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7671 x7670)))))))
                   g7666)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7672
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7672)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x-cnd7674
                        (letrec*
                         ((x7675 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7675)))))
                      (if x-cnd7674
                        (letrec*
                         ((x7676 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7676)))
                        #f))))
                   g7673)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7678
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7678 9)))))
                      (letrec*
                       ((g7679
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7680
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7680 10)))))
                            (letrec*
                             ((g7681
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7682
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7682 32))))))
                             g7681)))))
                       g7679))))
                   g7677)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x7684
                        (letrec*
                         ((x7685
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7685)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7684)))))
                   g7683)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((x7688
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7688))))
                    (g7687
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7687)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7689
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7689)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7690 #f)) g7690)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7691
                     (letrec*
                      ((x7692
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7692)))))
                   g7691)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((x7695
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7695))))
                    (g7694
                     (letrec*
                      ((x-cnd7696
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7696
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7694)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7697
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7698
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7699
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7699
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7700
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7701
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7701
                                       (letrec*
                                        ((x-cnd7702
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7702
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7703
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7704
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7704
                                             (letrec*
                                              ((x-cnd7705
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7705
                                                (letrec*
                                                 ((x-cnd7706
                                                   (letrec*
                                                    ((x7708
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7707
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7708 x7707)))))
                                                 (if x-cnd7706
                                                   (letrec*
                                                    ((x7710
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7709
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7710 x7709)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7711
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7712
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7712
                                                (letrec*
                                                 ((x-cnd7713
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7713
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7714
                                                       (letrec*
                                                        ((x-cnd7715
                                                          (letrec*
                                                           ((x7716
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
                                                             (= x7716 n)))))
                                                        (if x-cnd7715
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7717
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
                                                                    ((g7718
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7719
                                                                           (letrec*
                                                                            ((x7721
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
                                                                             (x7720
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
                                                                               x7721
                                                                               x7720)))))
                                                                         (if x-cnd7719
                                                                           (letrec*
                                                                            ((x7722
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
                                                                               x7722)))
                                                                           #f)))))
                                                                    g7718))))
                                                                g7717))))
                                                           (letrec*
                                                            ((g7723
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7723))
                                                          #f))))
                                                     g7714))
                                                   #f))
                                                #f)))))
                                         g7711)))))
                                   g7703)))))
                             g7700)))))
                       g7698))))
                   g7697)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7724
                     (letrec*
                      ((x7725
                        (letrec*
                         ((x7726
                           (letrec*
                            ((x7727
                              (begin
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7727)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7726)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x7725)))))
                   g7724)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7729
                        (letrec*
                         ((x7730
                           (letrec*
                            ((x7731
                              (begin
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7731)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7730)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7729)))))
                   g7728)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7732
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g7732)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7736
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7736))))
                    (g7734
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7737))))
                    (g7735
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
                       ((g7738
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7739 res))
                       g7739))))
                   g7735)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7740
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g7740)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7744))))
                    (g7742
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7745))))
                    (g7743
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7746
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7746))))
                   g7743)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (letrec*
                         ((x7749
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7749)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7748)))))
                   g7747)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7751
                        (letrec*
                         ((x7752
                           (letrec*
                            ((x7753
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7753)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7752)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x7751)))))
                   g7750)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7755
                        (letrec*
                         ((x7756
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x7756)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x7755)))))
                   g7754)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7758
                        (letrec*
                         ((x7759
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x7759)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x7758)))))
                   g7757)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7763))))
                    (g7761
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7764))))
                    (g7762
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x7765)))))
                   g7762)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x7769)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x7768)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x7767)))))
                   g7766)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x7772))))
                    (g7771
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g7771)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7773
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g7773)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7775
                        (letrec*
                         ((x7776
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x7776)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x7775)))))
                   g7774)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7777
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g7777)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x7780))))
                    (g7779
                     (letrec*
                      ((x-cnd7781
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7781
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x7785))))
                          (x7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x7783)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x7784 x7782)))))))
                   g7779)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7787
                        (letrec*
                         ((x7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x7789)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x7788)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x7787)))))
                   g7786)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7791
                        (letrec*
                         ((x7792
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x7793)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x7792)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x7791)))))
                   g7790)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x7796))))
                    (g7795
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x7797)))))
                   g7795)))
               (caadar
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
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x7801)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x7800)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7799)))))
                   g7798)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x7805))))
                    (g7803
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x7806))))
                    (g7804
                     (letrec*
                      ((x-cnd7807
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7807
                        (letrec*
                         ((g7808
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g7808)
                        (letrec*
                         ((x-cnd7809
                           (letrec*
                            ((x7810
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x7810)))))
                         (if x-cnd7809
                           (letrec*
                            ((g7811
                              (letrec*
                               ((x7812
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x7812)))))
                            g7811)
                           (letrec*
                            ((x-cnd7813
                              (letrec*
                               ((x7814
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x7814)))))
                            (if x-cnd7813
                              (letrec*
                               ((g7815
                                 (letrec*
                                  ((x7817
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x7816
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x7817 x7816)))))
                               g7815)
                              (letrec*
                               ((x-cnd7818
                                 (letrec*
                                  ((x7819
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x7819)))))
                               (if x-cnd7818
                                 (letrec*
                                  ((g7820
                                    (letrec*
                                     ((x7823
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x7822
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7821
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x7823 x7822 x7821)))))
                                  g7820)
                                 (letrec*
                                  ((x-cnd7824
                                    (letrec*
                                     ((x7825
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x7825)))))
                                  (if x-cnd7824
                                    (letrec*
                                     ((g7826
                                       (letrec*
                                        ((x7830
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x7829
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7828
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7827
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x7830 x7829 x7828 x7827)))))
                                     g7826)
                                    (letrec*
                                     ((x-cnd7831
                                       (letrec*
                                        ((x7832
                                          (letrec*
                                           ((x7833
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x7833)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x7832)))))
                                     (if x-cnd7831
                                       (letrec*
                                        ((g7834
                                          (letrec*
                                           ((x7840
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x7839
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7838
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7837
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7835
                                             (letrec*
                                              ((x7836
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x7836)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x7840
                                              x7839
                                              x7838
                                              x7837
                                              x7835)))))
                                        g7834)
                                       (letrec*
                                        ((x-cnd7841
                                          (letrec*
                                           ((x7842
                                             (letrec*
                                              ((x7843
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x7843)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x7842)))))
                                        (if x-cnd7841
                                          (letrec*
                                           ((g7844
                                             (letrec*
                                              ((x7852
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7851
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7850
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7849
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7847
                                                (letrec*
                                                 ((x7848
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x7848))))
                                               (x7845
                                                (letrec*
                                                 ((x7846
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x7846)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x7852
                                                 x7851
                                                 x7850
                                                 x7849
                                                 x7847
                                                 x7845)))))
                                           g7844)
                                          (letrec*
                                           ((x-cnd7853
                                             (letrec*
                                              ((x7854
                                                (letrec*
                                                 ((x7855
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x7855)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x7854)))))
                                           (if x-cnd7853
                                             (letrec*
                                              ((g7856
                                                (letrec*
                                                 ((x7866
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7865
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7864
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7863
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7861
                                                   (letrec*
                                                    ((x7862
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x7862))))
                                                  (x7859
                                                   (letrec*
                                                    ((x7860
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x7860))))
                                                  (x7857
                                                   (letrec*
                                                    ((x7858
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x7858)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x7866
                                                    x7865
                                                    x7864
                                                    x7863
                                                    x7861
                                                    x7859
                                                    x7857)))))
                                              g7856)
                                             (letrec*
                                              ((g7867
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7867)))))))))))))))))))
                   g7804)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7870
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x7870))))
                    (g7869
                     (letrec*
                      ((x-cnd7871
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7871
                        #f
                        (letrec*
                         ((x-cnd7872
                           (letrec*
                            ((x7873
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x7873 e)))))
                         (if x-cnd7872
                           l
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x7874)))))))))
                   g7869)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7876
                        (letrec*
                         ((x7877
                           (letrec*
                            ((x7878
                              (begin
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x7878)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x7877)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x7876)))))
                   g7875)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7880
                        (letrec*
                         ((x7881
                           (letrec*
                            ((x7882
                              (begin
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x7882)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x7881)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x7880)))))
                   g7879)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7883
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g7883)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x7886))))
                    (g7885
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g7885)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7888
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7888))))
                   g7887)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7890
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x7890)))))
                   g7889)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7892
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7892
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x7893)))
                           #f))))
                      (letrec*
                       ((g7894
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g7894))))
                   g7891)))
               (cddaar
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
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x7898)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x7897)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x7896)))))
                   g7895)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x-cnd7900
                        (letrec*
                         ((x7901 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x7901 c)))))
                      (if x-cnd7900
                        (letrec*
                         ((x7902 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x7902)))
                        #f))))
                   g7899)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7905
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7905))))
                    (g7904
                     (letrec*
                      ((x-cnd7906
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7906
                        #f
                        (letrec*
                         ((x-cnd7907
                           (letrec*
                            ((x7908
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x7908 k)))))
                         (if x-cnd7907
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x7909)))))))))
                   g7904)))
               (not (lambda (x) (letrec* ((g7910 (if x #f #t))) g7910)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7911
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g7911)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x7914))))
                    (g7913
                     (letrec*
                      ((x-cnd7915
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7915
                        #f
                        (letrec*
                         ((x-cnd7916
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x7917 e)))))
                         (if x-cnd7916
                           l
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x7918)))))))))
                   g7913)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7920
                        (letrec*
                         ((x7921
                           (letrec*
                            ((x7922
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x7922)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x7921)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x7920)))))
                   g7919)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7925))))
                    (g7924
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7926
                             (letrec*
                              ((x-cnd7927
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7927
                                0
                                (letrec*
                                 ((x7928
                                   (letrec*
                                    ((x7929
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x7929)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x7928)))))))
                           g7926))))
                      (letrec*
                       ((g7930
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g7930))))
                   g7924)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7934))))
                    (g7932
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7935))))
                    (g7933
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7936
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7936))))
                   g7933)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x7938)))))
                   g7937)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7940
                        (letrec*
                         ((x7941
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x7941)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x7940)))))
                   g7939)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x7944))))
                    (g7943
                     (letrec*
                      ((x-cnd7945
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7945
                        #f
                        (letrec*
                         ((x-cnd7946
                           (letrec*
                            ((x7947
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x7947 k)))))
                         (if x-cnd7946
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7948
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x7948)))))))))
                   g7943)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x7950)))))
                   g7949)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7954))))
                    (g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x7956)))))
                   g7953)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7958
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7958))))
                   g7957)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x7962))))
                    (g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x7963))))
                    (g7961
                     (letrec*
                      ((x-cnd7964
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7964
                        #t
                        (letrec*
                         ((x-cnd7965
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7965
                           (letrec*
                            ((g7966
                              (letrec*
                               ((x7968
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x7968))))
                             (g7967
                              (letrec*
                               ((x7969
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x7969)))))
                            g7967)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g7961)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x7972))))
                    (g7971
                     (letrec*
                      ((x-cnd7973
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7973
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7971)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7977))))
                    (g7975
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7978))))
                    (g7976
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7979
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7979))))
                   g7976)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x7981
                        (letrec*
                         ((x7982
                           (letrec*
                            ((x7983
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x7983)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x7982)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x7981)))))
                   g7980)))
               (newline (lambda () (letrec* ((g7984 #f)) g7984)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x7987
                        (letrec*
                         ((x7988
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x7988))))
                       (x7986
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x7987 x7986)))))
                   g7985)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x7993
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x7993))))
                    (g7990
                     (letrec*
                      ((x7994
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x7994))))
                    (g7991
                     (letrec*
                      ((x7995
                        (letrec*
                         ((x7996
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x7996)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x7995))))
                    (g7992
                     (letrec*
                      ((x-cnd7997
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7997
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7999
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x7998
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x7999 x7998)))))))
                   g7992)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((x-cnd8001
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8001
                        a
                        (letrec*
                         ((x8002
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x8002)))))))
                   g8000)))
               (member_
                (lambda (x l)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x-cnd8004
                        (begin
                          (write '(funapp 1701 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd8004
                        empty
                        (letrec*
                         ((x-cnd8005
                           (letrec*
                            ((x8006
                              (begin
                                (write '(funapp 1706 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1706 55))
                              (display "\n")
                              (equal? x x8006)))))
                         (if x-cnd8005
                           l
                           (letrec*
                            ((x8007
                              (begin
                                (write '(funapp 1709 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1709 55))
                              (display "\n")
                              (member_ x x8007)))))))))
                   g8003))))
              (letrec*
               ((g8008
                 (begin
                   (write '(funapp 1713 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1714 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((xj7402
                          (begin
                            (write '(funapp 1716 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1716 34))
                               (display "\n")
                               'module))))
                         (xk7403
                          (begin
                            (write '(funapp 1716 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1716 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8009
                           (begin
                             (write '(funapp 1719 24))
                             (display "\n")
                             ((lambda (j7404 k7405 f7406)
                                (letrec*
                                 ((g8010
                                   (lambda ()
                                     (letrec*
                                      ((g8011
                                        (letrec*
                                         ((x8013
                                           (letrec*
                                            ((x8015
                                              (begin
                                                (write '(funapp 1728 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8014
                                              (begin
                                                (write '(funapp 1729 47))
                                                (display "\n")
                                                (listof any/c))))
                                            (begin
                                              (write '(funapp 1730 39))
                                              (display "\n")
                                              (any/c x8015 x8014))))
                                          (x8012
                                           (begin
                                             (write '(funapp 1731 44))
                                             (display "\n")
                                             (f7406))))
                                         (begin
                                           (write '(funapp 1732 36))
                                           (display "\n")
                                           (x8013 j7404 k7405 x8012)))))
                                      g8011))))
                                 g8010))
                              xj7402
                              xk7403
                              member_))))
                         g8009))))))))
               g8008))))
           g7435))))
       g7418)))
    g7417)))
