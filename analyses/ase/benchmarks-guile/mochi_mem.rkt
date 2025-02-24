(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7415 #t)) g7415)))
    (meta (lambda (v) (letrec* ((g7416 v)) g7416)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7417
          (letrec*
           ((g7418
             (letrec*
              ((x-e7419 lst))
              (letrec*
               ((v1742 x-e7419))
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
                   ((x-cnd7420
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7420
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
           g7418)))
        g7417)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7421 (lambda (v) (letrec* ((g7422 v)) g7422)))) g7421)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7423
          (letrec*
           ((x7424 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7424)))))
        g7423))))
   (letrec*
    ((g7425
      (letrec*
       ((g7426
         (letrec*
          ((>=
            (lambda (x y)
              (letrec*
               ((g7427
                 (letrec*
                  ((x7429
                    (begin
                      (write '(funapp 47 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 47 55))
                    (display "\n")
                    (assert x7429))))
                (g7428
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 50 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7430
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 56 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7431 (if val7244 val7244 #f))) g7431)))))
                   g7430))))
               g7428)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7432
                 (letrec*
                  ((x7434
                    (begin
                      (write '(funapp 63 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 63 55))
                    (display "\n")
                    (assert x7434))))
                (g7433
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 66 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7435
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 72 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7436 (if val7246 val7246 #f))) g7436)))))
                   g7435))))
               g7433)))
           (>
            (lambda (x y)
              (letrec*
               ((g7437
                 (letrec*
                  ((x7439
                    (begin
                      (write '(funapp 79 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 79 55))
                    (display "\n")
                    (assert x7439))))
                (g7438
                 (letrec*
                  ((x7440
                    (begin (write '(funapp 80 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 80 52)) (display "\n") (not x7440)))))
               g7438)))
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
           ((g7441 (begin (write '(funapp 96 19)) (display "\n") '()))
            (g7442
             (letrec*
              ((empty (begin (write '(funapp 99 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7443
                     (lambda (k j lst)
                       (letrec*
                        ((g7444
                          (begin
                            (write '(funapp 107 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7445
                                  (begin
                                    (write '(funapp 109 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7445))
                             lst))))
                        g7444))))
                   g7443)))
               (real?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (real? g7265))))
                      (if x-cnd7447
                        g7265
                        (begin
                          (write '(blame g7263 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7446)))
               (boolean?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (boolean? g7268))))
                      (if x-cnd7449
                        g7268
                        (begin
                          (write '(blame g7266 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7448)))
               (number?/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (number? g7271))))
                      (if x-cnd7451
                        g7271
                        (begin
                          (write '(blame g7269 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7450)))
               (any/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 143 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7454 #t)) g7454)) g7274))))
                      (if x-cnd7453
                        g7274
                        (begin
                          (write '(blame g7272 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7452)))
               (any?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 152 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7457 #t)) g7457)) g7277))))
                      (if x-cnd7456
                        g7277
                        (begin
                          (write '(blame g7275 153 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7455)))
               (cons?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 160 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7459
                        g7280
                        (begin
                          (write '(blame g7278 161 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7458)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 169 35))
                          (display "\n")
                          (pair? g7283))))
                      (if x-cnd7461
                        g7283
                        (begin
                          (write '(blame g7281 170 42))
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
                          (write '(funapp 177 35))
                          (display "\n")
                          (integer? g7286))))
                      (if x-cnd7463
                        g7286
                        (begin
                          (write '(blame g7284 178 42))
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
                          (write '(funapp 185 35))
                          (display "\n")
                          (symbol? g7289))))
                      (if x-cnd7465
                        g7289
                        (begin
                          (write '(blame g7287 186 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7464)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7466
                     (lambda (k j v)
                       (letrec*
                        ((g7467
                          (letrec*
                           ((x-cnd7468
                             (begin
                               (write '(funapp 196 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7468
                             (begin
                               (write '(funapp 197 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7467))))
                   g7466)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7469
                     (lambda (k j v)
                       (letrec*
                        ((g7470
                          (letrec*
                           ((x-cnd7471
                             (begin
                               (write '(funapp 208 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7471
                             (begin
                               (write '(funapp 210 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7475
                                (letrec*
                                 ((x7476
                                   (begin
                                     (write '(funapp 214 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 215 34))
                                   (display "\n")
                                   (contract k j x7476))))
                               (x7472
                                (letrec*
                                 ((x7474
                                   (begin
                                     (write '(funapp 218 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7473
                                   (begin
                                     (write '(funapp 218 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 219 34))
                                   (display "\n")
                                   (x7474 k j x7473)))))
                              (begin
                                (write '(funapp 220 31))
                                (display "\n")
                                (orig-cons x7475 x7472)))))))
                        g7470))))
                   g7469)))
               (any? (lambda (v) (letrec* ((g7477 #t)) g7477)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7478
                     (letrec*
                      ((x7479
                        (begin
                          (write '(funapp 227 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 227 55))
                        (display "\n")
                        (not x7479)))))
                   g7478)))
               (nonzero?/c
                (lambda (g7290 g7291 g7292)
                  (letrec*
                   ((g7480
                     (letrec*
                      ((x-cnd7481
                        (begin
                          (write '(funapp 235 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7482
                                (letrec*
                                 ((x7483
                                   (begin
                                     (write '(funapp 237 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 237 64))
                                   (display "\n")
                                   (not x7483)))))
                              g7482))
                           g7292))))
                      (if x-cnd7481
                        g7292
                        (begin
                          (write '(blame g7290 242 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7290)))))))
                   g7480)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7484
                     (lambda (g7293 g7294 g7295)
                       (letrec*
                        ((g7485
                          (letrec*
                           ((x-cnd7486
                             (begin
                               (write '(funapp 253 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7487
                                     (begin
                                       (write '(funapp 254 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7487))
                                g7295))))
                           (if x-cnd7486
                             g7295
                             (begin
                               (write '(blame g7293 258 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7293)))))))
                        g7485))))
                   g7484)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7488
                     (lambda (g7296 g7297 g7298)
                       (letrec*
                        ((g7489
                          (letrec*
                           ((x-cnd7490
                             (begin
                               (write '(funapp 270 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7491
                                     (begin
                                       (write '(funapp 271 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7491))
                                g7298))))
                           (if x-cnd7490
                             g7298
                             (begin
                               (write '(blame g7296 275 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7296)))))))
                        g7489))))
                   g7488)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7492
                     (lambda (g7299 g7300 g7301)
                       (letrec*
                        ((g7493
                          (letrec*
                           ((x-cnd7494
                             (begin
                               (write '(funapp 287 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7495
                                     (begin
                                       (write '(funapp 288 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7495))
                                g7301))))
                           (if x-cnd7494
                             g7301
                             (begin
                               (write '(blame g7299 292 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7299)))))))
                        g7493))))
                   g7492)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7496
                     (lambda (g7302 g7303 g7304)
                       (letrec*
                        ((g7497
                          (letrec*
                           ((x-cnd7498
                             (begin
                               (write '(funapp 304 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7499
                                     (begin
                                       (write '(funapp 305 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7499))
                                g7304))))
                           (if x-cnd7498
                             g7304
                             (begin
                               (write '(blame g7302 309 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7302)))))))
                        g7497))))
                   g7496)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7500
                     (lambda (g7305 g7306 g7307)
                       (letrec*
                        ((g7501
                          (letrec*
                           ((x-cnd7502
                             (begin
                               (write '(funapp 321 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7503
                                     (begin
                                       (write '(funapp 322 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7503))
                                g7307))))
                           (if x-cnd7502
                             g7307
                             (begin
                               (write '(blame g7305 326 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7305)))))))
                        g7501))))
                   g7500)))
               (meta (lambda (v) (letrec* ((g7504 v)) g7504)))
               (+
                (letrec*
                 ((xj7308
                   (begin (write '(funapp 332 26)) (display "\n") 'server))
                  (xk7309
                   (begin (write '(funapp 332 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7505
                    (begin
                      (write '(funapp 335 21))
                      (display "\n")
                      ((lambda (j7312 k7313 f7314)
                         (letrec*
                          ((g7507
                            (lambda (g7310 g7311)
                              (letrec*
                               ((g7508
                                 (letrec*
                                  ((x7509
                                    (letrec*
                                     ((x7511
                                       (begin
                                         (write '(funapp 344 44))
                                         (display "\n")
                                         (number?/c j7312 k7313 g7310)))
                                      (x7510
                                       (begin
                                         (write '(funapp 345 44))
                                         (display "\n")
                                         (number?/c j7312 k7313 g7311))))
                                     (begin
                                       (write '(funapp 346 36))
                                       (display "\n")
                                       (f7314 x7511 x7510)))))
                                  (begin
                                    (write '(funapp 347 33))
                                    (display "\n")
                                    (number?/c j7312 k7313 x7509)))))
                               g7508))))
                          g7507))
                       xj7308
                       xk7309
                       (lambda (a b)
                         (letrec*
                          ((g7506
                            (begin
                              (write '(funapp 352 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7506))))))
                  g7505)))
               (-
                (letrec*
                 ((xj7315
                   (begin (write '(funapp 356 26)) (display "\n") 'server))
                  (xk7316
                   (begin (write '(funapp 356 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7512
                    (begin
                      (write '(funapp 359 21))
                      (display "\n")
                      ((lambda (j7319 k7320 f7321)
                         (letrec*
                          ((g7514
                            (lambda (g7317 g7318)
                              (letrec*
                               ((g7515
                                 (letrec*
                                  ((x7516
                                    (letrec*
                                     ((x7518
                                       (begin
                                         (write '(funapp 368 44))
                                         (display "\n")
                                         (number?/c j7319 k7320 g7317)))
                                      (x7517
                                       (begin
                                         (write '(funapp 369 44))
                                         (display "\n")
                                         (number?/c j7319 k7320 g7318))))
                                     (begin
                                       (write '(funapp 370 36))
                                       (display "\n")
                                       (f7321 x7518 x7517)))))
                                  (begin
                                    (write '(funapp 371 33))
                                    (display "\n")
                                    (number?/c j7319 k7320 x7516)))))
                               g7515))))
                          g7514))
                       xj7315
                       xk7316
                       (lambda (a b)
                         (letrec*
                          ((g7513
                            (begin
                              (write '(funapp 376 53))
                              (display "\n")
                              (orig-- a b))))
                          g7513))))))
                  g7512)))
               (*
                (letrec*
                 ((xj7322
                   (begin (write '(funapp 380 26)) (display "\n") 'server))
                  (xk7323
                   (begin (write '(funapp 380 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7519
                    (begin
                      (write '(funapp 383 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7521
                            (lambda (g7324 g7325)
                              (letrec*
                               ((g7522
                                 (letrec*
                                  ((x7523
                                    (letrec*
                                     ((x7525
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7326 k7327 g7324)))
                                      (x7524
                                       (begin
                                         (write '(funapp 393 44))
                                         (display "\n")
                                         (number?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 394 36))
                                       (display "\n")
                                       (f7328 x7525 x7524)))))
                                  (begin
                                    (write '(funapp 395 33))
                                    (display "\n")
                                    (number?/c j7326 k7327 x7523)))))
                               g7522))))
                          g7521))
                       xj7322
                       xk7323
                       (lambda (a b)
                         (letrec*
                          ((g7520
                            (begin
                              (write '(funapp 400 53))
                              (display "\n")
                              (orig-* a b))))
                          g7520))))))
                  g7519)))
               (<
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 404 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 404 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7526
                    (begin
                      (write '(funapp 407 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7528
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7529
                                 (letrec*
                                  ((x7530
                                    (letrec*
                                     ((x7532
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7333 k7334 g7331)))
                                      (x7531
                                       (begin
                                         (write '(funapp 417 44))
                                         (display "\n")
                                         (number?/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 418 36))
                                       (display "\n")
                                       (f7335 x7532 x7531)))))
                                  (begin
                                    (write '(funapp 419 33))
                                    (display "\n")
                                    (boolean?/c j7333 k7334 x7530)))))
                               g7529))))
                          g7528))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7527
                            (begin
                              (write '(funapp 424 53))
                              (display "\n")
                              (orig-< a b))))
                          g7527))))))
                  g7526)))
               (>
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 428 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 428 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7533
                    (begin
                      (write '(funapp 431 21))
                      (display "\n")
                      ((lambda (j7340 k7341 f7342)
                         (letrec*
                          ((g7535
                            (lambda (g7338 g7339)
                              (letrec*
                               ((g7536
                                 (letrec*
                                  ((x7537
                                    (letrec*
                                     ((x7539
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7340 k7341 g7338)))
                                      (x7538
                                       (begin
                                         (write '(funapp 441 44))
                                         (display "\n")
                                         (number?/c j7340 k7341 g7339))))
                                     (begin
                                       (write '(funapp 442 36))
                                       (display "\n")
                                       (f7342 x7539 x7538)))))
                                  (begin
                                    (write '(funapp 443 33))
                                    (display "\n")
                                    (boolean?/c j7340 k7341 x7537)))))
                               g7536))))
                          g7535))
                       xj7336
                       xk7337
                       (lambda (a b)
                         (letrec*
                          ((g7534
                            (begin
                              (write '(funapp 448 53))
                              (display "\n")
                              (orig-> a b))))
                          g7534))))))
                  g7533)))
               (<=
                (letrec*
                 ((xj7343
                   (begin (write '(funapp 452 26)) (display "\n") 'server))
                  (xk7344
                   (begin (write '(funapp 452 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7540
                    (begin
                      (write '(funapp 455 21))
                      (display "\n")
                      ((lambda (j7347 k7348 f7349)
                         (letrec*
                          ((g7542
                            (lambda (g7345 g7346)
                              (letrec*
                               ((g7543
                                 (letrec*
                                  ((x7544
                                    (letrec*
                                     ((x7546
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7347 k7348 g7345)))
                                      (x7545
                                       (begin
                                         (write '(funapp 465 44))
                                         (display "\n")
                                         (number?/c j7347 k7348 g7346))))
                                     (begin
                                       (write '(funapp 466 36))
                                       (display "\n")
                                       (f7349 x7546 x7545)))))
                                  (begin
                                    (write '(funapp 467 33))
                                    (display "\n")
                                    (boolean?/c j7347 k7348 x7544)))))
                               g7543))))
                          g7542))
                       xj7343
                       xk7344
                       (lambda (a b)
                         (letrec*
                          ((g7541
                            (begin
                              (write '(funapp 472 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7541))))))
                  g7540)))
               (>=
                (letrec*
                 ((xj7350
                   (begin (write '(funapp 476 26)) (display "\n") 'server))
                  (xk7351
                   (begin (write '(funapp 476 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7547
                    (begin
                      (write '(funapp 479 21))
                      (display "\n")
                      ((lambda (j7354 k7355 f7356)
                         (letrec*
                          ((g7549
                            (lambda (g7352 g7353)
                              (letrec*
                               ((g7550
                                 (letrec*
                                  ((x7551
                                    (letrec*
                                     ((x7553
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7354 k7355 g7352)))
                                      (x7552
                                       (begin
                                         (write '(funapp 489 44))
                                         (display "\n")
                                         (number?/c j7354 k7355 g7353))))
                                     (begin
                                       (write '(funapp 490 36))
                                       (display "\n")
                                       (f7356 x7553 x7552)))))
                                  (begin
                                    (write '(funapp 491 33))
                                    (display "\n")
                                    (boolean?/c j7354 k7355 x7551)))))
                               g7550))))
                          g7549))
                       xj7350
                       xk7351
                       (lambda (a b)
                         (letrec*
                          ((g7548
                            (begin
                              (write '(funapp 496 53))
                              (display "\n")
                              (orig->= a b))))
                          g7548))))))
                  g7547)))
               (/
                (letrec*
                 ((xj7357
                   (begin (write '(funapp 500 26)) (display "\n") 'server))
                  (xk7358
                   (begin (write '(funapp 500 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7554
                    (begin
                      (write '(funapp 503 21))
                      (display "\n")
                      ((lambda (j7361 k7362 f7363)
                         (letrec*
                          ((g7556
                            (lambda (g7359 g7360)
                              (letrec*
                               ((g7557
                                 (letrec*
                                  ((x7558
                                    (letrec*
                                     ((x7560
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7361 k7362 g7359)))
                                      (x7559
                                       (begin
                                         (write '(funapp 513 44))
                                         (display "\n")
                                         (number?/c j7361 k7362 g7360))))
                                     (begin
                                       (write '(funapp 514 36))
                                       (display "\n")
                                       (f7363 x7560 x7559)))))
                                  (begin
                                    (write '(funapp 515 33))
                                    (display "\n")
                                    (number?/c j7361 k7362 x7558)))))
                               g7557))))
                          g7556))
                       xj7357
                       xk7358
                       (lambda (a b)
                         (letrec*
                          ((g7555
                            (begin
                              (write '(funapp 520 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7555))))))
                  g7554)))
               (car
                (letrec*
                 ((xj7364
                   (begin (write '(funapp 524 26)) (display "\n") 'server))
                  (xk7365
                   (begin (write '(funapp 524 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7561
                    (begin
                      (write '(funapp 527 21))
                      (display "\n")
                      ((lambda (j7367 k7368 f7369)
                         (letrec*
                          ((g7563
                            (lambda (g7366)
                              (letrec*
                               ((g7564
                                 (letrec*
                                  ((x7565
                                    (letrec*
                                     ((x7566
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (pair?/c j7367 k7368 g7366))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7369 x7566)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (any/c j7367 k7368 x7565)))))
                               g7564))))
                          g7563))
                       xj7364
                       xk7365
                       (lambda (p)
                         (letrec*
                          ((g7562
                            (begin
                              (write '(funapp 543 51))
                              (display "\n")
                              (orig-car p))))
                          g7562))))))
                  g7561)))
               (cdr
                (letrec*
                 ((xj7370
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7371
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7567
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7373 k7374 f7375)
                         (letrec*
                          ((g7569
                            (lambda (g7372)
                              (letrec*
                               ((g7570
                                 (letrec*
                                  ((x7571
                                    (letrec*
                                     ((x7572
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (pair?/c j7373 k7374 g7372))))
                                     (begin
                                       (write '(funapp 560 36))
                                       (display "\n")
                                       (f7375 x7572)))))
                                  (begin
                                    (write '(funapp 561 33))
                                    (display "\n")
                                    (any/c j7373 k7374 x7571)))))
                               g7570))))
                          g7569))
                       xj7370
                       xk7371
                       (lambda (p)
                         (letrec*
                          ((g7568
                            (begin
                              (write '(funapp 566 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7568))))))
                  g7567)))
               (cons
                (letrec*
                 ((xj7376
                   (begin (write '(funapp 570 26)) (display "\n") 'server))
                  (xk7377
                   (begin (write '(funapp 570 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7573
                    (begin
                      (write '(funapp 573 21))
                      (display "\n")
                      ((lambda (j7380 k7381 f7382)
                         (letrec*
                          ((g7575
                            (lambda (g7378 g7379)
                              (letrec*
                               ((g7576
                                 (letrec*
                                  ((x7577
                                    (letrec*
                                     ((x7579
                                       (begin
                                         (write '(funapp 582 44))
                                         (display "\n")
                                         (any/c j7380 k7381 g7378)))
                                      (x7578
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (any/c j7380 k7381 g7379))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7382 x7579 x7578)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (pair?/c j7380 k7381 x7577)))))
                               g7576))))
                          g7575))
                       xj7376
                       xk7377
                       (lambda (a b)
                         (letrec*
                          ((g7574
                            (begin
                              (write '(funapp 591 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7574))))))
                  g7573)))
               (vector-ref
                (letrec*
                 ((xj7383
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7384
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7580
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7386 k7387 f7388)
                         (letrec*
                          ((g7582
                            (lambda (g7385)
                              (letrec*
                               ((g7583
                                 (letrec*
                                  ((x7584
                                    (letrec*
                                     ((x7585
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (vector?/c j7386 k7387 g7385))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7388 x7585)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (integer?/c j7386 k7387 x7584)))))
                               g7583))))
                          g7582))
                       xj7383
                       xk7384
                       (lambda (v i)
                         (letrec*
                          ((g7581
                            (begin
                              (write '(funapp 615 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7581))))))
                  g7580)))
               (vector-set!
                (letrec*
                 ((xj7389
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7390
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7586
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7393 k7394 f7395)
                         (letrec*
                          ((g7588
                            (lambda (g7391 g7392)
                              (letrec*
                               ((g7589
                                 (letrec*
                                  ((x7590
                                    (letrec*
                                     ((x7592
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (vector?/c j7393 k7394 g7391)))
                                      (x7591
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (integer?/c j7393 k7394 g7392))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7395 x7592 x7591)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (any/c j7393 k7394 x7590)))))
                               g7589))))
                          g7588))
                       xj7389
                       xk7390
                       (lambda (vec i v)
                         (letrec*
                          ((g7587
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7587))))))
                  g7586)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7593
                     (if cnd
                       (begin (write '(funapp 645 35)) (display "\n") '())
                       (begin
                         (write '(funapp 645 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7593)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7595
                        (letrec*
                         ((x7596
                           (begin
                             (write '(funapp 652 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 652 58))
                           (display "\n")
                           (cdr x7596)))))
                      (begin
                        (write '(funapp 653 23))
                        (display "\n")
                        (cdr x7595)))))
                   g7594)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 659 62))
                        (display "\n")
                        (assert x7600))))
                    (g7598
                     (letrec*
                      ((x7601
                        (begin
                          (write '(funapp 660 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 660 57))
                        (display "\n")
                        (assert x7601))))
                    (g7599
                     (letrec*
                      ((x-cnd7602
                        (begin
                          (write '(funapp 663 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7602
                        (begin (write '(funapp 665 24)) (display "\n") '())
                        (letrec*
                         ((x7605
                           (letrec*
                            ((x7606
                              (begin
                                (write '(funapp 667 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 667 61))
                              (display "\n")
                              (f x7606))))
                          (x7603
                           (letrec*
                            ((x7604
                              (begin
                                (write '(funapp 668 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 668 61))
                              (display "\n")
                              (map f x7604)))))
                         (begin
                           (write '(funapp 669 26))
                           (display "\n")
                           (cons x7605 x7603)))))))
                   g7599)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7608
                        (begin
                          (write '(funapp 674 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 674 55))
                        (display "\n")
                        (cdr x7608)))))
                   g7607)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (letrec*
                            ((x7612
                              (begin
                                (write '(funapp 683 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 683 61))
                              (display "\n")
                              (car x7612)))))
                         (begin
                           (write '(funapp 684 26))
                           (display "\n")
                           (cdr x7611)))))
                      (begin
                        (write '(funapp 685 23))
                        (display "\n")
                        (car x7610)))))
                   g7609)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (letrec*
                         ((x7615
                           (letrec*
                            ((x7616
                              (begin
                                (write '(funapp 694 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 694 61))
                              (display "\n")
                              (cdr x7616)))))
                         (begin
                           (write '(funapp 695 26))
                           (display "\n")
                           (car x7615)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7614)))))
                   g7613)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 702 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 702 60))
                        (display "\n")
                        (assert x7620))))
                    (g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 704 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 704 59))
                        (display "\n")
                        (assert x7621))))
                    (g7619
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 707 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 708 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7622
                         (begin
                           (write '(funapp 710 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7623 res))
                       g7623))))
                   g7619)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7625
                        (letrec*
                         ((x7626
                           (begin
                             (write '(funapp 718 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 718 58))
                           (display "\n")
                           (cdr x7626)))))
                      (begin
                        (write '(funapp 719 23))
                        (display "\n")
                        (car x7625)))))
                   g7624)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7628
                        (letrec*
                         ((x7629
                           (letrec*
                            ((x7630
                              (begin
                                (write '(funapp 728 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 728 61))
                              (display "\n")
                              (car x7630)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (car x7629)))))
                      (begin
                        (write '(funapp 730 23))
                        (display "\n")
                        (cdr x7628)))))
                   g7627)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 735 57))
                        (display "\n")
                        (assert x7633))))
                    (g7632
                     (letrec*
                      ((x-cnd7634
                        (begin
                          (write '(funapp 738 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7634
                        #f
                        (letrec*
                         ((x-cnd7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 743 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 743 56))
                              (display "\n")
                              (eq? x7636 k)))))
                         (if x-cnd7635
                           (begin
                             (write '(funapp 745 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 746 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 746 55))
                              (display "\n")
                              (assq k x7637)))))))))
                   g7632)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 751 60))
                        (display "\n")
                        (= 0 x7639)))))
                   g7638)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 756 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 756 57))
                        (display "\n")
                        (assert x7642))))
                    (g7641
                     (letrec*
                      ((x-cnd7643
                        (begin
                          (write '(funapp 759 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7643
                        ""
                        (letrec*
                         ((x7646
                           (letrec*
                            ((x7647
                              (begin
                                (write '(funapp 764 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 764 55))
                              (display "\n")
                              (char->string x7647))))
                          (x7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 766 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 766 55))
                              (display "\n")
                              (list->string x7645)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (string-append x7646 x7644)))))))
                   g7641)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 772 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 772 58))
                        (display "\n")
                        (assert x7651))))
                    (g7649
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 773 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 773 58))
                        (display "\n")
                        (assert x7652))))
                    (g7650
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 776 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7653
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 778 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7653))))
                   g7650)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7655
                        (letrec*
                         ((x7656
                           (letrec*
                            ((x7657
                              (begin
                                (write '(funapp 788 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 788 61))
                              (display "\n")
                              (cdr x7657)))))
                         (begin
                           (write '(funapp 789 26))
                           (display "\n")
                           (cdr x7656)))))
                      (begin
                        (write '(funapp 790 23))
                        (display "\n")
                        (cdr x7655)))))
                   g7654)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 795 57))
                        (display "\n")
                        (assert x7661))))
                    (g7659
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 796 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 796 57))
                        (display "\n")
                        (assert x7662))))
                    (g7660
                     (letrec*
                      ((x-cnd7663
                        (begin
                          (write '(funapp 799 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7663
                        x
                        (letrec*
                         ((x7665
                           (begin
                             (write '(funapp 803 34))
                             (display "\n")
                             (cdr x)))
                          (x7664
                           (begin
                             (write '(funapp 803 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (list-tail x7665 x7664)))))))
                   g7660)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7666
                     (begin (write '(funapp 806 49)) (display "\n") '())))
                   g7666)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x-cnd7668
                        (letrec*
                         ((x7669 #\a))
                         (begin
                           (write '(funapp 813 48))
                           (display "\n")
                           (char-ci>=? c x7669)))))
                      (if x-cnd7668
                        (letrec*
                         ((x7670 #\z))
                         (begin
                           (write '(funapp 815 48))
                           (display "\n")
                           (char-ci<=? c x7670)))
                        #f))))
                   g7667)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7672
                           (begin
                             (write '(funapp 824 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 824 62))
                           (display "\n")
                           (= x7672 9)))))
                      (letrec*
                       ((g7673
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7674
                                 (begin
                                   (write '(funapp 832 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 833 32))
                                 (display "\n")
                                 (= x7674 10)))))
                            (letrec*
                             ((g7675
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7676
                                    (begin
                                      (write '(funapp 839 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 840 35))
                                    (display "\n")
                                    (= x7676 32))))))
                             g7675)))))
                       g7673))))
                   g7671)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7678
                        (letrec*
                         ((x7679
                           (begin
                             (write '(funapp 849 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 849 58))
                           (display "\n")
                           (cdr x7679)))))
                      (begin
                        (write '(funapp 850 23))
                        (display "\n")
                        (cdr x7678)))))
                   g7677)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7682
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 855 59))
                        (display "\n")
                        (assert x7682))))
                    (g7681
                     (begin (write '(funapp 856 28)) (display "\n") (> x 0))))
                   g7681)))
               ($pc (begin (write '(funapp 858 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7683 #f)) g7683)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x7685
                        (begin
                          (write '(funapp 864 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 864 55))
                        (display "\n")
                        (cdr x7685)))))
                   g7684)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((x7688
                        (begin
                          (write '(funapp 869 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 869 59))
                        (display "\n")
                        (assert x7688))))
                    (g7687
                     (letrec*
                      ((x-cnd7689
                        (begin
                          (write '(funapp 872 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7689
                        (begin
                          (write '(funapp 873 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 873 49))
                          (display "\n")
                          (floor x))))))
                   g7687)))
               ($cmp (begin (write '(funapp 875 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7690
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 881 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7691
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7692
                                 (begin
                                   (write '(funapp 889 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7692
                                 (begin
                                   (write '(funapp 890 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7693
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7694
                                       (begin
                                         (write '(funapp 898 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7694
                                       (letrec*
                                        ((x-cnd7695
                                          (begin
                                            (write '(funapp 901 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7695
                                          (begin
                                            (write '(funapp 902 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7696
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7697
                                             (begin
                                               (write '(funapp 911 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7697
                                             (letrec*
                                              ((x-cnd7698
                                                (begin
                                                  (write '(funapp 914 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7698
                                                (letrec*
                                                 ((x-cnd7699
                                                   (letrec*
                                                    ((x7701
                                                      (begin
                                                        (write
                                                         '(funapp 919 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7700
                                                      (begin
                                                        (write
                                                         '(funapp 920 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 921 53))
                                                      (display "\n")
                                                      (equal? x7701 x7700)))))
                                                 (if x-cnd7699
                                                   (letrec*
                                                    ((x7703
                                                      (begin
                                                        (write
                                                         '(funapp 924 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7702
                                                      (begin
                                                        (write
                                                         '(funapp 925 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 926 53))
                                                      (display "\n")
                                                      (equal? x7703 x7702)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7704
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7705
                                                (begin
                                                  (write '(funapp 935 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7705
                                                (letrec*
                                                 ((x-cnd7706
                                                   (begin
                                                     (write '(funapp 938 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7706
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 941 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7707
                                                       (letrec*
                                                        ((x-cnd7708
                                                          (letrec*
                                                           ((x7709
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  948
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 950 60))
                                                             (display "\n")
                                                             (= x7709 n)))))
                                                        (if x-cnd7708
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7710
                                                                  (letrec*
                                                                   ((val7254
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          959
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7711
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7712
                                                                           (letrec*
                                                                            ((x7714
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   968
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7713
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   972
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 975
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7714
                                                                               x7713)))))
                                                                         (if x-cnd7712
                                                                           (letrec*
                                                                            ((x7715
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   981
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 984
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7715)))
                                                                           #f)))))
                                                                    g7711))))
                                                                g7710))))
                                                           (letrec*
                                                            ((g7716
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   990
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7716))
                                                          #f))))
                                                     g7707))
                                                   #f))
                                                #f)))))
                                         g7704)))))
                                   g7696)))))
                             g7693)))))
                       g7691))))
                   g7690)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7717
                     (letrec*
                      ((x7718
                        (letrec*
                         ((x7719
                           (letrec*
                            ((x7720
                              (begin
                                (write '(funapp 1008 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1008 61))
                              (display "\n")
                              (car x7720)))))
                         (begin
                           (write '(funapp 1009 26))
                           (display "\n")
                           (car x7719)))))
                      (begin
                        (write '(funapp 1010 23))
                        (display "\n")
                        (cdr x7718)))))
                   g7717)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7721
                     (letrec*
                      ((x7722
                        (letrec*
                         ((x7723
                           (letrec*
                            ((x7724
                              (begin
                                (write '(funapp 1019 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1019 61))
                              (display "\n")
                              (cdr x7724)))))
                         (begin
                           (write '(funapp 1020 26))
                           (display "\n")
                           (car x7723)))))
                      (begin
                        (write '(funapp 1021 23))
                        (display "\n")
                        (car x7722)))))
                   g7721)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7725
                     (begin
                       (write '(funapp 1023 53))
                       (display "\n")
                       (eq? x y))))
                   g7725)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x7729
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1028 60))
                        (display "\n")
                        (assert x7729))))
                    (g7727
                     (letrec*
                      ((x7730
                        (begin
                          (write '(funapp 1030 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1030 59))
                        (display "\n")
                        (assert x7730))))
                    (g7728
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1033 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1034 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7731
                         (begin
                           (write '(funapp 1036 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7732 res))
                       g7732))))
                   g7728)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7733
                     (begin
                       (write '(funapp 1039 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1039 57))
                          (display "\n")
                          '())))))
                   g7733)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1043 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1043 58))
                        (display "\n")
                        (assert x7737))))
                    (g7735
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 1044 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1044 58))
                        (display "\n")
                        (assert x7738))))
                    (g7736
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1047 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7739
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1049 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7739))))
                   g7736)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (letrec*
                         ((x7742
                           (begin
                             (write '(funapp 1057 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1057 58))
                           (display "\n")
                           (car x7742)))))
                      (begin
                        (write '(funapp 1058 23))
                        (display "\n")
                        (cdr x7741)))))
                   g7740)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (letrec*
                            ((x7746
                              (begin
                                (write '(funapp 1067 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1067 61))
                              (display "\n")
                              (cdr x7746)))))
                         (begin
                           (write '(funapp 1068 26))
                           (display "\n")
                           (car x7745)))))
                      (begin
                        (write '(funapp 1069 23))
                        (display "\n")
                        (cdr x7744)))))
                   g7743)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (letrec*
                         ((x7749
                           (begin
                             (write '(funapp 1077 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1077 58))
                           (display "\n")
                           (cdr x7749)))))
                      (begin
                        (write '(funapp 1078 23))
                        (display "\n")
                        (car x7748)))))
                   g7747)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7751
                        (letrec*
                         ((x7752
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (car x7752)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7751)))))
                   g7750)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1091 58))
                        (display "\n")
                        (assert x7756))))
                    (g7754
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1092 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1092 58))
                        (display "\n")
                        (assert x7757))))
                    (g7755
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 1093 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1093 66))
                        (display "\n")
                        (not x7758)))))
                   g7755)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1103 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1103 61))
                              (display "\n")
                              (car x7762)))))
                         (begin
                           (write '(funapp 1104 26))
                           (display "\n")
                           (car x7761)))))
                      (begin
                        (write '(funapp 1105 23))
                        (display "\n")
                        (car x7760)))))
                   g7759)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1110 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1110 59))
                        (display "\n")
                        (assert x7765))))
                    (g7764
                     (begin (write '(funapp 1111 28)) (display "\n") (< x 0))))
                   g7764)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7766
                     (begin
                       (write '(funapp 1113 53))
                       (display "\n")
                       (memq e l))))
                   g7766)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7768
                        (letrec*
                         ((x7769
                           (begin
                             (write '(funapp 1119 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1119 58))
                           (display "\n")
                           (car x7769)))))
                      (begin
                        (write '(funapp 1120 23))
                        (display "\n")
                        (car x7768)))))
                   g7767)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7770
                     (begin (write '(funapp 1122 51)) (display "\n") '())))
                   g7770)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 1126 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1126 57))
                        (display "\n")
                        (assert x7773))))
                    (g7772
                     (letrec*
                      ((x-cnd7774
                        (begin
                          (write '(funapp 1129 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7774
                        (begin (write '(funapp 1131 24)) (display "\n") '())
                        (letrec*
                         ((x7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1133 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1133 61))
                              (display "\n")
                              (reverse x7778))))
                          (x7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (list x7776)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (append x7777 x7775)))))))
                   g7772)))
               (caaadr
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
                                (write '(funapp 1144 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1144 61))
                              (display "\n")
                              (car x7782)))))
                         (begin
                           (write '(funapp 1145 26))
                           (display "\n")
                           (car x7781)))))
                      (begin
                        (write '(funapp 1146 23))
                        (display "\n")
                        (car x7780)))))
                   g7779)))
               (cddadr
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
                                (write '(funapp 1155 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1155 61))
                              (display "\n")
                              (car x7786)))))
                         (begin
                           (write '(funapp 1156 26))
                           (display "\n")
                           (cdr x7785)))))
                      (begin
                        (write '(funapp 1157 23))
                        (display "\n")
                        (cdr x7784)))))
                   g7783)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1162 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1162 59))
                        (display "\n")
                        (assert x7789))))
                    (g7788
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1163 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1163 60))
                        (display "\n")
                        (= 1 x7790)))))
                   g7788)))
               (caadar
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
                                (write '(funapp 1172 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1172 61))
                              (display "\n")
                              (cdr x7794)))))
                         (begin
                           (write '(funapp 1173 26))
                           (display "\n")
                           (car x7793)))))
                      (begin
                        (write '(funapp 1174 23))
                        (display "\n")
                        (car x7792)))))
                   g7791)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1180 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1180 59))
                        (display "\n")
                        (assert x7798))))
                    (g7796
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1181 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1181 60))
                        (display "\n")
                        (assert x7799))))
                    (g7797
                     (letrec*
                      ((x-cnd7800
                        (begin
                          (write '(funapp 1184 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7800
                        (letrec*
                         ((g7801
                           (begin
                             (write '(funapp 1186 42))
                             (display "\n")
                             (proc))))
                         g7801)
                        (letrec*
                         ((x-cnd7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1189 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1189 58))
                              (display "\n")
                              (null? x7803)))))
                         (if x-cnd7802
                           (letrec*
                            ((g7804
                              (letrec*
                               ((x7805
                                 (begin
                                   (write '(funapp 1193 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1193 61))
                                 (display "\n")
                                 (proc x7805)))))
                            g7804)
                           (letrec*
                            ((x-cnd7806
                              (letrec*
                               ((x7807
                                 (begin
                                   (write '(funapp 1197 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1197 62))
                                 (display "\n")
                                 (null? x7807)))))
                            (if x-cnd7806
                              (letrec*
                               ((g7808
                                 (letrec*
                                  ((x7810
                                    (begin
                                      (write '(funapp 1202 43))
                                      (display "\n")
                                      (car args)))
                                   (x7809
                                    (begin
                                      (write '(funapp 1202 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1203 35))
                                    (display "\n")
                                    (proc x7810 x7809)))))
                               g7808)
                              (letrec*
                               ((x-cnd7811
                                 (letrec*
                                  ((x7812
                                    (begin
                                      (write '(funapp 1208 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1209 35))
                                    (display "\n")
                                    (null? x7812)))))
                               (if x-cnd7811
                                 (letrec*
                                  ((g7813
                                    (letrec*
                                     ((x7816
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (car args)))
                                      (x7815
                                       (begin
                                         (write '(funapp 1215 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7814
                                       (begin
                                         (write '(funapp 1216 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1217 38))
                                       (display "\n")
                                       (proc x7816 x7815 x7814)))))
                                  g7813)
                                 (letrec*
                                  ((x-cnd7817
                                    (letrec*
                                     ((x7818
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1223 38))
                                       (display "\n")
                                       (null? x7818)))))
                                  (if x-cnd7817
                                    (letrec*
                                     ((g7819
                                       (letrec*
                                        ((x7823
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (car args)))
                                         (x7822
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7821
                                          (begin
                                            (write '(funapp 1230 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7820
                                          (begin
                                            (write '(funapp 1231 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1232 41))
                                          (display "\n")
                                          (proc x7823 x7822 x7821 x7820)))))
                                     g7819)
                                    (letrec*
                                     ((x-cnd7824
                                       (letrec*
                                        ((x7825
                                          (letrec*
                                           ((x7826
                                             (begin
                                               (write '(funapp 1239 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1240 44))
                                             (display "\n")
                                             (cdr x7826)))))
                                        (begin
                                          (write '(funapp 1241 41))
                                          (display "\n")
                                          (null? x7825)))))
                                     (if x-cnd7824
                                       (letrec*
                                        ((g7827
                                          (letrec*
                                           ((x7833
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (car args)))
                                            (x7832
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7831
                                             (begin
                                               (write '(funapp 1248 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7830
                                             (begin
                                               (write '(funapp 1249 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7828
                                             (letrec*
                                              ((x7829
                                                (begin
                                                  (write '(funapp 1252 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1253 47))
                                                (display "\n")
                                                (car x7829)))))
                                           (begin
                                             (write '(funapp 1254 44))
                                             (display "\n")
                                             (proc
                                              x7833
                                              x7832
                                              x7831
                                              x7830
                                              x7828)))))
                                        g7827)
                                       (letrec*
                                        ((x-cnd7834
                                          (letrec*
                                           ((x7835
                                             (letrec*
                                              ((x7836
                                                (begin
                                                  (write '(funapp 1266 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1267 47))
                                                (display "\n")
                                                (cddr x7836)))))
                                           (begin
                                             (write '(funapp 1268 44))
                                             (display "\n")
                                             (null? x7835)))))
                                        (if x-cnd7834
                                          (letrec*
                                           ((g7837
                                             (letrec*
                                              ((x7845
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7844
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7843
                                                (begin
                                                  (write '(funapp 1275 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7842
                                                (begin
                                                  (write '(funapp 1276 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7840
                                                (letrec*
                                                 ((x7841
                                                   (begin
                                                     (write '(funapp 1279 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1280 50))
                                                   (display "\n")
                                                   (car x7841))))
                                               (x7838
                                                (letrec*
                                                 ((x7839
                                                   (begin
                                                     (write '(funapp 1283 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1284 50))
                                                   (display "\n")
                                                   (cadr x7839)))))
                                              (begin
                                                (write '(funapp 1285 47))
                                                (display "\n")
                                                (proc
                                                 x7845
                                                 x7844
                                                 x7843
                                                 x7842
                                                 x7840
                                                 x7838)))))
                                           g7837)
                                          (letrec*
                                           ((x-cnd7846
                                             (letrec*
                                              ((x7847
                                                (letrec*
                                                 ((x7848
                                                   (begin
                                                     (write '(funapp 1298 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1299 50))
                                                   (display "\n")
                                                   (cdddr x7848)))))
                                              (begin
                                                (write '(funapp 1300 47))
                                                (display "\n")
                                                (null? x7847)))))
                                           (if x-cnd7846
                                             (letrec*
                                              ((g7849
                                                (letrec*
                                                 ((x7859
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7858
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7857
                                                   (begin
                                                     (write '(funapp 1307 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7856
                                                   (begin
                                                     (write '(funapp 1308 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7854
                                                   (letrec*
                                                    ((x7855
                                                      (begin
                                                        (write
                                                         '(funapp 1311 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1312 53))
                                                      (display "\n")
                                                      (car x7855))))
                                                  (x7852
                                                   (letrec*
                                                    ((x7853
                                                      (begin
                                                        (write
                                                         '(funapp 1315 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1316 53))
                                                      (display "\n")
                                                      (cadr x7853))))
                                                  (x7850
                                                   (letrec*
                                                    ((x7851
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (caddr x7851)))))
                                                 (begin
                                                   (write '(funapp 1321 50))
                                                   (display "\n")
                                                   (proc
                                                    x7859
                                                    x7858
                                                    x7857
                                                    x7856
                                                    x7854
                                                    x7852
                                                    x7850)))))
                                              g7849)
                                             (letrec*
                                              ((g7860
                                                (begin
                                                  (write '(funapp 1332 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7860)))))))))))))))))))
                   g7797)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7863
                        (begin
                          (write '(funapp 1338 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1338 57))
                        (display "\n")
                        (assert x7863))))
                    (g7862
                     (letrec*
                      ((x-cnd7864
                        (begin
                          (write '(funapp 1341 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7864
                        #f
                        (letrec*
                         ((x-cnd7865
                           (letrec*
                            ((x7866
                              (begin
                                (write '(funapp 1346 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1346 55))
                              (display "\n")
                              (equal? x7866 e)))))
                         (if x-cnd7865
                           l
                           (letrec*
                            ((x7867
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1349 55))
                              (display "\n")
                              (member e x7867)))))))))
                   g7862)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7869
                        (letrec*
                         ((x7870
                           (letrec*
                            ((x7871
                              (begin
                                (write '(funapp 1358 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1358 61))
                              (display "\n")
                              (cdr x7871)))))
                         (begin
                           (write '(funapp 1359 26))
                           (display "\n")
                           (cdr x7870)))))
                      (begin
                        (write '(funapp 1360 23))
                        (display "\n")
                        (cdr x7869)))))
                   g7868)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7873
                        (letrec*
                         ((x7874
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 1369 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1369 61))
                              (display "\n")
                              (cdr x7875)))))
                         (begin
                           (write '(funapp 1370 26))
                           (display "\n")
                           (cdr x7874)))))
                      (begin
                        (write '(funapp 1371 23))
                        (display "\n")
                        (car x7873)))))
                   g7872)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7876
                     (begin
                       (write '(funapp 1373 53))
                       (display "\n")
                       (random 42))))
                   g7876)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1377 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1377 59))
                        (display "\n")
                        (assert x7879))))
                    (g7878
                     (begin (write '(funapp 1378 28)) (display "\n") (= x 0))))
                   g7878)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1385 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7881
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1387 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7881))))
                   g7880)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7883
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1393 55))
                        (display "\n")
                        (car x7883)))))
                   g7882)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7885
                           (begin
                             (write '(funapp 1403 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7885
                           (letrec*
                            ((x7886
                              (begin
                                (write '(funapp 1405 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1405 55))
                              (display "\n")
                              (list? x7886)))
                           #f))))
                      (letrec*
                       ((g7887
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1408 52))
                             (display "\n")
                             (null? l)))))
                       g7887))))
                   g7884)))
               (cddaar
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
                                (write '(funapp 1418 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1418 61))
                              (display "\n")
                              (car x7891)))))
                         (begin
                           (write '(funapp 1419 26))
                           (display "\n")
                           (cdr x7890)))))
                      (begin
                        (write '(funapp 1420 23))
                        (display "\n")
                        (cdr x7889)))))
                   g7888)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x-cnd7893
                        (letrec*
                         ((x7894 #\0))
                         (begin
                           (write '(funapp 1427 58))
                           (display "\n")
                           (char<=? x7894 c)))))
                      (if x-cnd7893
                        (letrec*
                         ((x7895 #\9))
                         (begin
                           (write '(funapp 1429 48))
                           (display "\n")
                           (char<=? c x7895)))
                        #f))))
                   g7892)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7898
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1436 57))
                        (display "\n")
                        (assert x7898))))
                    (g7897
                     (letrec*
                      ((x-cnd7899
                        (begin
                          (write '(funapp 1439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7899
                        #f
                        (letrec*
                         ((x-cnd7900
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1444 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1444 56))
                              (display "\n")
                              (eqv? x7901 k)))))
                         (if x-cnd7900
                           (begin
                             (write '(funapp 1446 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 1447 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1447 55))
                              (display "\n")
                              (assq k x7902)))))))))
                   g7897)))
               (not (lambda (x) (letrec* ((g7903 (if x #f #t))) g7903)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7904
                     (begin
                       (write '(funapp 1451 50))
                       (display "\n")
                       (append l1 l2))))
                   g7904)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 1455 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1455 57))
                        (display "\n")
                        (assert x7907))))
                    (g7906
                     (letrec*
                      ((x-cnd7908
                        (begin
                          (write '(funapp 1458 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7908
                        #f
                        (letrec*
                         ((x-cnd7909
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1463 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1463 55))
                              (display "\n")
                              (eq? x7910 e)))))
                         (if x-cnd7909
                           l
                           (letrec*
                            ((x7911
                              (begin
                                (write '(funapp 1466 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1466 55))
                              (display "\n")
                              (memq e x7911)))))))))
                   g7906)))
               (cadaar
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
                                (write '(funapp 1475 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1475 61))
                              (display "\n")
                              (car x7915)))))
                         (begin
                           (write '(funapp 1476 26))
                           (display "\n")
                           (cdr x7914)))))
                      (begin
                        (write '(funapp 1477 23))
                        (display "\n")
                        (car x7913)))))
                   g7912)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 1482 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1482 57))
                        (display "\n")
                        (assert x7918))))
                    (g7917
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7919
                             (letrec*
                              ((x-cnd7920
                                (begin
                                  (write '(funapp 1490 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7920
                                0
                                (letrec*
                                 ((x7921
                                   (letrec*
                                    ((x7922
                                      (begin
                                        (write '(funapp 1495 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1495 63))
                                      (display "\n")
                                      (rec x7922)))))
                                 (begin
                                   (write '(funapp 1496 34))
                                   (display "\n")
                                   (+ 1 x7921)))))))
                           g7919))))
                      (letrec*
                       ((g7923
                         (begin
                           (write '(funapp 1498 40))
                           (display "\n")
                           (rec l))))
                       g7923))))
                   g7917)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1503 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1503 58))
                        (display "\n")
                        (assert x7927))))
                    (g7925
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1504 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1504 58))
                        (display "\n")
                        (assert x7928))))
                    (g7926
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1507 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7929
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1509 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7929))))
                   g7926)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1515 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1515 65))
                        (display "\n")
                        (not x7931)))))
                   g7930)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7933
                        (letrec*
                         ((x7934
                           (begin
                             (write '(funapp 1522 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1522 58))
                           (display "\n")
                           (car x7934)))))
                      (begin
                        (write '(funapp 1523 23))
                        (display "\n")
                        (cdr x7933)))))
                   g7932)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1528 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1528 57))
                        (display "\n")
                        (assert x7937))))
                    (g7936
                     (letrec*
                      ((x-cnd7938
                        (begin
                          (write '(funapp 1531 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7938
                        #f
                        (letrec*
                         ((x-cnd7939
                           (letrec*
                            ((x7940
                              (begin
                                (write '(funapp 1536 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1536 56))
                              (display "\n")
                              (equal? x7940 k)))))
                         (if x-cnd7939
                           (begin
                             (write '(funapp 1538 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7941
                              (begin
                                (write '(funapp 1539 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1539 55))
                              (display "\n")
                              (assoc k x7941)))))))))
                   g7936)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1544 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1544 55))
                        (display "\n")
                        (car x7943)))))
                   g7942)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7947))))
                    (g7945
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1550 58))
                        (display "\n")
                        (assert x7948))))
                    (g7946
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1551 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1551 63))
                        (display "\n")
                        (not x7949)))))
                   g7946)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1558 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7951
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1560 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7951))))
                   g7950)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1566 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1566 62))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1567 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (assert x7956))))
                    (g7954
                     (letrec*
                      ((x-cnd7957
                        (begin
                          (write '(funapp 1570 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7957
                        #t
                        (letrec*
                         ((x-cnd7958
                           (begin
                             (write '(funapp 1574 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7958
                           (letrec*
                            ((g7959
                              (letrec*
                               ((x7961
                                 (begin
                                   (write '(funapp 1577 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1577 64))
                                 (display "\n")
                                 (f x7961))))
                             (g7960
                              (letrec*
                               ((x7962
                                 (begin
                                   (write '(funapp 1579 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1579 58))
                                 (display "\n")
                                 (for-each f x7962)))))
                            g7960)
                           (begin
                             (write '(funapp 1581 27))
                             (display "\n")
                             '())))))))
                   g7954)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1586 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1586 59))
                        (display "\n")
                        (assert x7965))))
                    (g7964
                     (letrec*
                      ((x-cnd7966
                        (begin
                          (write '(funapp 1588 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7966
                        (begin
                          (write '(funapp 1588 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7964)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7971))))
                    (g7969
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1597 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7972
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1599 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7972))))
                   g7969)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7974
                        (letrec*
                         ((x7975
                           (letrec*
                            ((x7976
                              (begin
                                (write '(funapp 1609 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1609 61))
                              (display "\n")
                              (cdr x7976)))))
                         (begin
                           (write '(funapp 1610 26))
                           (display "\n")
                           (cdr x7975)))))
                      (begin
                        (write '(funapp 1611 23))
                        (display "\n")
                        (car x7974)))))
                   g7973)))
               (newline (lambda () (letrec* ((g7977 #f)) g7977)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7978
                     (letrec*
                      ((x7980
                        (letrec*
                         ((x7981
                           (begin
                             (write '(funapp 1619 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1619 58))
                           (display "\n")
                           (abs x7981))))
                       (x7979
                        (begin
                          (write '(funapp 1620 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1621 23))
                        (display "\n")
                        (/ x7980 x7979)))))
                   g7978)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7982
                     (letrec*
                      ((x7986
                        (begin
                          (write '(funapp 1627 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1627 57))
                        (display "\n")
                        (assert x7986))))
                    (g7983
                     (letrec*
                      ((x7987
                        (begin
                          (write '(funapp 1628 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1628 63))
                        (display "\n")
                        (assert x7987))))
                    (g7984
                     (letrec*
                      ((x7988
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1631 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1631 61))
                           (display "\n")
                           (< index x7989)))))
                      (begin
                        (write '(funapp 1632 23))
                        (display "\n")
                        (assert x7988))))
                    (g7985
                     (letrec*
                      ((x-cnd7990
                        (begin
                          (write '(funapp 1635 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7990
                        (begin
                          (write '(funapp 1637 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1639 34))
                             (display "\n")
                             (cdr l)))
                          (x7991
                           (begin
                             (write '(funapp 1639 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1640 26))
                           (display "\n")
                           (list-ref x7992 x7991)))))))
                   g7985)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x-cnd7994
                        (begin
                          (write '(funapp 1647 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7994
                        a
                        (letrec*
                         ((x7995
                           (begin
                             (write '(funapp 1650 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1650 57))
                           (display "\n")
                           (gcd b x7995)))))))
                   g7993)))
               (mk-list
                (lambda (n x)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x-cnd7997
                        (begin
                          (write '(funapp 1657 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd7997
                        empty
                        (letrec*
                         ((x7998
                           (letrec*
                            ((x7999
                              (begin
                                (write '(funapp 1662 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1662 55))
                              (display "\n")
                              (mk-list x7999 x)))))
                         (begin
                           (write '(funapp 1663 26))
                           (display "\n")
                           (cons x x7998)))))))
                   g7996)))
               (mem
                (lambda (x xs)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((x-cnd8001
                        (begin
                          (write '(funapp 1670 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8001
                        #f
                        (letrec*
                         ((val7261
                           (letrec*
                            ((x8002
                              (begin
                                (write '(funapp 1674 53))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1674 64))
                              (display "\n")
                              (= x x8002)))))
                         (letrec*
                          ((g8003
                            (if val7261
                              val7261
                              (letrec*
                               ((x8004
                                 (begin
                                   (write '(funapp 1679 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1679 59))
                                 (display "\n")
                                 (mem x x8004))))))
                          g8003))))))
                   g8000))))
              (letrec*
               ((g8005
                 (begin
                   (write '(funapp 1684 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1685 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((xj7396
                          (begin
                            (write '(funapp 1687 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1687 34))
                               (display "\n")
                               'module))))
                         (xk7397
                          (begin
                            (write '(funapp 1687 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1687 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8006
                           (begin
                             (write '(funapp 1690 24))
                             (display "\n")
                             ((lambda (j7400 k7401 f7402)
                                (letrec*
                                 ((g8007
                                   (lambda (g7398 g7399)
                                     (letrec*
                                      ((g8008
                                        (letrec*
                                         ((x7403
                                           (begin
                                             (write '(funapp 1697 44))
                                             (display "\n")
                                             (integer?/c j7400 k7401 g7398)))
                                          (x7404
                                           (begin
                                             (write '(funapp 1698 44))
                                             (display "\n")
                                             (integer?/c j7400 k7401 g7399))))
                                         (letrec*
                                          ((g8009
                                            (letrec*
                                             ((x8011
                                               (begin
                                                 (write '(funapp 1703 42))
                                                 (display "\n")
                                                 ((lambda (_ x)
                                                    (letrec*
                                                     ((g8012
                                                       (letrec*
                                                        ((x8017
                                                          (begin
                                                            (write
                                                             '(funapp 1707 57))
                                                            (display "\n")
                                                            (listof
                                                             integer?/c))))
                                                        (begin
                                                          (write
                                                           '(funapp 1708 49))
                                                          (display "\n")
                                                          (and/c
                                                           x8017
                                                           (lambda (g7405
                                                                    g7406
                                                                    g7407)
                                                             (letrec*
                                                              ((g8013
                                                                (letrec*
                                                                 ((x-cnd8014
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        1715
                                                                        58))
                                                                     (display
                                                                      "\n")
                                                                     ((lambda (l)
                                                                        (letrec*
                                                                         ((g8015
                                                                           (letrec*
                                                                            ((val7262
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1720
                                                                                   67))
                                                                                (display
                                                                                 "\n")
                                                                                (empty?
                                                                                 l))))
                                                                            (letrec*
                                                                             ((g8016
                                                                               (if val7262
                                                                                 val7262
                                                                                 (begin
                                                                                   (write
                                                                                    '(funapp
                                                                                      1725
                                                                                      70))
                                                                                   (display
                                                                                    "\n")
                                                                                   (member
                                                                                    x
                                                                                    l)))))
                                                                             g8016))))
                                                                         g8015))
                                                                      g7407))))
                                                                 (if x-cnd8014
                                                                   g7407
                                                                   (begin
                                                                     (write
                                                                      '(blame
                                                                        g7405
                                                                        1733
                                                                        57))
                                                                     (display
                                                                      "\n")
                                                                     (error
                                                                      (format
                                                                       "contract violation, blaming ~a~%"
                                                                       g7405)))))))
                                                              g8013)))))))
                                                     g8012))
                                                  x7403
                                                  x7404)))
                                              (x8010
                                               (begin
                                                 (write '(funapp 1748 48))
                                                 (display "\n")
                                                 (f7402 x7403 x7404))))
                                             (begin
                                               (write '(funapp 1749 40))
                                               (display "\n")
                                               (x8011 j7400 k7401 x8010)))))
                                          g8009))))
                                      g8008))))
                                 g8007))
                              xj7396
                              xk7397
                              mk-list))))
                         g8006))
                       (letrec*
                        ((x8020
                          (letrec*
                           ((xj7408
                             (begin
                               (write '(funapp 1760 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1760 37))
                                  (display "\n")
                                  'module))))
                            (xk7409
                             (begin
                               (write '(funapp 1760 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1760 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8021
                              (begin
                                (write '(funapp 1763 27))
                                (display "\n")
                                ((lambda (j7412 k7413 f7414)
                                   (letrec*
                                    ((g8022
                                      (lambda (g7410 g7411)
                                        (letrec*
                                         ((g8023
                                           (letrec*
                                            ((x8024
                                              (letrec*
                                               ((x8027
                                                 (begin
                                                   (write '(funapp 1773 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7412
                                                    k7413
                                                    g7410)))
                                                (x8025
                                                 (letrec*
                                                  ((x8026
                                                    (begin
                                                      (write '(funapp 1776 53))
                                                      (display "\n")
                                                      (listof integer?/c))))
                                                  (begin
                                                    (write '(funapp 1777 45))
                                                    (display "\n")
                                                    (x8026
                                                     j7412
                                                     k7413
                                                     g7411)))))
                                               (begin
                                                 (write '(funapp 1778 42))
                                                 (display "\n")
                                                 (f7414 x8027 x8025)))))
                                            (begin
                                              (write '(funapp 1779 39))
                                              (display "\n")
                                              (boolean?/c
                                               j7412
                                               k7413
                                               x8024)))))
                                         g8023))))
                                    g8022))
                                 xj7408
                                 xk7409
                                 mem))))
                            g8021)))
                         (x8019 (input))
                         (x8018 (input)))
                        (begin
                          (write '(funapp 1788 21))
                          (display "\n")
                          (x8020 x8019 x8018)))))))))
               g8005))))
           g7442))))
       g7426)))
    g7425)))
