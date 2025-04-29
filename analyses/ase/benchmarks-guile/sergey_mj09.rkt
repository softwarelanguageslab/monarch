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
               (sub1
                (lambda (x)
                  (letrec*
                   ((g7556
                     (begin (write '(funapp 546 51)) (display "\n") (- x 1))))
                   g7556)))
               (/
                (letrec*
                 ((xj7363
                   (begin (write '(funapp 549 26)) (display "\n") 'server))
                  (xk7364
                   (begin (write '(funapp 549 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7557
                    (begin
                      (write '(funapp 552 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7559
                            (lambda (g7365 g7366)
                              (letrec*
                               ((g7560
                                 (letrec*
                                  ((x7561
                                    (letrec*
                                     ((x7563
                                       (begin
                                         (write '(funapp 561 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7365)))
                                      (x7562
                                       (begin
                                         (write '(funapp 562 44))
                                         (display "\n")
                                         (number?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 563 36))
                                       (display "\n")
                                       (f7369 x7563 x7562)))))
                                  (begin
                                    (write '(funapp 564 33))
                                    (display "\n")
                                    (number?/c j7367 k7368 x7561)))))
                               g7560))))
                          g7559))
                       xj7363
                       xk7364
                       (lambda (a b)
                         (letrec*
                          ((g7558
                            (begin
                              (write '(funapp 569 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7558))))))
                  g7557)))
               (car
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 573 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 573 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7564
                    (begin
                      (write '(funapp 576 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7566
                            (lambda (g7372)
                              (letrec*
                               ((g7567
                                 (letrec*
                                  ((x7568
                                    (letrec*
                                     ((x7569
                                       (begin
                                         (write '(funapp 585 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 586 36))
                                       (display "\n")
                                       (f7375 x7569)))))
                                  (begin
                                    (write '(funapp 587 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7568)))))
                               g7567))))
                          g7566))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7565
                            (begin
                              (write '(funapp 592 51))
                              (display "\n")
                              (orig-car p))))
                          g7565))))))
                  g7564)))
               (cdr
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 596 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 596 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7570
                    (begin
                      (write '(funapp 599 21))
                      (display "\n")
                      ((lambda (j7379 k7380 f7381)
                         (letrec*
                          ((g7572
                            (lambda (g7378)
                              (letrec*
                               ((g7573
                                 (letrec*
                                  ((x7574
                                    (letrec*
                                     ((x7575
                                       (begin
                                         (write '(funapp 608 44))
                                         (display "\n")
                                         (pair?/c j7379 k7380 g7378))))
                                     (begin
                                       (write '(funapp 609 36))
                                       (display "\n")
                                       (f7381 x7575)))))
                                  (begin
                                    (write '(funapp 610 33))
                                    (display "\n")
                                    (any/c j7379 k7380 x7574)))))
                               g7573))))
                          g7572))
                       xj7376
                       xk7377
                       (lambda (p)
                         (letrec*
                          ((g7571
                            (begin
                              (write '(funapp 615 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7571))))))
                  g7570)))
               (cons
                (letrec*
                 ((xj7382
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7383
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7576
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7578
                            (lambda (g7384 g7385)
                              (letrec*
                               ((g7579
                                 (letrec*
                                  ((x7580
                                    (letrec*
                                     ((x7582
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7384)))
                                      (x7581
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (any/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7388 x7582 x7581)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (pair?/c j7386 k7387 x7580)))))
                               g7579))))
                          g7578))
                       xj7382
                       xk7383
                       (lambda (a b)
                         (letrec*
                          ((g7577
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7577))))))
                  g7576)))
               (vector-ref
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 644 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 644 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7583
                    (begin
                      (write '(funapp 647 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g7585
                            (lambda (g7391)
                              (letrec*
                               ((g7586
                                 (letrec*
                                  ((x7587
                                    (letrec*
                                     ((x7588
                                       (begin
                                         (write '(funapp 656 44))
                                         (display "\n")
                                         (vector?/c j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 657 36))
                                       (display "\n")
                                       (f7394 x7588)))))
                                  (begin
                                    (write '(funapp 658 33))
                                    (display "\n")
                                    (integer?/c j7392 k7393 x7587)))))
                               g7586))))
                          g7585))
                       xj7389
                       xk7390
                       (lambda (v i)
                         (letrec*
                          ((g7584
                            (begin
                              (write '(funapp 664 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7584))))))
                  g7583)))
               (vector-set!
                (letrec*
                 ((xj7395
                   (begin (write '(funapp 668 26)) (display "\n") 'server))
                  (xk7396
                   (begin (write '(funapp 668 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7589
                    (begin
                      (write '(funapp 671 21))
                      (display "\n")
                      ((lambda (j7399 k7400 f7401)
                         (letrec*
                          ((g7591
                            (lambda (g7397 g7398)
                              (letrec*
                               ((g7592
                                 (letrec*
                                  ((x7593
                                    (letrec*
                                     ((x7595
                                       (begin
                                         (write '(funapp 680 44))
                                         (display "\n")
                                         (vector?/c j7399 k7400 g7397)))
                                      (x7594
                                       (begin
                                         (write '(funapp 681 44))
                                         (display "\n")
                                         (integer?/c j7399 k7400 g7398))))
                                     (begin
                                       (write '(funapp 682 36))
                                       (display "\n")
                                       (f7401 x7595 x7594)))))
                                  (begin
                                    (write '(funapp 683 33))
                                    (display "\n")
                                    (any/c j7399 k7400 x7593)))))
                               g7592))))
                          g7591))
                       xj7395
                       xk7396
                       (lambda (vec i v)
                         (letrec*
                          ((g7590
                            (begin
                              (write '(funapp 689 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7590))))))
                  g7589)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7597
                        (letrec*
                         ((x7598
                           (begin
                             (write '(funapp 696 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 696 58))
                           (display "\n")
                           (cdr x7598)))))
                      (begin
                        (write '(funapp 697 23))
                        (display "\n")
                        (cdr x7597)))))
                   g7596)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7602
                        (begin
                          (write '(funapp 703 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 703 62))
                        (display "\n")
                        (assert x7602))))
                    (g7600
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 704 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 704 57))
                        (display "\n")
                        (assert x7603))))
                    (g7601
                     (letrec*
                      ((x-cnd7604
                        (begin
                          (write '(funapp 707 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7604
                        (begin (write '(funapp 709 24)) (display "\n") '())
                        (letrec*
                         ((x7607
                           (letrec*
                            ((x7608
                              (begin
                                (write '(funapp 711 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 711 61))
                              (display "\n")
                              (f x7608))))
                          (x7605
                           (letrec*
                            ((x7606
                              (begin
                                (write '(funapp 712 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 712 61))
                              (display "\n")
                              (map f x7606)))))
                         (begin
                           (write '(funapp 713 26))
                           (display "\n")
                           (cons x7607 x7605)))))))
                   g7601)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (begin
                          (write '(funapp 718 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 718 55))
                        (display "\n")
                        (cdr x7610)))))
                   g7609)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7612
                        (letrec*
                         ((x7613
                           (letrec*
                            ((x7614
                              (begin
                                (write '(funapp 727 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 727 61))
                              (display "\n")
                              (car x7614)))))
                         (begin
                           (write '(funapp 728 26))
                           (display "\n")
                           (cdr x7613)))))
                      (begin
                        (write '(funapp 729 23))
                        (display "\n")
                        (car x7612)))))
                   g7611)))
               (cdadar
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
                                (write '(funapp 738 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 738 61))
                              (display "\n")
                              (cdr x7618)))))
                         (begin
                           (write '(funapp 739 26))
                           (display "\n")
                           (car x7617)))))
                      (begin
                        (write '(funapp 740 23))
                        (display "\n")
                        (cdr x7616)))))
                   g7615)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 746 60))
                        (display "\n")
                        (assert x7622))))
                    (g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 748 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 748 59))
                        (display "\n")
                        (assert x7623))))
                    (g7621
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
                       ((g7624
                         (begin
                           (write '(funapp 754 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7625 res))
                       g7625))))
                   g7621)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7627
                        (letrec*
                         ((x7628
                           (begin
                             (write '(funapp 762 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 762 58))
                           (display "\n")
                           (cdr x7628)))))
                      (begin
                        (write '(funapp 763 23))
                        (display "\n")
                        (car x7627)))))
                   g7626)))
               (cdaadr
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
                                (write '(funapp 772 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 772 61))
                              (display "\n")
                              (car x7632)))))
                         (begin
                           (write '(funapp 773 26))
                           (display "\n")
                           (car x7631)))))
                      (begin
                        (write '(funapp 774 23))
                        (display "\n")
                        (cdr x7630)))))
                   g7629)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 779 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 779 57))
                        (display "\n")
                        (assert x7635))))
                    (g7634
                     (letrec*
                      ((x-cnd7636
                        (begin
                          (write '(funapp 782 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7636
                        #f
                        (letrec*
                         ((x-cnd7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 787 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 787 56))
                              (display "\n")
                              (eq? x7638 k)))))
                         (if x-cnd7637
                           (begin
                             (write '(funapp 789 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 790 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 790 55))
                              (display "\n")
                              (assq k x7639)))))))))
                   g7634)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 795 60))
                        (display "\n")
                        (= 0 x7641)))))
                   g7640)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 800 57))
                        (display "\n")
                        (assert x7644))))
                    (g7643
                     (letrec*
                      ((x-cnd7645
                        (begin
                          (write '(funapp 803 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7645
                        ""
                        (letrec*
                         ((x7648
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (char->string x7649))))
                          (x7646
                           (letrec*
                            ((x7647
                              (begin
                                (write '(funapp 810 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 810 55))
                              (display "\n")
                              (list->string x7647)))))
                         (begin
                           (write '(funapp 811 26))
                           (display "\n")
                           (string-append x7648 x7646)))))))
                   g7643)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 816 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 816 58))
                        (display "\n")
                        (assert x7653))))
                    (g7651
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 817 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 817 58))
                        (display "\n")
                        (assert x7654))))
                    (g7652
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 820 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7655
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 822 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7655))))
                   g7652)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7657
                        (letrec*
                         ((x7658
                           (letrec*
                            ((x7659
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7659)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (cdr x7658)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7657)))))
                   g7656)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 839 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 839 57))
                        (display "\n")
                        (assert x7663))))
                    (g7661
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 840 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 840 57))
                        (display "\n")
                        (assert x7664))))
                    (g7662
                     (letrec*
                      ((x-cnd7665
                        (begin
                          (write '(funapp 843 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7665
                        x
                        (letrec*
                         ((x7667
                           (begin
                             (write '(funapp 847 34))
                             (display "\n")
                             (cdr x)))
                          (x7666
                           (begin
                             (write '(funapp 847 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 848 26))
                           (display "\n")
                           (list-tail x7667 x7666)))))))
                   g7662)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7668
                     (begin (write '(funapp 850 49)) (display "\n") '())))
                   g7668)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x-cnd7670
                        (letrec*
                         ((x7671 #\a))
                         (begin
                           (write '(funapp 857 48))
                           (display "\n")
                           (char-ci>=? c x7671)))))
                      (if x-cnd7670
                        (letrec*
                         ((x7672 #\z))
                         (begin
                           (write '(funapp 859 48))
                           (display "\n")
                           (char-ci<=? c x7672)))
                        #f))))
                   g7669)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((val7250
                        (letrec*
                         ((x7674
                           (begin
                             (write '(funapp 868 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 868 62))
                           (display "\n")
                           (= x7674 9)))))
                      (letrec*
                       ((g7675
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x7676
                                 (begin
                                   (write '(funapp 876 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 877 32))
                                 (display "\n")
                                 (= x7676 10)))))
                            (letrec*
                             ((g7677
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7678
                                    (begin
                                      (write '(funapp 883 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 884 35))
                                    (display "\n")
                                    (= x7678 32))))))
                             g7677)))))
                       g7675))))
                   g7673)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7679
                     (letrec*
                      ((x7680
                        (letrec*
                         ((x7681
                           (begin
                             (write '(funapp 893 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 893 58))
                           (display "\n")
                           (cdr x7681)))))
                      (begin
                        (write '(funapp 894 23))
                        (display "\n")
                        (cdr x7680)))))
                   g7679)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((x7684
                        (begin
                          (write '(funapp 899 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 899 59))
                        (display "\n")
                        (assert x7684))))
                    (g7683
                     (begin (write '(funapp 900 28)) (display "\n") (> x 0))))
                   g7683)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7685
                     (begin
                       (write '(funapp 902 59))
                       (display "\n")
                       (bool-top))))
                   g7685)))
               ($pc (begin (write '(funapp 903 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7686 #f)) g7686)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x7688
                        (begin
                          (write '(funapp 909 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 909 55))
                        (display "\n")
                        (cdr x7688)))))
                   g7687)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x7691
                        (begin
                          (write '(funapp 914 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 914 59))
                        (display "\n")
                        (assert x7691))))
                    (g7690
                     (letrec*
                      ((x-cnd7692
                        (begin
                          (write '(funapp 917 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7692
                        (begin
                          (write '(funapp 918 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 918 49))
                          (display "\n")
                          (floor x))))))
                   g7690)))
               ($cmp (begin (write '(funapp 920 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 926 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7694
                         (if val7252
                           val7252
                           (letrec*
                            ((val7253
                              (letrec*
                               ((x-cnd7695
                                 (begin
                                   (write '(funapp 934 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7695
                                 (begin
                                   (write '(funapp 935 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7696
                               (if val7253
                                 val7253
                                 (letrec*
                                  ((val7254
                                    (letrec*
                                     ((x-cnd7697
                                       (begin
                                         (write '(funapp 943 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7697
                                       (letrec*
                                        ((x-cnd7698
                                          (begin
                                            (write '(funapp 946 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7698
                                          (begin
                                            (write '(funapp 947 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7699
                                     (if val7254
                                       val7254
                                       (letrec*
                                        ((val7255
                                          (letrec*
                                           ((x-cnd7700
                                             (begin
                                               (write '(funapp 956 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7700
                                             (letrec*
                                              ((x-cnd7701
                                                (begin
                                                  (write '(funapp 959 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7701
                                                (letrec*
                                                 ((x-cnd7702
                                                   (letrec*
                                                    ((x7704
                                                      (begin
                                                        (write
                                                         '(funapp 964 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7703
                                                      (begin
                                                        (write
                                                         '(funapp 965 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 966 53))
                                                      (display "\n")
                                                      (equal? x7704 x7703)))))
                                                 (if x-cnd7702
                                                   (letrec*
                                                    ((x7706
                                                      (begin
                                                        (write
                                                         '(funapp 969 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7705
                                                      (begin
                                                        (write
                                                         '(funapp 970 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 971 53))
                                                      (display "\n")
                                                      (equal? x7706 x7705)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7707
                                           (if val7255
                                             val7255
                                             (letrec*
                                              ((x-cnd7708
                                                (begin
                                                  (write '(funapp 980 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7708
                                                (letrec*
                                                 ((x-cnd7709
                                                   (begin
                                                     (write '(funapp 983 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7709
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 986 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7710
                                                       (letrec*
                                                        ((x-cnd7711
                                                          (letrec*
                                                           ((x7712
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
                                                             (= x7712 n)))))
                                                        (if x-cnd7711
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7713
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
                                                                    ((g7714
                                                                      (if val7256
                                                                        val7256
                                                                        (letrec*
                                                                         ((x-cnd7715
                                                                           (letrec*
                                                                            ((x7717
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
                                                                             (x7716
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
                                                                               x7717
                                                                               x7716)))))
                                                                         (if x-cnd7715
                                                                           (letrec*
                                                                            ((x7718
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
                                                                               x7718)))
                                                                           #f)))))
                                                                    g7714))))
                                                                g7713))))
                                                           (letrec*
                                                            ((g7719
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1035
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7719))
                                                          #f))))
                                                     g7710))
                                                   #f))
                                                #f)))))
                                         g7707)))))
                                   g7699)))))
                             g7696)))))
                       g7694))))
                   g7693)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x7721
                        (letrec*
                         ((x7722
                           (letrec*
                            ((x7723
                              (begin
                                (write '(funapp 1053 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1053 61))
                              (display "\n")
                              (car x7723)))))
                         (begin
                           (write '(funapp 1054 26))
                           (display "\n")
                           (car x7722)))))
                      (begin
                        (write '(funapp 1055 23))
                        (display "\n")
                        (cdr x7721)))))
                   g7720)))
               (caaddr
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
                                (write '(funapp 1064 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1064 61))
                              (display "\n")
                              (cdr x7727)))))
                         (begin
                           (write '(funapp 1065 26))
                           (display "\n")
                           (car x7726)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (car x7725)))))
                   g7724)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7728
                     (begin
                       (write '(funapp 1068 53))
                       (display "\n")
                       (eq? x y))))
                   g7728)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7732
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1073 60))
                        (display "\n")
                        (assert x7732))))
                    (g7730
                     (letrec*
                      ((x7733
                        (begin
                          (write '(funapp 1075 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1075 59))
                        (display "\n")
                        (assert x7733))))
                    (g7731
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
                       ((g7734
                         (begin
                           (write '(funapp 1081 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7735 res))
                       g7735))))
                   g7731)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7736
                     (begin
                       (write '(funapp 1084 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1084 57))
                          (display "\n")
                          '())))))
                   g7736)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1088 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1088 58))
                        (display "\n")
                        (assert x7740))))
                    (g7738
                     (letrec*
                      ((x7741
                        (begin
                          (write '(funapp 1089 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1089 58))
                        (display "\n")
                        (assert x7741))))
                    (g7739
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1092 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7742
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1094 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7742))))
                   g7739)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (begin
                             (write '(funapp 1102 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1102 58))
                           (display "\n")
                           (car x7745)))))
                      (begin
                        (write '(funapp 1103 23))
                        (display "\n")
                        (cdr x7744)))))
                   g7743)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (letrec*
                         ((x7748
                           (letrec*
                            ((x7749
                              (begin
                                (write '(funapp 1112 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1112 61))
                              (display "\n")
                              (cdr x7749)))))
                         (begin
                           (write '(funapp 1113 26))
                           (display "\n")
                           (car x7748)))))
                      (begin
                        (write '(funapp 1114 23))
                        (display "\n")
                        (cdr x7747)))))
                   g7746)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7751
                        (letrec*
                         ((x7752
                           (begin
                             (write '(funapp 1122 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1122 58))
                           (display "\n")
                           (cdr x7752)))))
                      (begin
                        (write '(funapp 1123 23))
                        (display "\n")
                        (car x7751)))))
                   g7750)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7754
                        (letrec*
                         ((x7755
                           (begin
                             (write '(funapp 1130 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1130 58))
                           (display "\n")
                           (car x7755)))))
                      (begin
                        (write '(funapp 1131 23))
                        (display "\n")
                        (car x7754)))))
                   g7753)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1137 58))
                        (display "\n")
                        (assert x7760))))
                    (g7758
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1138 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1138 66))
                        (display "\n")
                        (not x7761)))))
                   g7758)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1148 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1148 61))
                              (display "\n")
                              (car x7765)))))
                         (begin
                           (write '(funapp 1149 26))
                           (display "\n")
                           (car x7764)))))
                      (begin
                        (write '(funapp 1150 23))
                        (display "\n")
                        (car x7763)))))
                   g7762)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 1155 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1155 59))
                        (display "\n")
                        (assert x7768))))
                    (g7767
                     (begin (write '(funapp 1156 28)) (display "\n") (< x 0))))
                   g7767)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7769
                     (begin
                       (write '(funapp 1158 53))
                       (display "\n")
                       (memq e l))))
                   g7769)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (begin
                             (write '(funapp 1164 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1164 58))
                           (display "\n")
                           (car x7772)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7773
                     (begin (write '(funapp 1167 51)) (display "\n") '())))
                   g7773)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1171 57))
                        (display "\n")
                        (assert x7776))))
                    (g7775
                     (letrec*
                      ((x-cnd7777
                        (begin
                          (write '(funapp 1174 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7777
                        (begin (write '(funapp 1176 24)) (display "\n") '())
                        (letrec*
                         ((x7780
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1178 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1178 61))
                              (display "\n")
                              (reverse x7781))))
                          (x7778
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1179 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1179 61))
                              (display "\n")
                              (list x7779)))))
                         (begin
                           (write '(funapp 1180 26))
                           (display "\n")
                           (append x7780 x7778)))))))
                   g7775)))
               (caaadr
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
                                (write '(funapp 1189 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1189 61))
                              (display "\n")
                              (car x7785)))))
                         (begin
                           (write '(funapp 1190 26))
                           (display "\n")
                           (car x7784)))))
                      (begin
                        (write '(funapp 1191 23))
                        (display "\n")
                        (car x7783)))))
                   g7782)))
               (cddadr
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
                                (write '(funapp 1200 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1200 61))
                              (display "\n")
                              (car x7789)))))
                         (begin
                           (write '(funapp 1201 26))
                           (display "\n")
                           (cdr x7788)))))
                      (begin
                        (write '(funapp 1202 23))
                        (display "\n")
                        (cdr x7787)))))
                   g7786)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1207 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1207 59))
                        (display "\n")
                        (assert x7792))))
                    (g7791
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1208 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1208 60))
                        (display "\n")
                        (= 1 x7793)))))
                   g7791)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7795
                        (letrec*
                         ((x7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 1217 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1217 61))
                              (display "\n")
                              (cdr x7797)))))
                         (begin
                           (write '(funapp 1218 26))
                           (display "\n")
                           (car x7796)))))
                      (begin
                        (write '(funapp 1219 23))
                        (display "\n")
                        (car x7795)))))
                   g7794)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1225 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1225 59))
                        (display "\n")
                        (assert x7801))))
                    (g7799
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1226 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1226 60))
                        (display "\n")
                        (assert x7802))))
                    (g7800
                     (letrec*
                      ((x-cnd7803
                        (begin
                          (write '(funapp 1229 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7803
                        (letrec*
                         ((g7804
                           (begin
                             (write '(funapp 1231 42))
                             (display "\n")
                             (proc))))
                         g7804)
                        (letrec*
                         ((x-cnd7805
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 1234 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1234 58))
                              (display "\n")
                              (null? x7806)))))
                         (if x-cnd7805
                           (letrec*
                            ((g7807
                              (letrec*
                               ((x7808
                                 (begin
                                   (write '(funapp 1238 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1238 61))
                                 (display "\n")
                                 (proc x7808)))))
                            g7807)
                           (letrec*
                            ((x-cnd7809
                              (letrec*
                               ((x7810
                                 (begin
                                   (write '(funapp 1242 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1242 62))
                                 (display "\n")
                                 (null? x7810)))))
                            (if x-cnd7809
                              (letrec*
                               ((g7811
                                 (letrec*
                                  ((x7813
                                    (begin
                                      (write '(funapp 1247 43))
                                      (display "\n")
                                      (car args)))
                                   (x7812
                                    (begin
                                      (write '(funapp 1247 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1248 35))
                                    (display "\n")
                                    (proc x7813 x7812)))))
                               g7811)
                              (letrec*
                               ((x-cnd7814
                                 (letrec*
                                  ((x7815
                                    (begin
                                      (write '(funapp 1253 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1254 35))
                                    (display "\n")
                                    (null? x7815)))))
                               (if x-cnd7814
                                 (letrec*
                                  ((g7816
                                    (letrec*
                                     ((x7819
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (car args)))
                                      (x7818
                                       (begin
                                         (write '(funapp 1260 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7817
                                       (begin
                                         (write '(funapp 1261 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1262 38))
                                       (display "\n")
                                       (proc x7819 x7818 x7817)))))
                                  g7816)
                                 (letrec*
                                  ((x-cnd7820
                                    (letrec*
                                     ((x7821
                                       (begin
                                         (write '(funapp 1267 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1268 38))
                                       (display "\n")
                                       (null? x7821)))))
                                  (if x-cnd7820
                                    (letrec*
                                     ((g7822
                                       (letrec*
                                        ((x7826
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (car args)))
                                         (x7825
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7824
                                          (begin
                                            (write '(funapp 1275 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7823
                                          (begin
                                            (write '(funapp 1276 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1277 41))
                                          (display "\n")
                                          (proc x7826 x7825 x7824 x7823)))))
                                     g7822)
                                    (letrec*
                                     ((x-cnd7827
                                       (letrec*
                                        ((x7828
                                          (letrec*
                                           ((x7829
                                             (begin
                                               (write '(funapp 1284 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1285 44))
                                             (display "\n")
                                             (cdr x7829)))))
                                        (begin
                                          (write '(funapp 1286 41))
                                          (display "\n")
                                          (null? x7828)))))
                                     (if x-cnd7827
                                       (letrec*
                                        ((g7830
                                          (letrec*
                                           ((x7836
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (car args)))
                                            (x7835
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7834
                                             (begin
                                               (write '(funapp 1293 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7833
                                             (begin
                                               (write '(funapp 1294 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7831
                                             (letrec*
                                              ((x7832
                                                (begin
                                                  (write '(funapp 1297 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1298 47))
                                                (display "\n")
                                                (car x7832)))))
                                           (begin
                                             (write '(funapp 1299 44))
                                             (display "\n")
                                             (proc
                                              x7836
                                              x7835
                                              x7834
                                              x7833
                                              x7831)))))
                                        g7830)
                                       (letrec*
                                        ((x-cnd7837
                                          (letrec*
                                           ((x7838
                                             (letrec*
                                              ((x7839
                                                (begin
                                                  (write '(funapp 1311 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1312 47))
                                                (display "\n")
                                                (cddr x7839)))))
                                           (begin
                                             (write '(funapp 1313 44))
                                             (display "\n")
                                             (null? x7838)))))
                                        (if x-cnd7837
                                          (letrec*
                                           ((g7840
                                             (letrec*
                                              ((x7848
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7847
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7846
                                                (begin
                                                  (write '(funapp 1320 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7845
                                                (begin
                                                  (write '(funapp 1321 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7843
                                                (letrec*
                                                 ((x7844
                                                   (begin
                                                     (write '(funapp 1324 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1325 50))
                                                   (display "\n")
                                                   (car x7844))))
                                               (x7841
                                                (letrec*
                                                 ((x7842
                                                   (begin
                                                     (write '(funapp 1328 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (cadr x7842)))))
                                              (begin
                                                (write '(funapp 1330 47))
                                                (display "\n")
                                                (proc
                                                 x7848
                                                 x7847
                                                 x7846
                                                 x7845
                                                 x7843
                                                 x7841)))))
                                           g7840)
                                          (letrec*
                                           ((x-cnd7849
                                             (letrec*
                                              ((x7850
                                                (letrec*
                                                 ((x7851
                                                   (begin
                                                     (write '(funapp 1343 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1344 50))
                                                   (display "\n")
                                                   (cdddr x7851)))))
                                              (begin
                                                (write '(funapp 1345 47))
                                                (display "\n")
                                                (null? x7850)))))
                                           (if x-cnd7849
                                             (letrec*
                                              ((g7852
                                                (letrec*
                                                 ((x7862
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7861
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7860
                                                   (begin
                                                     (write '(funapp 1352 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7859
                                                   (begin
                                                     (write '(funapp 1353 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7857
                                                   (letrec*
                                                    ((x7858
                                                      (begin
                                                        (write
                                                         '(funapp 1356 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1357 53))
                                                      (display "\n")
                                                      (car x7858))))
                                                  (x7855
                                                   (letrec*
                                                    ((x7856
                                                      (begin
                                                        (write
                                                         '(funapp 1360 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1361 53))
                                                      (display "\n")
                                                      (cadr x7856))))
                                                  (x7853
                                                   (letrec*
                                                    ((x7854
                                                      (begin
                                                        (write
                                                         '(funapp 1364 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1365 53))
                                                      (display "\n")
                                                      (caddr x7854)))))
                                                 (begin
                                                   (write '(funapp 1366 50))
                                                   (display "\n")
                                                   (proc
                                                    x7862
                                                    x7861
                                                    x7860
                                                    x7859
                                                    x7857
                                                    x7855
                                                    x7853)))))
                                              g7852)
                                             (letrec*
                                              ((g7863
                                                (begin
                                                  (write '(funapp 1377 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7863)))))))))))))))))))
                   g7800)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7866
                        (begin
                          (write '(funapp 1383 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1383 57))
                        (display "\n")
                        (assert x7866))))
                    (g7865
                     (letrec*
                      ((x-cnd7867
                        (begin
                          (write '(funapp 1386 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7867
                        #f
                        (letrec*
                         ((x-cnd7868
                           (letrec*
                            ((x7869
                              (begin
                                (write '(funapp 1391 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1391 55))
                              (display "\n")
                              (equal? x7869 e)))))
                         (if x-cnd7868
                           l
                           (letrec*
                            ((x7870
                              (begin
                                (write '(funapp 1394 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1394 55))
                              (display "\n")
                              (member e x7870)))))))))
                   g7865)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7872
                        (letrec*
                         ((x7873
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 1403 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1403 61))
                              (display "\n")
                              (cdr x7874)))))
                         (begin
                           (write '(funapp 1404 26))
                           (display "\n")
                           (cdr x7873)))))
                      (begin
                        (write '(funapp 1405 23))
                        (display "\n")
                        (cdr x7872)))))
                   g7871)))
               (cadddr
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
                                (write '(funapp 1414 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1414 61))
                              (display "\n")
                              (cdr x7878)))))
                         (begin
                           (write '(funapp 1415 26))
                           (display "\n")
                           (cdr x7877)))))
                      (begin
                        (write '(funapp 1416 23))
                        (display "\n")
                        (car x7876)))))
                   g7875)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7879
                     (begin
                       (write '(funapp 1418 53))
                       (display "\n")
                       (random 42))))
                   g7879)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 1422 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1422 59))
                        (display "\n")
                        (assert x7882))))
                    (g7881
                     (begin (write '(funapp 1423 28)) (display "\n") (= x 0))))
                   g7881)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1430 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7884
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1432 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7884))))
                   g7883)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1438 55))
                        (display "\n")
                        (car x7886)))))
                   g7885)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((val7259
                        (letrec*
                         ((x-cnd7888
                           (begin
                             (write '(funapp 1448 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1450 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1450 55))
                              (display "\n")
                              (list? x7889)))
                           #f))))
                      (letrec*
                       ((g7890
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1453 52))
                             (display "\n")
                             (null? l)))))
                       g7890))))
                   g7887)))
               (cddaar
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
                                (write '(funapp 1463 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1463 61))
                              (display "\n")
                              (car x7894)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x7893)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (cdr x7892)))))
                   g7891)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x-cnd7896
                        (letrec*
                         ((x7897 #\0))
                         (begin
                           (write '(funapp 1472 58))
                           (display "\n")
                           (char<=? x7897 c)))))
                      (if x-cnd7896
                        (letrec*
                         ((x7898 #\9))
                         (begin
                           (write '(funapp 1474 48))
                           (display "\n")
                           (char<=? c x7898)))
                        #f))))
                   g7895)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 1481 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1481 57))
                        (display "\n")
                        (assert x7901))))
                    (g7900
                     (letrec*
                      ((x-cnd7902
                        (begin
                          (write '(funapp 1484 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7902
                        #f
                        (letrec*
                         ((x-cnd7903
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1489 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1489 56))
                              (display "\n")
                              (eqv? x7904 k)))))
                         (if x-cnd7903
                           (begin
                             (write '(funapp 1491 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7905
                              (begin
                                (write '(funapp 1492 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1492 55))
                              (display "\n")
                              (assq k x7905)))))))))
                   g7900)))
               (not (lambda (x) (letrec* ((g7906 (if x #f #t))) g7906)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7907
                     (begin
                       (write '(funapp 1496 50))
                       (display "\n")
                       (append l1 l2))))
                   g7907)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1500 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1500 57))
                        (display "\n")
                        (assert x7910))))
                    (g7909
                     (letrec*
                      ((x-cnd7911
                        (begin
                          (write '(funapp 1503 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7911
                        #f
                        (letrec*
                         ((x-cnd7912
                           (letrec*
                            ((x7913
                              (begin
                                (write '(funapp 1508 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1508 55))
                              (display "\n")
                              (eq? x7913 e)))))
                         (if x-cnd7912
                           l
                           (letrec*
                            ((x7914
                              (begin
                                (write '(funapp 1511 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1511 55))
                              (display "\n")
                              (memq e x7914)))))))))
                   g7909)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7916
                        (letrec*
                         ((x7917
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 1520 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1520 61))
                              (display "\n")
                              (car x7918)))))
                         (begin
                           (write '(funapp 1521 26))
                           (display "\n")
                           (cdr x7917)))))
                      (begin
                        (write '(funapp 1522 23))
                        (display "\n")
                        (car x7916)))))
                   g7915)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1527 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1527 57))
                        (display "\n")
                        (assert x7921))))
                    (g7920
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7922
                             (letrec*
                              ((x-cnd7923
                                (begin
                                  (write '(funapp 1535 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7923
                                0
                                (letrec*
                                 ((x7924
                                   (letrec*
                                    ((x7925
                                      (begin
                                        (write '(funapp 1540 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1540 63))
                                      (display "\n")
                                      (rec x7925)))))
                                 (begin
                                   (write '(funapp 1541 34))
                                   (display "\n")
                                   (+ 1 x7924)))))))
                           g7922))))
                      (letrec*
                       ((g7926
                         (begin
                           (write '(funapp 1543 40))
                           (display "\n")
                           (rec l))))
                       g7926))))
                   g7920)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1548 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1548 58))
                        (display "\n")
                        (assert x7930))))
                    (g7928
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7931))))
                    (g7929
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1552 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7932
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1554 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7932))))
                   g7929)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1560 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1560 65))
                        (display "\n")
                        (not x7934)))))
                   g7933)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7936
                        (letrec*
                         ((x7937
                           (begin
                             (write '(funapp 1567 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1567 58))
                           (display "\n")
                           (car x7937)))))
                      (begin
                        (write '(funapp 1568 23))
                        (display "\n")
                        (cdr x7936)))))
                   g7935)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1573 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1573 57))
                        (display "\n")
                        (assert x7940))))
                    (g7939
                     (letrec*
                      ((x-cnd7941
                        (begin
                          (write '(funapp 1576 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7941
                        #f
                        (letrec*
                         ((x-cnd7942
                           (letrec*
                            ((x7943
                              (begin
                                (write '(funapp 1581 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1581 56))
                              (display "\n")
                              (equal? x7943 k)))))
                         (if x-cnd7942
                           (begin
                             (write '(funapp 1583 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7944
                              (begin
                                (write '(funapp 1584 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1584 55))
                              (display "\n")
                              (assoc k x7944)))))))))
                   g7939)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1589 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1589 55))
                        (display "\n")
                        (car x7946)))))
                   g7945)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c1))))
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
                          (char? c2))))
                      (begin
                        (write '(funapp 1595 58))
                        (display "\n")
                        (assert x7951))))
                    (g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1596 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1596 63))
                        (display "\n")
                        (not x7952)))))
                   g7949)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1603 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7954
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1605 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7954))))
                   g7953)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1611 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1611 62))
                        (display "\n")
                        (assert x7958))))
                    (g7956
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1612 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1612 57))
                        (display "\n")
                        (assert x7959))))
                    (g7957
                     (letrec*
                      ((x-cnd7960
                        (begin
                          (write '(funapp 1615 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7960
                        #t
                        (letrec*
                         ((x-cnd7961
                           (begin
                             (write '(funapp 1619 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7961
                           (letrec*
                            ((g7962
                              (letrec*
                               ((x7964
                                 (begin
                                   (write '(funapp 1622 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1622 64))
                                 (display "\n")
                                 (f x7964))))
                             (g7963
                              (letrec*
                               ((x7965
                                 (begin
                                   (write '(funapp 1624 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1624 58))
                                 (display "\n")
                                 (for-each f x7965)))))
                            g7963)
                           (begin
                             (write '(funapp 1626 27))
                             (display "\n")
                             '())))))))
                   g7957)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1631 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1631 59))
                        (display "\n")
                        (assert x7968))))
                    (g7967
                     (letrec*
                      ((x-cnd7969
                        (begin
                          (write '(funapp 1633 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7969
                        (begin
                          (write '(funapp 1633 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7967)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1638 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1638 58))
                        (display "\n")
                        (assert x7973))))
                    (g7971
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1639 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1639 58))
                        (display "\n")
                        (assert x7974))))
                    (g7972
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1642 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7975
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1644 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7975))))
                   g7972)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7977
                        (letrec*
                         ((x7978
                           (letrec*
                            ((x7979
                              (begin
                                (write '(funapp 1654 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1654 61))
                              (display "\n")
                              (cdr x7979)))))
                         (begin
                           (write '(funapp 1655 26))
                           (display "\n")
                           (cdr x7978)))))
                      (begin
                        (write '(funapp 1656 23))
                        (display "\n")
                        (car x7977)))))
                   g7976)))
               (newline (lambda () (letrec* ((g7980 #f)) g7980)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x7983
                        (letrec*
                         ((x7984
                           (begin
                             (write '(funapp 1664 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1664 58))
                           (display "\n")
                           (abs x7984))))
                       (x7982
                        (begin
                          (write '(funapp 1665 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1666 23))
                        (display "\n")
                        (/ x7983 x7982)))))
                   g7981)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x7989
                        (begin
                          (write '(funapp 1672 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1672 57))
                        (display "\n")
                        (assert x7989))))
                    (g7986
                     (letrec*
                      ((x7990
                        (begin
                          (write '(funapp 1673 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1673 63))
                        (display "\n")
                        (assert x7990))))
                    (g7987
                     (letrec*
                      ((x7991
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1676 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1676 61))
                           (display "\n")
                           (< index x7992)))))
                      (begin
                        (write '(funapp 1677 23))
                        (display "\n")
                        (assert x7991))))
                    (g7988
                     (letrec*
                      ((x-cnd7993
                        (begin
                          (write '(funapp 1680 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7993
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7995
                           (begin
                             (write '(funapp 1684 34))
                             (display "\n")
                             (cdr l)))
                          (x7994
                           (begin
                             (write '(funapp 1684 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1685 26))
                           (display "\n")
                           (list-ref x7995 x7994)))))))
                   g7988)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x-cnd7997
                        (begin
                          (write '(funapp 1692 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7997
                        a
                        (letrec*
                         ((x7998
                           (begin
                             (write '(funapp 1695 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1695 57))
                           (display "\n")
                           (gcd b x7998)))))))
                   g7996))))
              (letrec*
               ((g7999
                 (letrec*
                  ((h
                    (lambda (b)
                      (letrec*
                       ((g8000
                         (letrec*
                          ((g (lambda (z) (letrec* ((g8001 z)) g8001))))
                          (letrec*
                           ((g8002
                             (letrec*
                              ((f
                                (lambda (k)
                                  (letrec*
                                   ((g8003
                                     (if b
                                       (begin
                                         (write '(funapp 1712 50))
                                         (display "\n")
                                         (k 1))
                                       (begin
                                         (write '(funapp 1712 56))
                                         (display "\n")
                                         (k 2)))))
                                   g8003))))
                              (letrec*
                               ((g8004
                                 (letrec*
                                  ((y
                                    (begin
                                      (write '(funapp 1718 37))
                                      (display "\n")
                                      (f
                                       (lambda (x)
                                         (letrec* ((g8005 x)) g8005))))))
                                  (letrec*
                                   ((g8006
                                     (begin
                                       (write '(funapp 1721 52))
                                       (display "\n")
                                       (g y))))
                                   g8006))))
                               g8004))))
                           g8002))))
                       g8000))))
                  (letrec*
                   ((g8007
                     (letrec*
                      ((x
                        (begin
                          (write '(funapp 1728 27))
                          (display "\n")
                          (h #t)))
                       (y
                        (begin
                          (write '(funapp 1728 38))
                          (display "\n")
                          (h #f))))
                      (letrec* ((g8008 y)) g8008))))
                   g8007))))
               g7999))))
           g7430))))
       g7413)))
    g7412)))
