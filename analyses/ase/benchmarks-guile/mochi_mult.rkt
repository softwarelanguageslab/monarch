(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7412 #t)) g7412)))
    (meta (lambda (v) (letrec* ((g7413 v)) g7413)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7414
          (letrec*
           ((g7415
             (letrec*
              ((x-e7416 lst))
              (letrec*
               ((v1742 x-e7416))
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
                   ((x-cnd7417
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7417
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
           g7415)))
        g7414)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7418 (lambda (v) (letrec* ((g7419 v)) g7419)))) g7418)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7420
          (letrec*
           ((x7421 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7421)))))
        g7420))))
   (letrec*
    ((g7422
      (letrec*
       ((g7423
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7424
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7424)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7425
                 (letrec*
                  ((x7427
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7427))))
                (g7426
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7428
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7429 (if val7244 val7244 #f))) g7429)))))
                   g7428))))
               g7426)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7430
                 (letrec*
                  ((x7432
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7432))))
                (g7431
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7433
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7434 (if val7246 val7246 #f))) g7434)))))
                   g7433))))
               g7431)))
           (>
            (lambda (x y)
              (letrec*
               ((g7435
                 (letrec*
                  ((x7437
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7437))))
                (g7436
                 (letrec*
                  ((x7438
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7438)))))
               g7436)))
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
           ((g7439 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7440
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7441
                     (lambda (k j lst)
                       (letrec*
                        ((g7442
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7443
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7443))
                             lst))))
                        g7442))))
                   g7441)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7445
                        g7264
                        (begin
                          (write '(blame g7262 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7444)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7447
                        g7267
                        (begin
                          (write '(blame g7265 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7446)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7449
                        g7270
                        (begin
                          (write '(blame g7268 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7448)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7452 #t)) g7452)) g7273))))
                      (if x-cnd7451
                        g7273
                        (begin
                          (write '(blame g7271 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7450)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7455 #t)) g7455)) g7276))))
                      (if x-cnd7454
                        g7276
                        (begin
                          (write '(blame g7274 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7453)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7457
                        g7279
                        (begin
                          (write '(blame g7277 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7456)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7459
                        g7282
                        (begin
                          (write '(blame g7280 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7458)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7461
                        g7285
                        (begin
                          (write '(blame g7283 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7460)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x-cnd7463
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7463
                        g7288
                        (begin
                          (write '(blame g7286 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7462)))
               (string?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x-cnd7465
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7291))))
                      (if x-cnd7465
                        g7291
                        (begin
                          (write '(blame g7289 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
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
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7468
                             (begin
                               (write '(funapp 210 42))
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
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7471
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7475
                                (letrec*
                                 ((x7476
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7476))))
                               (x7472
                                (letrec*
                                 ((x7474
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7473
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7474 k j x7473)))))
                              (begin
                                (write '(funapp 233 31))
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
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7479)))))
                   g7478)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7480
                     (letrec*
                      ((x-cnd7481
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7482
                                (letrec*
                                 ((x7483
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7483)))))
                              g7482))
                           g7294))))
                      (if x-cnd7481
                        g7294
                        (begin
                          (write '(blame g7292 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7480)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7484
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7485
                          (letrec*
                           ((x-cnd7486
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7487
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7487))
                                g7297))))
                           (if x-cnd7486
                             g7297
                             (begin
                               (write '(blame g7295 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7485))))
                   g7484)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7488
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7489
                          (letrec*
                           ((x-cnd7490
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7491
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7491))
                                g7300))))
                           (if x-cnd7490
                             g7300
                             (begin
                               (write '(blame g7298 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7489))))
                   g7488)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7492
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7493
                          (letrec*
                           ((x-cnd7494
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7495
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7495))
                                g7303))))
                           (if x-cnd7494
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7493))))
                   g7492)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7496
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7497
                          (letrec*
                           ((x-cnd7498
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7499
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7499))
                                g7306))))
                           (if x-cnd7498
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7497))))
                   g7496)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7500
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7501
                          (letrec*
                           ((x-cnd7502
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7503
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7503))
                                g7309))))
                           (if x-cnd7502
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7501))))
                   g7500)))
               (meta (lambda (v) (letrec* ((g7504 v)) g7504)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7505
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7507
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7508
                                 (letrec*
                                  ((x7509
                                    (letrec*
                                     ((x7511
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7510
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7316 x7511 x7510)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7509)))))
                               g7508))))
                          g7507))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7506
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7506))))))
                  g7505)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7512
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7514
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7515
                                 (letrec*
                                  ((x7516
                                    (letrec*
                                     ((x7518
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7517
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7323 x7518 x7517)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7516)))))
                               g7515))))
                          g7514))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7513
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7513))))))
                  g7512)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7519
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7521
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7522
                                 (letrec*
                                  ((x7523
                                    (letrec*
                                     ((x7525
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7524
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7330 x7525 x7524)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7523)))))
                               g7522))))
                          g7521))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7520
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7520))))))
                  g7519)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7526
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7528
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7529
                                 (letrec*
                                  ((x7530
                                    (letrec*
                                     ((x7532
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7531
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7337 x7532 x7531)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7530)))))
                               g7529))))
                          g7528))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7527
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7527))))))
                  g7526)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7533
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7535
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7536
                                 (letrec*
                                  ((x7537
                                    (letrec*
                                     ((x7539
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7538
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7344 x7539 x7538)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7537)))))
                               g7536))))
                          g7535))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7534
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7534))))))
                  g7533)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7540
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7542
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7543
                                 (letrec*
                                  ((x7544
                                    (letrec*
                                     ((x7546
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7545
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7351 x7546 x7545)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7544)))))
                               g7543))))
                          g7542))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7541
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7541))))))
                  g7540)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7547
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7549
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7550
                                 (letrec*
                                  ((x7551
                                    (letrec*
                                     ((x7553
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7552
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7358 x7553 x7552)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7551)))))
                               g7550))))
                          g7549))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7548
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7548))))))
                  g7547)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7554
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7556
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7557
                                 (letrec*
                                  ((x7558
                                    (letrec*
                                     ((x7560
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7559
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7365 x7560 x7559)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7558)))))
                               g7557))))
                          g7556))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7555
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7555))))))
                  g7554)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7561
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7563
                            (lambda (g7368)
                              (letrec*
                               ((g7564
                                 (letrec*
                                  ((x7565
                                    (letrec*
                                     ((x7566
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7371 x7566)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7565)))))
                               g7564))))
                          g7563))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7562
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7562))))))
                  g7561)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7567
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7569
                            (lambda (g7374)
                              (letrec*
                               ((g7570
                                 (letrec*
                                  ((x7571
                                    (letrec*
                                     ((x7572
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7377 x7572)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7571)))))
                               g7570))))
                          g7569))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7568
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7568))))))
                  g7567)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7573
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7575
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7576
                                 (letrec*
                                  ((x7577
                                    (letrec*
                                     ((x7579
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7578
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7384 x7579 x7578)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7577)))))
                               g7576))))
                          g7575))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7574
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7574))))))
                  g7573)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7580
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7582
                            (lambda (g7387)
                              (letrec*
                               ((g7583
                                 (letrec*
                                  ((x7584
                                    (letrec*
                                     ((x7585
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7390 x7585)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7584)))))
                               g7583))))
                          g7582))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7581
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7581))))))
                  g7580)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7586
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7588
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7589
                                 (letrec*
                                  ((x7590
                                    (letrec*
                                     ((x7592
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7591
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7397 x7592 x7591)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7590)))))
                               g7589))))
                          g7588))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7587
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7587))))))
                  g7586)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7593
                     (letrec*
                      ((x7594
                        (letrec*
                         ((x7595
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7595)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7594)))))
                   g7593)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7599))))
                    (g7597
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7600))))
                    (g7598
                     (letrec*
                      ((x-cnd7601
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7601
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7604
                           (letrec*
                            ((x7605
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7605))))
                          (x7602
                           (letrec*
                            ((x7603
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7603)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7604 x7602)))))))
                   g7598)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7607)))))
                   g7606)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7609
                        (letrec*
                         ((x7610
                           (letrec*
                            ((x7611
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7611)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7610)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7609)))))
                   g7608)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (letrec*
                         ((x7614
                           (letrec*
                            ((x7615
                              (begin
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7615)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7614)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7613)))))
                   g7612)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7619))))
                    (g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7620))))
                    (g7618
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 715 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 716 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7621
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7622 res))
                       g7622))))
                   g7618)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7624
                        (letrec*
                         ((x7625
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7625)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7624)))))
                   g7623)))
               (cdaadr
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
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7629)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7628)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7627)))))
                   g7626)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7632))))
                    (g7631
                     (letrec*
                      ((x-cnd7633
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7633
                        #f
                        (letrec*
                         ((x-cnd7634
                           (letrec*
                            ((x7635
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7635 k)))))
                         (if x-cnd7634
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7636)))))))))
                   g7631)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7638)))))
                   g7637)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7641))))
                    (g7640
                     (letrec*
                      ((x-cnd7642
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7642
                        ""
                        (letrec*
                         ((x7645
                           (letrec*
                            ((x7646
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7646))))
                          (x7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7644)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7645 x7643)))))))
                   g7640)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7650))))
                    (g7648
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7651))))
                    (g7649
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7652
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7652))))
                   g7649)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7654
                        (letrec*
                         ((x7655
                           (letrec*
                            ((x7656
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7656)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7655)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7654)))))
                   g7653)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7661))))
                    (g7659
                     (letrec*
                      ((x-cnd7662
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7662
                        x
                        (letrec*
                         ((x7664
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7663
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7664 x7663)))))))
                   g7659)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7665
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7665)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7666
                     (letrec*
                      ((x-cnd7667
                        (letrec*
                         ((x7668 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7668)))))
                      (if x-cnd7667
                        (letrec*
                         ((x7669 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7669)))
                        #f))))
                   g7666)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7671
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7671 9)))))
                      (letrec*
                       ((g7672
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7673
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7673 10)))))
                            (letrec*
                             ((g7674
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7675
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7675 32))))))
                             g7674)))))
                       g7672))))
                   g7670)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((x7677
                        (letrec*
                         ((x7678
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7678)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7677)))))
                   g7676)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7679
                     (letrec*
                      ((x7681
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7681))))
                    (g7680
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7680)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7682 #f)) g7682)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x7684
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7684)))))
                   g7683)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7685
                     (letrec*
                      ((x7687
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7687))))
                    (g7686
                     (letrec*
                      ((x-cnd7688
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7688
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7686)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7690
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7691
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7691
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7692
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7693
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7693
                                       (letrec*
                                        ((x-cnd7694
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7694
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7695
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7696
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7696
                                             (letrec*
                                              ((x-cnd7697
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7697
                                                (letrec*
                                                 ((x-cnd7698
                                                   (letrec*
                                                    ((x7700
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7699
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7700 x7699)))))
                                                 (if x-cnd7698
                                                   (letrec*
                                                    ((x7702
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7701
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7702 x7701)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7703
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7704
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7704
                                                (letrec*
                                                 ((x-cnd7705
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7705
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7706
                                                       (letrec*
                                                        ((x-cnd7707
                                                          (letrec*
                                                           ((x7708
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  956
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 958 60))
                                                             (display "\n")
                                                             (= x7708 n)))))
                                                        (if x-cnd7707
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7709
                                                                  (letrec*
                                                                   ((val7254
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          967
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7710
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7711
                                                                           (letrec*
                                                                            ((x7713
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   976
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7712
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   980
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 983
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7713
                                                                               x7712)))))
                                                                         (if x-cnd7711
                                                                           (letrec*
                                                                            ((x7714
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   989
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 992
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7714)))
                                                                           #f)))))
                                                                    g7710))))
                                                                g7709))))
                                                           (letrec*
                                                            ((g7715
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7715))
                                                          #f))))
                                                     g7706))
                                                   #f))
                                                #f)))))
                                         g7703)))))
                                   g7695)))))
                             g7692)))))
                       g7690))))
                   g7689)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7716
                     (letrec*
                      ((x7717
                        (letrec*
                         ((x7718
                           (letrec*
                            ((x7719
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7719)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7718)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7717)))))
                   g7716)))
               (caaddr
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
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7723)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7722)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7721)))))
                   g7720)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7724
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7724)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7725
                     (letrec*
                      ((x7728
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7728))))
                    (g7726
                     (letrec*
                      ((x7729
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7729))))
                    (g7727
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1041 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1042 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7730
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7731 res))
                       g7731))))
                   g7727)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7732
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7732)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7736
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7736))))
                    (g7734
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7737))))
                    (g7735
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7738
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7738))))
                   g7735)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7740
                        (letrec*
                         ((x7741
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7741)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7740)))))
                   g7739)))
               (cdaddr
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
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7745)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7744)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7743)))))
                   g7742)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (letrec*
                         ((x7748
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7748)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7747)))))
                   g7746)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (letrec*
                         ((x7751
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7751)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7750)))))
                   g7749)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7755))))
                    (g7753
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7756))))
                    (g7754
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7757)))))
                   g7754)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7761)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7760)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7759)))))
                   g7758)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7764))))
                    (g7763
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7763)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7765
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7765)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7767
                        (letrec*
                         ((x7768
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7768)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7767)))))
                   g7766)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7769
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7769)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7772))))
                    (g7771
                     (letrec*
                      ((x-cnd7773
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7773
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7776
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7777))))
                          (x7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7775)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7776 x7774)))))))
                   g7771)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7779
                        (letrec*
                         ((x7780
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7781)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7780)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7779)))))
                   g7778)))
               (cddadr
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
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7785)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7784)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7783)))))
                   g7782)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7788))))
                    (g7787
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7789)))))
                   g7787)))
               (caadar
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
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7793)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7792)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7791)))))
                   g7790)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7797))))
                    (g7795
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7798))))
                    (g7796
                     (letrec*
                      ((x-cnd7799
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7799
                        (letrec*
                         ((g7800
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7800)
                        (letrec*
                         ((x-cnd7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7802)))))
                         (if x-cnd7801
                           (letrec*
                            ((g7803
                              (letrec*
                               ((x7804
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7804)))))
                            g7803)
                           (letrec*
                            ((x-cnd7805
                              (letrec*
                               ((x7806
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7806)))))
                            (if x-cnd7805
                              (letrec*
                               ((g7807
                                 (letrec*
                                  ((x7809
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7808
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7809 x7808)))))
                               g7807)
                              (letrec*
                               ((x-cnd7810
                                 (letrec*
                                  ((x7811
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7811)))))
                               (if x-cnd7810
                                 (letrec*
                                  ((g7812
                                    (letrec*
                                     ((x7815
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7814
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7813
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7815 x7814 x7813)))))
                                  g7812)
                                 (letrec*
                                  ((x-cnd7816
                                    (letrec*
                                     ((x7817
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7817)))))
                                  (if x-cnd7816
                                    (letrec*
                                     ((g7818
                                       (letrec*
                                        ((x7822
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7821
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7820
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7819
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7822 x7821 x7820 x7819)))))
                                     g7818)
                                    (letrec*
                                     ((x-cnd7823
                                       (letrec*
                                        ((x7824
                                          (letrec*
                                           ((x7825
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7825)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7824)))))
                                     (if x-cnd7823
                                       (letrec*
                                        ((g7826
                                          (letrec*
                                           ((x7832
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7831
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7830
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7829
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7827
                                             (letrec*
                                              ((x7828
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7828)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7832
                                              x7831
                                              x7830
                                              x7829
                                              x7827)))))
                                        g7826)
                                       (letrec*
                                        ((x-cnd7833
                                          (letrec*
                                           ((x7834
                                             (letrec*
                                              ((x7835
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7835)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7834)))))
                                        (if x-cnd7833
                                          (letrec*
                                           ((g7836
                                             (letrec*
                                              ((x7844
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7843
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7842
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7841
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7839
                                                (letrec*
                                                 ((x7840
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7840))))
                                               (x7837
                                                (letrec*
                                                 ((x7838
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7838)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7844
                                                 x7843
                                                 x7842
                                                 x7841
                                                 x7839
                                                 x7837)))))
                                           g7836)
                                          (letrec*
                                           ((x-cnd7845
                                             (letrec*
                                              ((x7846
                                                (letrec*
                                                 ((x7847
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7847)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7846)))))
                                           (if x-cnd7845
                                             (letrec*
                                              ((g7848
                                                (letrec*
                                                 ((x7858
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7857
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7856
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7855
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7853
                                                   (letrec*
                                                    ((x7854
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7854))))
                                                  (x7851
                                                   (letrec*
                                                    ((x7852
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7852))))
                                                  (x7849
                                                   (letrec*
                                                    ((x7850
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7850)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7858
                                                    x7857
                                                    x7856
                                                    x7855
                                                    x7853
                                                    x7851
                                                    x7849)))))
                                              g7848)
                                             (letrec*
                                              ((g7859
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7859)))))))))))))))))))
                   g7796)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x7862
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7862))))
                    (g7861
                     (letrec*
                      ((x-cnd7863
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7863
                        #f
                        (letrec*
                         ((x-cnd7864
                           (letrec*
                            ((x7865
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7865 e)))))
                         (if x-cnd7864
                           l
                           (letrec*
                            ((x7866
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7866)))))))))
                   g7861)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x7868
                        (letrec*
                         ((x7869
                           (letrec*
                            ((x7870
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7870)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7869)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7868)))))
                   g7867)))
               (cadddr
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
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7874)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7873)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7872)))))
                   g7871)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7875
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7875)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7878))))
                    (g7877
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7877)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7880
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7880))))
                   g7879)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7882)))))
                   g7881)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7884
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7884
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7885)))
                           #f))))
                      (letrec*
                       ((g7886
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7886))))
                   g7883)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x7888
                        (letrec*
                         ((x7889
                           (letrec*
                            ((x7890
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7890)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7889)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7888)))))
                   g7887)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x-cnd7892
                        (letrec*
                         ((x7893 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7893 c)))))
                      (if x-cnd7892
                        (letrec*
                         ((x7894 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7894)))
                        #f))))
                   g7891)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7897
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7897))))
                    (g7896
                     (letrec*
                      ((x-cnd7898
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7898
                        #f
                        (letrec*
                         ((x-cnd7899
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7900 k)))))
                         (if x-cnd7899
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7901)))))))))
                   g7896)))
               (not (lambda (x) (letrec* ((g7902 (if x #f #t))) g7902)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7903
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7903)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7906))))
                    (g7905
                     (letrec*
                      ((x-cnd7907
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7907
                        #f
                        (letrec*
                         ((x-cnd7908
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7909 e)))))
                         (if x-cnd7908
                           l
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7910)))))))))
                   g7905)))
               (cadaar
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
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7914)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7913)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7912)))))
                   g7911)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7917
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7917))))
                    (g7916
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7918
                             (letrec*
                              ((x-cnd7919
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7919
                                0
                                (letrec*
                                 ((x7920
                                   (letrec*
                                    ((x7921
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7921)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7920)))))))
                           g7918))))
                      (letrec*
                       ((g7922
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7922))))
                   g7916)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7926
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7926))))
                    (g7924
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7927))))
                    (g7925
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7928
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7928))))
                   g7925)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7930)))))
                   g7929)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7932
                        (letrec*
                         ((x7933
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7933)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7932)))))
                   g7931)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7936))))
                    (g7935
                     (letrec*
                      ((x-cnd7937
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7937
                        #f
                        (letrec*
                         ((x-cnd7938
                           (letrec*
                            ((x7939
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7939 k)))))
                         (if x-cnd7938
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7940
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7940)))))))))
                   g7935)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7942)))))
                   g7941)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7946))))
                    (g7944
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7947))))
                    (g7945
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7948)))))
                   g7945)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7950
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7950))))
                   g7949)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7954))))
                    (g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((x-cnd7956
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7956
                        #t
                        (letrec*
                         ((x-cnd7957
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7957
                           (letrec*
                            ((g7958
                              (letrec*
                               ((x7960
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7960))))
                             (g7959
                              (letrec*
                               ((x7961
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7961)))))
                            g7959)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7953)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7962
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7964))))
                    (g7963
                     (letrec*
                      ((x-cnd7965
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7965
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7963)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7969))))
                    (g7967
                     (letrec*
                      ((x7970
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7970))))
                    (g7968
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7971
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7971))))
                   g7968)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7973
                        (letrec*
                         ((x7974
                           (letrec*
                            ((x7975
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7975)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7974)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7973)))))
                   g7972)))
               (newline (lambda () (letrec* ((g7976 #f)) g7976)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7977
                     (letrec*
                      ((x7979
                        (letrec*
                         ((x7980
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7980))))
                       (x7978
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7979 x7978)))))
                   g7977)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x7985
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7985))))
                    (g7982
                     (letrec*
                      ((x7986
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7986))))
                    (g7983
                     (letrec*
                      ((x7987
                        (letrec*
                         ((x7988
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7988)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7987))))
                    (g7984
                     (letrec*
                      ((x-cnd7989
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7989
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7991
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7990
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7991 x7990)))))))
                   g7984)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7992
                     (letrec*
                      ((x-cnd7993
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7993
                        a
                        (letrec*
                         ((x7994
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7994)))))))
                   g7992)))
               (mult
                (lambda (n m)
                  (letrec*
                   ((g7995
                     (letrec*
                      ((x-cnd7996
                        (letrec*
                         ((val7261
                           (begin
                             (write '(funapp 1667 36))
                             (display "\n")
                             (<= n 0))))
                         (letrec*
                          ((g7997
                            (if val7261
                              val7261
                              (begin
                                (write '(funapp 1669 55))
                                (display "\n")
                                (<= m 0)))))
                          g7997))))
                      (if x-cnd7996
                        0
                        (letrec*
                         ((x7998
                           (letrec*
                            ((x7999
                              (begin
                                (write '(funapp 1674 51))
                                (display "\n")
                                (- m 1))))
                            (begin
                              (write '(funapp 1674 61))
                              (display "\n")
                              (mult n x7999)))))
                         (begin
                           (write '(funapp 1675 26))
                           (display "\n")
                           (+ n x7998)))))))
                   g7995)))
               (sqr
                (lambda (n)
                  (letrec*
                   ((g8000
                     (begin
                       (write '(funapp 1677 50))
                       (display "\n")
                       (mult n n))))
                   g8000))))
              (letrec*
               ((g8001
                 (begin
                   (write '(funapp 1680 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1681 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8004
                          (letrec*
                           ((xj7398
                             (begin
                               (write '(funapp 1685 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1685 37))
                                  (display "\n")
                                  'module))))
                            (xk7399
                             (begin
                               (write '(funapp 1685 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1685 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8005
                              (begin
                                (write '(funapp 1688 27))
                                (display "\n")
                                ((lambda (j7402 k7403 f7404)
                                   (letrec*
                                    ((g8006
                                      (lambda (g7400 g7401)
                                        (letrec*
                                         ((g8007
                                           (letrec*
                                            ((x8011
                                              (letrec*
                                               ((x8012
                                                 (begin
                                                   (write '(funapp 1697 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1698 42))
                                                 (display "\n")
                                                 (and/c integer?/c x8012))))
                                             (x8008
                                              (letrec*
                                               ((x8010
                                                 (begin
                                                   (write '(funapp 1702 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7402
                                                    k7403
                                                    g7400)))
                                                (x8009
                                                 (begin
                                                   (write '(funapp 1704 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7402
                                                    k7403
                                                    g7401))))
                                               (begin
                                                 (write '(funapp 1705 42))
                                                 (display "\n")
                                                 (f7404 x8010 x8009)))))
                                            (begin
                                              (write '(funapp 1706 39))
                                              (display "\n")
                                              (x8011 j7402 k7403 x8008)))))
                                         g8007))))
                                    g8006))
                                 xj7398
                                 xk7399
                                 mult))))
                            g8005)))
                         (x8003 (input))
                         (x8002 (input)))
                        (begin
                          (write '(funapp 1715 21))
                          (display "\n")
                          (x8004 x8003 x8002)))
                       (letrec*
                        ((xj7405
                          (begin
                            (write '(funapp 1717 30))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1717 34))
                               (display "\n")
                               'module))))
                         (xk7406
                          (begin
                            (write '(funapp 1717 53))
                            (display "\n")
                            (loc
                             (begin
                               (write '(funapp 1717 57))
                               (display "\n")
                               'importer)))))
                        (letrec*
                         ((g8013
                           (begin
                             (write '(funapp 1720 24))
                             (display "\n")
                             ((lambda (j7408 k7409 f7410)
                                (letrec*
                                 ((g8014
                                   (lambda (g7407)
                                     (letrec*
                                      ((g8015
                                        (letrec*
                                         ((x7411
                                           (begin
                                             (write '(funapp 1727 44))
                                             (display "\n")
                                             (integer?/c j7408 k7409 g7407))))
                                         (letrec*
                                          ((g8016
                                            (letrec*
                                             ((x8018
                                               (begin
                                                 (write '(funapp 1732 42))
                                                 (display "\n")
                                                 ((lambda (n)
                                                    (letrec*
                                                     ((g8019
                                                       (letrec*
                                                        ((x8020
                                                          (begin
                                                            (write
                                                             '(funapp 1736 57))
                                                            (display "\n")
                                                            (>=/c n))))
                                                        (begin
                                                          (write
                                                           '(funapp 1737 49))
                                                          (display "\n")
                                                          (and/c
                                                           integer?/c
                                                           x8020)))))
                                                     g8019))
                                                  x7411)))
                                              (x8017
                                               (begin
                                                 (write '(funapp 1740 48))
                                                 (display "\n")
                                                 (f7410 x7411))))
                                             (begin
                                               (write '(funapp 1741 40))
                                               (display "\n")
                                               (x8018 j7408 k7409 x8017)))))
                                          g8016))))
                                      g8015))))
                                 g8014))
                              xj7405
                              xk7406
                              sqr))))
                         g8013))))))))
               g8001))))
           g7440))))
       g7423)))
    g7422)))
