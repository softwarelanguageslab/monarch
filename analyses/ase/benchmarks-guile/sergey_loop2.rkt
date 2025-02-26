(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7402 #t)) g7402)))
    (meta (lambda (v) (letrec* ((g7403 v)) g7403)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7404
          (letrec*
           ((g7405
             (letrec*
              ((x-e7406 lst))
              (letrec*
               ((v1742 x-e7406))
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
                   ((x-cnd7407
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7407
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
           g7405)))
        g7404)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7408 (lambda (v) (letrec* ((g7409 v)) g7409)))) g7408)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7410
          (letrec*
           ((x7411 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7411)))))
        g7410))))
   (letrec*
    ((g7412
      (letrec*
       ((g7413
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7414
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7414)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7415
                 (letrec*
                  ((x7417
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7417))))
                (g7416
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7418
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7419 (if val7245 val7245 #f))) g7419)))))
                   g7418))))
               g7416)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7420
                 (letrec*
                  ((x7422
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7422))))
                (g7421
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7423
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7424 (if val7247 val7247 #f))) g7424)))))
                   g7423))))
               g7421)))
           (>
            (lambda (x y)
              (letrec*
               ((g7425
                 (letrec*
                  ((x7427
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7427))))
                (g7426
                 (letrec*
                  ((x7428
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7428)))))
               g7426)))
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
           ((g7429 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7430
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7431
                     (lambda (k j lst)
                       (letrec*
                        ((g7432
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7433
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7433))
                             lst))))
                        g7432))))
                   g7431)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7434
                     (letrec*
                      ((x-cnd7435
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7435
                        g7265
                        (begin
                          (write '(blame g7263 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7434)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7436
                     (letrec*
                      ((x-cnd7437
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7437
                        g7268
                        (begin
                          (write '(blame g7266 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7436)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7438
                     (letrec*
                      ((x-cnd7439
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7439
                        g7271
                        (begin
                          (write '(blame g7269 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7438)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x-cnd7441
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7442 #t)) g7442)) g7274))))
                      (if x-cnd7441
                        g7274
                        (begin
                          (write '(blame g7272 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7440)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x-cnd7444
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7445 #t)) g7445)) g7277))))
                      (if x-cnd7444
                        g7277
                        (begin
                          (write '(blame g7275 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7443)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7447
                        g7280
                        (begin
                          (write '(blame g7278 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7446)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7448
                     (lambda (k j v)
                       (letrec*
                        ((g7449
                          (letrec*
                           ((x7452
                             (letrec*
                              ((x7453
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7453))))
                            (x7450
                             (letrec*
                              ((x7451
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7451)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7452 x7450)))))
                        g7449))))
                   g7448)))
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7455
                        g7283
                        (begin
                          (write '(blame g7281 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7454)))
               (integer?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7457
                        g7286
                        (begin
                          (write '(blame g7284 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7456)))
               (symbol?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7459
                        g7289
                        (begin
                          (write '(blame g7287 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7458)))
               (string?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7292))))
                      (if x-cnd7461
                        g7292
                        (begin
                          (write '(blame g7290 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7460)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7462
                     (lambda (k j v)
                       (letrec*
                        ((g7463
                          (letrec*
                           ((x-cnd7464
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7464
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7463))))
                   g7462)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7465
                     (lambda (k j v)
                       (letrec*
                        ((g7466
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7467
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7467))))
                        g7466))))
                   g7465)))
               (null?/c
                (lambda (g7293 g7294 g7295)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x-cnd7469
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7295))))
                      (if x-cnd7469
                        g7295
                        (begin
                          (write '(blame g7293 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7293)))))))
                   g7468)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7470
                     (lambda (k j v)
                       (letrec*
                        ((g7471
                          (letrec*
                           ((x-cnd7472
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7472
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7476
                                (letrec*
                                 ((x7477
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7477))))
                               (x7473
                                (letrec*
                                 ((x7475
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7474
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7475 k j x7474)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7476 x7473)))))))
                        g7471))))
                   g7470)))
               (any? (lambda (v) (letrec* ((g7478 #t)) g7478)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x7480
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7480)))))
                   g7479)))
               (nonzero?/c
                (lambda (g7296 g7297 g7298)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x-cnd7482
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7483
                                (letrec*
                                 ((x7484
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7484)))))
                              g7483))
                           g7298))))
                      (if x-cnd7482
                        g7298
                        (begin
                          (write '(blame g7296 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7296)))))))
                   g7481)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7485
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7486
                          (letrec*
                           ((x-cnd7487
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7488
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7488))
                                g7301))))
                           (if x-cnd7487
                             g7301
                             (begin
                               (write '(blame g7299 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7486))))
                   g7485)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7489
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7490
                          (letrec*
                           ((x-cnd7491
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7492
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7492))
                                g7304))))
                           (if x-cnd7491
                             g7304
                             (begin
                               (write '(blame g7302 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7490))))
                   g7489)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7493
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7494
                          (letrec*
                           ((x-cnd7495
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7496
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7496))
                                g7307))))
                           (if x-cnd7495
                             g7307
                             (begin
                               (write '(blame g7305 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7494))))
                   g7493)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7497
                     (lambda (g7308 g7309 g7310)
                       (letrec*
                        ((g7498
                          (letrec*
                           ((x-cnd7499
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7500
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7500))
                                g7310))))
                           (if x-cnd7499
                             g7310
                             (begin
                               (write '(blame g7308 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7308)))))))
                        g7498))))
                   g7497)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7501
                     (lambda (g7311 g7312 g7313)
                       (letrec*
                        ((g7502
                          (letrec*
                           ((x-cnd7503
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7504
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7504))
                                g7313))))
                           (if x-cnd7503
                             g7313
                             (begin
                               (write '(blame g7311 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7311)))))))
                        g7502))))
                   g7501)))
               (meta (lambda (v) (letrec* ((g7505 v)) g7505)))
               (+
                (letrec*
                 ((xj7314
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7315
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7506
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7318 k7319 f7320)
                         (letrec*
                          ((g7508
                            (lambda (g7316 g7317)
                              (letrec*
                               ((g7509
                                 (letrec*
                                  ((x7510
                                    (letrec*
                                     ((x7512
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7316)))
                                      (x7511
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7318 k7319 g7317))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7320 x7512 x7511)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7318 k7319 x7510)))))
                               g7509))))
                          g7508))
                       xj7314
                       xk7315
                       (lambda (a b)
                         (letrec*
                          ((g7507
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7507))))))
                  g7506)))
               (-
                (letrec*
                 ((xj7321
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7322
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7513
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7325 k7326 f7327)
                         (letrec*
                          ((g7515
                            (lambda (g7323 g7324)
                              (letrec*
                               ((g7516
                                 (letrec*
                                  ((x7517
                                    (letrec*
                                     ((x7519
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7323)))
                                      (x7518
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7325 k7326 g7324))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7327 x7519 x7518)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7325 k7326 x7517)))))
                               g7516))))
                          g7515))
                       xj7321
                       xk7322
                       (lambda (a b)
                         (letrec*
                          ((g7514
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7514))))))
                  g7513)))
               (*
                (letrec*
                 ((xj7328
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7329
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7520
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7522
                            (lambda (g7330 g7331)
                              (letrec*
                               ((g7523
                                 (letrec*
                                  ((x7524
                                    (letrec*
                                     ((x7526
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7330)))
                                      (x7525
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7334 x7526 x7525)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7332 k7333 x7524)))))
                               g7523))))
                          g7522))
                       xj7328
                       xk7329
                       (lambda (a b)
                         (letrec*
                          ((g7521
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7521))))))
                  g7520)))
               (<
                (letrec*
                 ((xj7335
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7336
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7527
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7339 k7340 f7341)
                         (letrec*
                          ((g7529
                            (lambda (g7337 g7338)
                              (letrec*
                               ((g7530
                                 (letrec*
                                  ((x7531
                                    (letrec*
                                     ((x7533
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7337)))
                                      (x7532
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7339 k7340 g7338))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7341 x7533 x7532)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7339 k7340 x7531)))))
                               g7530))))
                          g7529))
                       xj7335
                       xk7336
                       (lambda (a b)
                         (letrec*
                          ((g7528
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7528))))))
                  g7527)))
               (>
                (letrec*
                 ((xj7342
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7343
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7534
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7346 k7347 f7348)
                         (letrec*
                          ((g7536
                            (lambda (g7344 g7345)
                              (letrec*
                               ((g7537
                                 (letrec*
                                  ((x7538
                                    (letrec*
                                     ((x7540
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7344)))
                                      (x7539
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7346 k7347 g7345))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7348 x7540 x7539)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7346 k7347 x7538)))))
                               g7537))))
                          g7536))
                       xj7342
                       xk7343
                       (lambda (a b)
                         (letrec*
                          ((g7535
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7535))))))
                  g7534)))
               (<=
                (letrec*
                 ((xj7349
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7350
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7541
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7353 k7354 f7355)
                         (letrec*
                          ((g7543
                            (lambda (g7351 g7352)
                              (letrec*
                               ((g7544
                                 (letrec*
                                  ((x7545
                                    (letrec*
                                     ((x7547
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7351)))
                                      (x7546
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7353 k7354 g7352))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7355 x7547 x7546)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7353 k7354 x7545)))))
                               g7544))))
                          g7543))
                       xj7349
                       xk7350
                       (lambda (a b)
                         (letrec*
                          ((g7542
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7542))))))
                  g7541)))
               (>=
                (letrec*
                 ((xj7356
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7357
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7548
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7360 k7361 f7362)
                         (letrec*
                          ((g7550
                            (lambda (g7358 g7359)
                              (letrec*
                               ((g7551
                                 (letrec*
                                  ((x7552
                                    (letrec*
                                     ((x7554
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7358)))
                                      (x7553
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7360 k7361 g7359))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7362 x7554 x7553)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7360 k7361 x7552)))))
                               g7551))))
                          g7550))
                       xj7356
                       xk7357
                       (lambda (a b)
                         (letrec*
                          ((g7549
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7549))))))
                  g7548)))
               (add1
                (lambda (x)
                  (letrec*
                   ((g7555
                     (begin (write '(funapp 545 51)) (display "\n") (+ x 1))))
                   g7555)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 548 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 548 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7556
                    (begin
                      (write '(funapp 551 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7558
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7559
                                 (letrec*
                                  ((x7560
                                    (letrec*
                                     ((x7562
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7561
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 562 36))
                                       (display "\n")
                                       (f7369 x7562 x7561)))))
                                  (begin
                                    (write '(funapp 563 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7560)))))
                               g7559))))
                          g7558))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7557
                            (begin
                              (write '(funapp 568 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7557))))))
                  g7556)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 572 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 572 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7563
                    (begin
                      (write '(funapp 575 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7565
                            (lambda (g7372)
                              (letrec*
                               ((g7566
                                 (letrec*
                                  ((x7567
                                    (letrec*
                                     ((x7568
                                       (begin
                                         (write '(funapp 584 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 585 36))
                                       (display "\n")
                                       (f7375 x7568)))))
                                  (begin
                                    (write '(funapp 586 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7567)))))
                               g7566))))
                          g7565))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7564
                            (begin
                              (write '(funapp 591 51))
                              (display "\n")
                              (orig-car p))))
                          g7564))))))
                  g7563)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7569
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7571
                            (lambda (g7378)
                              (letrec*
                               ((g7572
                                 (letrec*
                                  ((x7573
                                    (letrec*
                                     ((x7574
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7381 x7574)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7573)))))
                               g7572))))
                          g7571))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7570
                            (begin
                              (write '(funapp 614 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7570))))))
                  g7569)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 618 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 618 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7575
                    (begin
                      (write '(funapp 621 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7577
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7578
                                 (letrec*
                                  ((x7579
                                    (letrec*
                                     ((x7581
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7580
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 632 36))
                                       (display "\n")
                                       (f7388 x7581 x7580)))))
                                  (begin
                                    (write '(funapp 633 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7579)))))
                               g7578))))
                          g7577))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7576
                            (begin
                              (write '(funapp 639 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7576))))))
                  g7575)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 643 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 643 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7582
                    (begin
                      (write '(funapp 646 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7584
                            (lambda (g7391)
                              (letrec*
                               ((g7585
                                 (letrec*
                                  ((x7586
                                    (letrec*
                                     ((x7587
                                       (begin
                                         (write '(funapp 655 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 656 36))
                                       (display "\n")
                                       (f7394 x7587)))))
                                  (begin
                                    (write '(funapp 657 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7586)))))
                               g7585))))
                          g7584))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7583
                            (begin
                              (write '(funapp 663 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7583))))))
                  g7582)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 667 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 667 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7588
                    (begin
                      (write '(funapp 670 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7590
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7591
                                 (letrec*
                                  ((x7592
                                    (letrec*
                                     ((x7594
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7593
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 681 36))
                                       (display "\n")
                                       (f7401 x7594 x7593)))))
                                  (begin
                                    (write '(funapp 682 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7592)))))
                               g7591))))
                          g7590))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7589
                            (begin
                              (write '(funapp 688 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7589))))))
                  g7588)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x7596
                        (letrec*
                         ((x7597
                           (begin
                             (write '(funapp 695 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 695 58))
                           (display "\n")
                           (cdr x7597)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7596)))))
                   g7595)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7601
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 702 62))
                        (display "\n")
                        (assert x7601))))
                    (g7599
                     (letrec*
                      ((x7602
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 703 57))
                        (display "\n")
                        (assert x7602))))
                    (g7600
                     (letrec*
                      ((x-cnd7603
                        (begin
                          (write '(funapp 706 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7603
                        (begin (write '(funapp 708 24)) (display "\n") '())
                        (letrec*
                         ((x7606
                           (letrec*
                            ((x7607
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (f x7607))))
                          (x7604
                           (letrec*
                            ((x7605
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (map f x7605)))))
                         (begin
                           (write '(funapp 712 26))
                           (display "\n")
                           (cons x7606 x7604)))))))
                   g7600)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7609
                        (begin
                          (write '(funapp 717 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 717 55))
                        (display "\n")
                        (cdr x7609)))))
                   g7608)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7611
                        (letrec*
                         ((x7612
                           (letrec*
                            ((x7613
                              (begin
                                (write '(funapp 726 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 726 61))
                              (display "\n")
                              (car x7613)))))
                         (begin
                           (write '(funapp 727 26))
                           (display "\n")
                           (cdr x7612)))))
                      (begin
                        (write '(funapp 728 23))
                        (display "\n")
                        (car x7611)))))
                   g7610)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (letrec*
                         ((x7616
                           (letrec*
                            ((x7617
                              (begin
                                (write '(funapp 737 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 737 61))
                              (display "\n")
                              (cdr x7617)))))
                         (begin
                           (write '(funapp 738 26))
                           (display "\n")
                           (car x7616)))))
                      (begin
                        (write '(funapp 739 23))
                        (display "\n")
                        (cdr x7615)))))
                   g7614)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 745 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 745 60))
                        (display "\n")
                        (assert x7621))))
                    (g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 747 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 747 59))
                        (display "\n")
                        (assert x7622))))
                    (g7620
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
                       ((g7623
                         (begin
                           (write '(funapp 753 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7624 res))
                       g7624))))
                   g7620)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (letrec*
                         ((x7627
                           (begin
                             (write '(funapp 761 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 761 58))
                           (display "\n")
                           (cdr x7627)))))
                      (begin
                        (write '(funapp 762 23))
                        (display "\n")
                        (car x7626)))))
                   g7625)))
               (cdaadr
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
                                (write '(funapp 771 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 771 61))
                              (display "\n")
                              (car x7631)))))
                         (begin
                           (write '(funapp 772 26))
                           (display "\n")
                           (car x7630)))))
                      (begin
                        (write '(funapp 773 23))
                        (display "\n")
                        (cdr x7629)))))
                   g7628)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 778 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 778 57))
                        (display "\n")
                        (assert x7634))))
                    (g7633
                     (letrec*
                      ((x-cnd7635
                        (begin
                          (write '(funapp 781 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7635
                        #f
                        (letrec*
                         ((x-cnd7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 786 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 786 56))
                              (display "\n")
                              (eq? x7637 k)))))
                         (if x-cnd7636
                           (begin
                             (write '(funapp 788 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 789 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 789 55))
                              (display "\n")
                              (assq k x7638)))))))))
                   g7633)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 794 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (= 0 x7640)))))
                   g7639)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 799 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 799 57))
                        (display "\n")
                        (assert x7643))))
                    (g7642
                     (letrec*
                      ((x-cnd7644
                        (begin
                          (write '(funapp 802 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7644
                        ""
                        (letrec*
                         ((x7647
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 807 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 807 55))
                              (display "\n")
                              (char->string x7648))))
                          (x7645
                           (letrec*
                            ((x7646
                              (begin
                                (write '(funapp 809 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 809 55))
                              (display "\n")
                              (list->string x7646)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (string-append x7647 x7645)))))))
                   g7642)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7652))))
                    (g7650
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7653))))
                    (g7651
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 819 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7654
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 821 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7654))))
                   g7651)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7656
                        (letrec*
                         ((x7657
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 831 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 831 61))
                              (display "\n")
                              (cdr x7658)))))
                         (begin
                           (write '(funapp 832 26))
                           (display "\n")
                           (cdr x7657)))))
                      (begin
                        (write '(funapp 833 23))
                        (display "\n")
                        (cdr x7656)))))
                   g7655)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7662))))
                    (g7660
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7663))))
                    (g7661
                     (letrec*
                      ((x-cnd7664
                        (begin
                          (write '(funapp 842 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7664
                        x
                        (letrec*
                         ((x7666
                           (begin
                             (write '(funapp 846 34))
                             (display "\n")
                             (cdr x)))
                          (x7665
                           (begin
                             (write '(funapp 846 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 847 26))
                           (display "\n")
                           (list-tail x7666 x7665)))))))
                   g7661)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7667
                     (begin (write '(funapp 849 49)) (display "\n") '())))
                   g7667)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x-cnd7669
                        (letrec*
                         ((x7670 #\a))
                         (begin
                           (write '(funapp 856 48))
                           (display "\n")
                           (char-ci>=? c x7670)))))
                      (if x-cnd7669
                        (letrec*
                         ((x7671 #\z))
                         (begin
                           (write '(funapp 858 48))
                           (display "\n")
                           (char-ci<=? c x7671)))
                        #f))))
                   g7668)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7673
                           (begin
                             (write '(funapp 867 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 867 62))
                           (display "\n")
                           (= x7673 9)))))
                      (letrec*
                       ((g7674
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7675
                                 (begin
                                   (write '(funapp 875 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 876 32))
                                 (display "\n")
                                 (= x7675 10)))))
                            (letrec*
                             ((g7676
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7677
                                    (begin
                                      (write '(funapp 882 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 883 35))
                                    (display "\n")
                                    (= x7677 32))))))
                             g7676)))))
                       g7674))))
                   g7672)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((x7679
                        (letrec*
                         ((x7680
                           (begin
                             (write '(funapp 892 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 892 58))
                           (display "\n")
                           (cdr x7680)))))
                      (begin
                        (write '(funapp 893 23))
                        (display "\n")
                        (cdr x7679)))))
                   g7678)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((x7683
                        (begin
                          (write '(funapp 898 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 898 59))
                        (display "\n")
                        (assert x7683))))
                    (g7682
                     (begin (write '(funapp 899 28)) (display "\n") (> x 0))))
                   g7682)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7684
                     (begin
                       (write '(funapp 901 59))
                       (display "\n")
                       (bool-top))))
                   g7684)))
               ($pc (begin (write '(funapp 902 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7685 #f)) g7685)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((x7687
                        (begin
                          (write '(funapp 908 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 908 55))
                        (display "\n")
                        (cdr x7687)))))
                   g7686)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7688
                     (letrec*
                      ((x7690
                        (begin
                          (write '(funapp 913 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 913 59))
                        (display "\n")
                        (assert x7690))))
                    (g7689
                     (letrec*
                      ((x-cnd7691
                        (begin
                          (write '(funapp 916 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7691
                        (begin
                          (write '(funapp 917 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 917 49))
                          (display "\n")
                          (floor x))))))
                   g7689)))
               ($cmp (begin (write '(funapp 919 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7692
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 925 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7693
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7694
                                 (begin
                                   (write '(funapp 933 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7694
                                 (begin
                                   (write '(funapp 934 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7695
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7696
                                       (begin
                                         (write '(funapp 942 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7696
                                       (letrec*
                                        ((x-cnd7697
                                          (begin
                                            (write '(funapp 945 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7697
                                          (begin
                                            (write '(funapp 946 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7698
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7699
                                             (begin
                                               (write '(funapp 955 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7699
                                             (letrec*
                                              ((x-cnd7700
                                                (begin
                                                  (write '(funapp 958 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7700
                                                (letrec*
                                                 ((x-cnd7701
                                                   (letrec*
                                                    ((x7703
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7702
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 965 53))
                                                      (display "\n")
                                                      (equal? x7703 x7702)))))
                                                 (if x-cnd7701
                                                   (letrec*
                                                    ((x7705
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7704
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 970 53))
                                                      (display "\n")
                                                      (equal? x7705 x7704)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7706
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7707
                                                (begin
                                                  (write '(funapp 979 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7707
                                                (letrec*
                                                 ((x-cnd7708
                                                   (begin
                                                     (write '(funapp 982 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7708
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 985 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7709
                                                       (letrec*
                                                        ((x-cnd7710
                                                          (letrec*
                                                           ((x7711
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
                                                             (= x7711 n)))))
                                                        (if x-cnd7710
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7712
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
                                                                    ((g7713
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7714
                                                                           (letrec*
                                                                            ((x7716
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
                                                                             (x7715
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
                                                                               x7716
                                                                               x7715)))))
                                                                         (if x-cnd7714
                                                                           (letrec*
                                                                            ((x7717
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
                                                                               x7717)))
                                                                           #f)))))
                                                                    g7713))))
                                                                g7712))))
                                                           (letrec*
                                                            ((g7718
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1034
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7718))
                                                          #f))))
                                                     g7709))
                                                   #f))
                                                #f)))))
                                         g7706)))))
                                   g7698)))))
                             g7695)))))
                       g7693))))
                   g7692)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7719
                     (letrec*
                      ((x7720
                        (letrec*
                         ((x7721
                           (letrec*
                            ((x7722
                              (begin
                                (write '(funapp 1052 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1052 61))
                              (display "\n")
                              (car x7722)))))
                         (begin
                           (write '(funapp 1053 26))
                           (display "\n")
                           (car x7721)))))
                      (begin
                        (write '(funapp 1054 23))
                        (display "\n")
                        (cdr x7720)))))
                   g7719)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7723
                     (letrec*
                      ((x7724
                        (letrec*
                         ((x7725
                           (letrec*
                            ((x7726
                              (begin
                                (write '(funapp 1063 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1063 61))
                              (display "\n")
                              (cdr x7726)))))
                         (begin
                           (write '(funapp 1064 26))
                           (display "\n")
                           (car x7725)))))
                      (begin
                        (write '(funapp 1065 23))
                        (display "\n")
                        (car x7724)))))
                   g7723)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7727
                     (begin
                       (write '(funapp 1067 53))
                       (display "\n")
                       (eq? x y))))
                   g7727)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7731
                        (begin
                          (write '(funapp 1072 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1072 60))
                        (display "\n")
                        (assert x7731))))
                    (g7729
                     (letrec*
                      ((x7732
                        (begin
                          (write '(funapp 1074 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1074 59))
                        (display "\n")
                        (assert x7732))))
                    (g7730
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
                       ((g7733
                         (begin
                           (write '(funapp 1080 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7734 res))
                       g7734))))
                   g7730)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7735
                     (begin
                       (write '(funapp 1083 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1083 57))
                          (display "\n")
                          '())))))
                   g7735)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7739))))
                    (g7737
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7740))))
                    (g7738
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1091 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7741
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1093 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7741))))
                   g7738)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (letrec*
                         ((x7744
                           (begin
                             (write '(funapp 1101 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1101 58))
                           (display "\n")
                           (car x7744)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7743)))))
                   g7742)))
               (cdaddr
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7748)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7747)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (cdr x7746)))))
                   g7745)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (letrec*
                         ((x7751
                           (begin
                             (write '(funapp 1121 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1121 58))
                           (display "\n")
                           (cdr x7751)))))
                      (begin
                        (write '(funapp 1122 23))
                        (display "\n")
                        (car x7750)))))
                   g7749)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7753
                        (letrec*
                         ((x7754
                           (begin
                             (write '(funapp 1129 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1129 58))
                           (display "\n")
                           (car x7754)))))
                      (begin
                        (write '(funapp 1130 23))
                        (display "\n")
                        (car x7753)))))
                   g7752)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7758))))
                    (g7756
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1136 58))
                        (display "\n")
                        (assert x7759))))
                    (g7757
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 1137 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1137 66))
                        (display "\n")
                        (not x7760)))))
                   g7757)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1147 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1147 61))
                              (display "\n")
                              (car x7764)))))
                         (begin
                           (write '(funapp 1148 26))
                           (display "\n")
                           (car x7763)))))
                      (begin
                        (write '(funapp 1149 23))
                        (display "\n")
                        (car x7762)))))
                   g7761)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1154 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1154 59))
                        (display "\n")
                        (assert x7767))))
                    (g7766
                     (begin (write '(funapp 1155 28)) (display "\n") (< x 0))))
                   g7766)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7768
                     (begin
                       (write '(funapp 1157 53))
                       (display "\n")
                       (memq e l))))
                   g7768)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7770
                        (letrec*
                         ((x7771
                           (begin
                             (write '(funapp 1163 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1163 58))
                           (display "\n")
                           (car x7771)))))
                      (begin
                        (write '(funapp 1164 23))
                        (display "\n")
                        (car x7770)))))
                   g7769)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7772
                     (begin (write '(funapp 1166 51)) (display "\n") '())))
                   g7772)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1170 57))
                        (display "\n")
                        (assert x7775))))
                    (g7774
                     (letrec*
                      ((x-cnd7776
                        (begin
                          (write '(funapp 1173 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7776
                        (begin (write '(funapp 1175 24)) (display "\n") '())
                        (letrec*
                         ((x7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (reverse x7780))))
                          (x7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (list x7778)))))
                         (begin
                           (write '(funapp 1179 26))
                           (display "\n")
                           (append x7779 x7777)))))))
                   g7774)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7782
                        (letrec*
                         ((x7783
                           (letrec*
                            ((x7784
                              (begin
                                (write '(funapp 1188 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1188 61))
                              (display "\n")
                              (car x7784)))))
                         (begin
                           (write '(funapp 1189 26))
                           (display "\n")
                           (car x7783)))))
                      (begin
                        (write '(funapp 1190 23))
                        (display "\n")
                        (car x7782)))))
                   g7781)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7786
                        (letrec*
                         ((x7787
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 1199 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1199 61))
                              (display "\n")
                              (car x7788)))))
                         (begin
                           (write '(funapp 1200 26))
                           (display "\n")
                           (cdr x7787)))))
                      (begin
                        (write '(funapp 1201 23))
                        (display "\n")
                        (cdr x7786)))))
                   g7785)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1206 59))
                        (display "\n")
                        (assert x7791))))
                    (g7790
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1207 60))
                        (display "\n")
                        (= 1 x7792)))))
                   g7790)))
               (caadar
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
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (cdr x7796)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (car x7795)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7794)))))
                   g7793)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1224 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1224 59))
                        (display "\n")
                        (assert x7800))))
                    (g7798
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1225 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1225 60))
                        (display "\n")
                        (assert x7801))))
                    (g7799
                     (letrec*
                      ((x-cnd7802
                        (begin
                          (write '(funapp 1228 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7802
                        (letrec*
                         ((g7803
                           (begin
                             (write '(funapp 1230 42))
                             (display "\n")
                             (proc))))
                         g7803)
                        (letrec*
                         ((x-cnd7804
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1233 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1233 58))
                              (display "\n")
                              (null? x7805)))))
                         (if x-cnd7804
                           (letrec*
                            ((g7806
                              (letrec*
                               ((x7807
                                 (begin
                                   (write '(funapp 1237 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1237 61))
                                 (display "\n")
                                 (proc x7807)))))
                            g7806)
                           (letrec*
                            ((x-cnd7808
                              (letrec*
                               ((x7809
                                 (begin
                                   (write '(funapp 1241 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1241 62))
                                 (display "\n")
                                 (null? x7809)))))
                            (if x-cnd7808
                              (letrec*
                               ((g7810
                                 (letrec*
                                  ((x7812
                                    (begin
                                      (write '(funapp 1246 43))
                                      (display "\n")
                                      (car args)))
                                   (x7811
                                    (begin
                                      (write '(funapp 1246 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1247 35))
                                    (display "\n")
                                    (proc x7812 x7811)))))
                               g7810)
                              (letrec*
                               ((x-cnd7813
                                 (letrec*
                                  ((x7814
                                    (begin
                                      (write '(funapp 1252 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1253 35))
                                    (display "\n")
                                    (null? x7814)))))
                               (if x-cnd7813
                                 (letrec*
                                  ((g7815
                                    (letrec*
                                     ((x7818
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (car args)))
                                      (x7817
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7816
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1261 38))
                                       (display "\n")
                                       (proc x7818 x7817 x7816)))))
                                  g7815)
                                 (letrec*
                                  ((x-cnd7819
                                    (letrec*
                                     ((x7820
                                       (begin
                                         (write '(funapp 1266 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1267 38))
                                       (display "\n")
                                       (null? x7820)))))
                                  (if x-cnd7819
                                    (letrec*
                                     ((g7821
                                       (letrec*
                                        ((x7825
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (car args)))
                                         (x7824
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7823
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7822
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1276 41))
                                          (display "\n")
                                          (proc x7825 x7824 x7823 x7822)))))
                                     g7821)
                                    (letrec*
                                     ((x-cnd7826
                                       (letrec*
                                        ((x7827
                                          (letrec*
                                           ((x7828
                                             (begin
                                               (write '(funapp 1283 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1284 44))
                                             (display "\n")
                                             (cdr x7828)))))
                                        (begin
                                          (write '(funapp 1285 41))
                                          (display "\n")
                                          (null? x7827)))))
                                     (if x-cnd7826
                                       (letrec*
                                        ((g7829
                                          (letrec*
                                           ((x7835
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (car args)))
                                            (x7834
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7833
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7832
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7830
                                             (letrec*
                                              ((x7831
                                                (begin
                                                  (write '(funapp 1296 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1297 47))
                                                (display "\n")
                                                (car x7831)))))
                                           (begin
                                             (write '(funapp 1298 44))
                                             (display "\n")
                                             (proc
                                              x7835
                                              x7834
                                              x7833
                                              x7832
                                              x7830)))))
                                        g7829)
                                       (letrec*
                                        ((x-cnd7836
                                          (letrec*
                                           ((x7837
                                             (letrec*
                                              ((x7838
                                                (begin
                                                  (write '(funapp 1310 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1311 47))
                                                (display "\n")
                                                (cddr x7838)))))
                                           (begin
                                             (write '(funapp 1312 44))
                                             (display "\n")
                                             (null? x7837)))))
                                        (if x-cnd7836
                                          (letrec*
                                           ((g7839
                                             (letrec*
                                              ((x7847
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7846
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7845
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7844
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7842
                                                (letrec*
                                                 ((x7843
                                                   (begin
                                                     (write '(funapp 1323 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1324 50))
                                                   (display "\n")
                                                   (car x7843))))
                                               (x7840
                                                (letrec*
                                                 ((x7841
                                                   (begin
                                                     (write '(funapp 1327 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1328 50))
                                                   (display "\n")
                                                   (cadr x7841)))))
                                              (begin
                                                (write '(funapp 1329 47))
                                                (display "\n")
                                                (proc
                                                 x7847
                                                 x7846
                                                 x7845
                                                 x7844
                                                 x7842
                                                 x7840)))))
                                           g7839)
                                          (letrec*
                                           ((x-cnd7848
                                             (letrec*
                                              ((x7849
                                                (letrec*
                                                 ((x7850
                                                   (begin
                                                     (write '(funapp 1342 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1343 50))
                                                   (display "\n")
                                                   (cdddr x7850)))))
                                              (begin
                                                (write '(funapp 1344 47))
                                                (display "\n")
                                                (null? x7849)))))
                                           (if x-cnd7848
                                             (letrec*
                                              ((g7851
                                                (letrec*
                                                 ((x7861
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7860
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7859
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7858
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7856
                                                   (letrec*
                                                    ((x7857
                                                      (begin
                                                        (write
                                                         '(funapp 1355 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1356 53))
                                                      (display "\n")
                                                      (car x7857))))
                                                  (x7854
                                                   (letrec*
                                                    ((x7855
                                                      (begin
                                                        (write
                                                         '(funapp 1359 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1360 53))
                                                      (display "\n")
                                                      (cadr x7855))))
                                                  (x7852
                                                   (letrec*
                                                    ((x7853
                                                      (begin
                                                        (write
                                                         '(funapp 1363 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1364 53))
                                                      (display "\n")
                                                      (caddr x7853)))))
                                                 (begin
                                                   (write '(funapp 1365 50))
                                                   (display "\n")
                                                   (proc
                                                    x7861
                                                    x7860
                                                    x7859
                                                    x7858
                                                    x7856
                                                    x7854
                                                    x7852)))))
                                              g7851)
                                             (letrec*
                                              ((g7862
                                                (begin
                                                  (write '(funapp 1376 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7862)))))))))))))))))))
                   g7799)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((x7865
                        (begin
                          (write '(funapp 1382 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1382 57))
                        (display "\n")
                        (assert x7865))))
                    (g7864
                     (letrec*
                      ((x-cnd7866
                        (begin
                          (write '(funapp 1385 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7866
                        #f
                        (letrec*
                         ((x-cnd7867
                           (letrec*
                            ((x7868
                              (begin
                                (write '(funapp 1390 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1390 55))
                              (display "\n")
                              (equal? x7868 e)))))
                         (if x-cnd7867
                           l
                           (letrec*
                            ((x7869
                              (begin
                                (write '(funapp 1393 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1393 55))
                              (display "\n")
                              (member e x7869)))))))))
                   g7864)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x7871
                        (letrec*
                         ((x7872
                           (letrec*
                            ((x7873
                              (begin
                                (write '(funapp 1402 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1402 61))
                              (display "\n")
                              (cdr x7873)))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (cdr x7872)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (cdr x7871)))))
                   g7870)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x7875
                        (letrec*
                         ((x7876
                           (letrec*
                            ((x7877
                              (begin
                                (write '(funapp 1413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1413 61))
                              (display "\n")
                              (cdr x7877)))))
                         (begin
                           (write '(funapp 1414 26))
                           (display "\n")
                           (cdr x7876)))))
                      (begin
                        (write '(funapp 1415 23))
                        (display "\n")
                        (car x7875)))))
                   g7874)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7878
                     (begin
                       (write '(funapp 1417 53))
                       (display "\n")
                       (random 42))))
                   g7878)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7881
                        (begin
                          (write '(funapp 1421 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1421 59))
                        (display "\n")
                        (assert x7881))))
                    (g7880
                     (begin (write '(funapp 1422 28)) (display "\n") (= x 0))))
                   g7880)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1429 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7883
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1431 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7883))))
                   g7882)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7885
                        (begin
                          (write '(funapp 1437 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1437 55))
                        (display "\n")
                        (car x7885)))))
                   g7884)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7887
                           (begin
                             (write '(funapp 1447 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7887
                           (letrec*
                            ((x7888
                              (begin
                                (write '(funapp 1449 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1449 55))
                              (display "\n")
                              (list? x7888)))
                           #f))))
                      (letrec*
                       ((g7889
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1452 52))
                             (display "\n")
                             (null? l)))))
                       g7889))))
                   g7886)))
               (cddaar
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
                                (write '(funapp 1462 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1462 61))
                              (display "\n")
                              (car x7893)))))
                         (begin
                           (write '(funapp 1463 26))
                           (display "\n")
                           (cdr x7892)))))
                      (begin
                        (write '(funapp 1464 23))
                        (display "\n")
                        (cdr x7891)))))
                   g7890)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x-cnd7895
                        (letrec*
                         ((x7896 #\0))
                         (begin
                           (write '(funapp 1471 58))
                           (display "\n")
                           (char<=? x7896 c)))))
                      (if x-cnd7895
                        (letrec*
                         ((x7897 #\9))
                         (begin
                           (write '(funapp 1473 48))
                           (display "\n")
                           (char<=? c x7897)))
                        #f))))
                   g7894)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7900
                        (begin
                          (write '(funapp 1480 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1480 57))
                        (display "\n")
                        (assert x7900))))
                    (g7899
                     (letrec*
                      ((x-cnd7901
                        (begin
                          (write '(funapp 1483 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7901
                        #f
                        (letrec*
                         ((x-cnd7902
                           (letrec*
                            ((x7903
                              (begin
                                (write '(funapp 1488 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1488 56))
                              (display "\n")
                              (eqv? x7903 k)))))
                         (if x-cnd7902
                           (begin
                             (write '(funapp 1490 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1491 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1491 55))
                              (display "\n")
                              (assq k x7904)))))))))
                   g7899)))
               (not (lambda (x) (letrec* ((g7905 (if x #f #t))) g7905)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7906
                     (begin
                       (write '(funapp 1495 50))
                       (display "\n")
                       (append l1 l2))))
                   g7906)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7909
                        (begin
                          (write '(funapp 1499 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1499 57))
                        (display "\n")
                        (assert x7909))))
                    (g7908
                     (letrec*
                      ((x-cnd7910
                        (begin
                          (write '(funapp 1502 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7910
                        #f
                        (letrec*
                         ((x-cnd7911
                           (letrec*
                            ((x7912
                              (begin
                                (write '(funapp 1507 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1507 55))
                              (display "\n")
                              (eq? x7912 e)))))
                         (if x-cnd7911
                           l
                           (letrec*
                            ((x7913
                              (begin
                                (write '(funapp 1510 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1510 55))
                              (display "\n")
                              (memq e x7913)))))))))
                   g7908)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7915
                        (letrec*
                         ((x7916
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 1519 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1519 61))
                              (display "\n")
                              (car x7917)))))
                         (begin
                           (write '(funapp 1520 26))
                           (display "\n")
                           (cdr x7916)))))
                      (begin
                        (write '(funapp 1521 23))
                        (display "\n")
                        (car x7915)))))
                   g7914)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 1526 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1526 57))
                        (display "\n")
                        (assert x7920))))
                    (g7919
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7921
                             (letrec*
                              ((x-cnd7922
                                (begin
                                  (write '(funapp 1534 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7922
                                0
                                (letrec*
                                 ((x7923
                                   (letrec*
                                    ((x7924
                                      (begin
                                        (write '(funapp 1539 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1539 63))
                                      (display "\n")
                                      (rec x7924)))))
                                 (begin
                                   (write '(funapp 1540 34))
                                   (display "\n")
                                   (+ 1 x7923)))))))
                           g7921))))
                      (letrec*
                       ((g7925
                         (begin
                           (write '(funapp 1542 40))
                           (display "\n")
                           (rec l))))
                       g7925))))
                   g7919)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7929))))
                    (g7927
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7930))))
                    (g7928
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1551 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7931
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1553 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7931))))
                   g7928)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1559 65))
                        (display "\n")
                        (not x7933)))))
                   g7932)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7935
                        (letrec*
                         ((x7936
                           (begin
                             (write '(funapp 1566 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1566 58))
                           (display "\n")
                           (car x7936)))))
                      (begin
                        (write '(funapp 1567 23))
                        (display "\n")
                        (cdr x7935)))))
                   g7934)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1572 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1572 57))
                        (display "\n")
                        (assert x7939))))
                    (g7938
                     (letrec*
                      ((x-cnd7940
                        (begin
                          (write '(funapp 1575 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7940
                        #f
                        (letrec*
                         ((x-cnd7941
                           (letrec*
                            ((x7942
                              (begin
                                (write '(funapp 1580 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1580 56))
                              (display "\n")
                              (equal? x7942 k)))))
                         (if x-cnd7941
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7943
                              (begin
                                (write '(funapp 1583 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1583 55))
                              (display "\n")
                              (assoc k x7943)))))))))
                   g7938)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1588 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1588 55))
                        (display "\n")
                        (car x7945)))))
                   g7944)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7949))))
                    (g7947
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7950))))
                    (g7948
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1595 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1595 63))
                        (display "\n")
                        (not x7951)))))
                   g7948)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1602 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7953
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1604 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7953))))
                   g7952)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1610 62))
                        (display "\n")
                        (assert x7957))))
                    (g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1611 57))
                        (display "\n")
                        (assert x7958))))
                    (g7956
                     (letrec*
                      ((x-cnd7959
                        (begin
                          (write '(funapp 1614 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7959
                        #t
                        (letrec*
                         ((x-cnd7960
                           (begin
                             (write '(funapp 1618 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7960
                           (letrec*
                            ((g7961
                              (letrec*
                               ((x7963
                                 (begin
                                   (write '(funapp 1621 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1621 64))
                                 (display "\n")
                                 (f x7963))))
                             (g7962
                              (letrec*
                               ((x7964
                                 (begin
                                   (write '(funapp 1623 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1623 58))
                                 (display "\n")
                                 (for-each f x7964)))))
                            g7962)
                           (begin
                             (write '(funapp 1625 27))
                             (display "\n")
                             '())))))))
                   g7956)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1630 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1630 59))
                        (display "\n")
                        (assert x7967))))
                    (g7966
                     (letrec*
                      ((x-cnd7968
                        (begin
                          (write '(funapp 1632 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7968
                        (begin
                          (write '(funapp 1632 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7966)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7972))))
                    (g7970
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7973))))
                    (g7971
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1641 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7974
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1643 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7974))))
                   g7971)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7976
                        (letrec*
                         ((x7977
                           (letrec*
                            ((x7978
                              (begin
                                (write '(funapp 1653 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1653 61))
                              (display "\n")
                              (cdr x7978)))))
                         (begin
                           (write '(funapp 1654 26))
                           (display "\n")
                           (cdr x7977)))))
                      (begin
                        (write '(funapp 1655 23))
                        (display "\n")
                        (car x7976)))))
                   g7975)))
               (newline (lambda () (letrec* ((g7979 #f)) g7979)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x7982
                        (letrec*
                         ((x7983
                           (begin
                             (write '(funapp 1663 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1663 58))
                           (display "\n")
                           (abs x7983))))
                       (x7981
                        (begin
                          (write '(funapp 1664 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1665 23))
                        (display "\n")
                        (/ x7982 x7981)))))
                   g7980)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x7988
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1671 57))
                        (display "\n")
                        (assert x7988))))
                    (g7985
                     (letrec*
                      ((x7989
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1672 63))
                        (display "\n")
                        (assert x7989))))
                    (g7986
                     (letrec*
                      ((x7990
                        (letrec*
                         ((x7991
                           (begin
                             (write '(funapp 1675 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1675 61))
                           (display "\n")
                           (< index x7991)))))
                      (begin
                        (write '(funapp 1676 23))
                        (display "\n")
                        (assert x7990))))
                    (g7987
                     (letrec*
                      ((x-cnd7992
                        (begin
                          (write '(funapp 1679 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7992
                        (begin
                          (write '(funapp 1681 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7994
                           (begin
                             (write '(funapp 1683 34))
                             (display "\n")
                             (cdr l)))
                          (x7993
                           (begin
                             (write '(funapp 1683 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1684 26))
                           (display "\n")
                           (list-ref x7994 x7993)))))))
                   g7987)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7995
                     (letrec*
                      ((x-cnd7996
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7996
                        a
                        (letrec*
                         ((x7997
                           (begin
                             (write '(funapp 1694 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1694 57))
                           (display "\n")
                           (gcd b x7997)))))))
                   g7995))))
              (letrec*
               ((g7998
                 (letrec*
                  ((lp1 2000))
                  (letrec*
                   ((g7999
                     (letrec*
                      ((a
                        (set! lp1
                          (lambda (i x)
                            (letrec*
                             ((g8000
                               (letrec*
                                ((a
                                  (begin
                                    (write '(funapp 1709 37))
                                    (display "\n")
                                    (= 0 i))))
                                (letrec*
                                 ((g8001
                                   (if a
                                     x
                                     (letrec*
                                      ((lp2 1000))
                                      (letrec*
                                       ((g8002
                                         (letrec*
                                          ((b
                                            (set! lp2
                                              (lambda (j f y)
                                                (letrec*
                                                 ((g8003
                                                   (letrec*
                                                    ((b
                                                      (begin
                                                        (write
                                                         '(funapp 1725 57))
                                                        (display "\n")
                                                        (= 0 j))))
                                                    (letrec*
                                                     ((g8004
                                                       (if b
                                                         (letrec*
                                                          ((x8005
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1730
                                                                 67))
                                                              (display "\n")
                                                              (- i 1))))
                                                          (begin
                                                            (write
                                                             '(funapp 1731 59))
                                                            (display "\n")
                                                            (lp1 x8005 y)))
                                                         (letrec*
                                                          (($tmp$3
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 1733
                                                                 68))
                                                              (display "\n")
                                                              (f y))))
                                                          (letrec*
                                                           ((g8006
                                                             (letrec*
                                                              ((x8007
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     1737
                                                                     71))
                                                                  (display
                                                                   "\n")
                                                                  (- j 1))))
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1738
                                                                   63))
                                                                (display "\n")
                                                                (lp2
                                                                 x8007
                                                                 f
                                                                 $tmp$3)))))
                                                           g8006)))))
                                                     g8004))))
                                                 g8003)))))
                                          (letrec*
                                           ((g8008
                                             (begin
                                               (write '(funapp 1747 46))
                                               (display "\n")
                                               (lp2
                                                10
                                                (lambda (n)
                                                  (letrec*
                                                   ((g8009
                                                     (begin
                                                       (write
                                                        '(funapp 1751 58))
                                                       (display "\n")
                                                       (+ n i))))
                                                   g8009))
                                                x))))
                                           g8008))))
                                       g8002)))))
                                 g8001))))
                             g8000)))))
                      (letrec*
                       ((g8010
                         (begin
                           (write '(funapp 1758 40))
                           (display "\n")
                           (lp1 10 0))))
                       g8010))))
                   g7999))))
               g7998))))
           g7430))))
       g7413)))
    g7412)))
