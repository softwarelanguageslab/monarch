(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7411 #t)) g7411)))
    (meta (lambda (v) (letrec* ((g7412 v)) g7412)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7413
          (letrec*
           ((g7414
             (letrec*
              ((x-e7415 lst))
              (letrec*
               ((v1742 x-e7415))
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
                   ((x-cnd7416
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7416
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
           g7414)))
        g7413)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7417 (lambda (v) (letrec* ((g7418 v)) g7418)))) g7417)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7419
          (letrec*
           ((x7420 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7420)))))
        g7419))))
   (letrec*
    ((g7421
      (letrec*
       ((g7422
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7423
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7423)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7424
                 (letrec*
                  ((x7426
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7426))))
                (g7425
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7427
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7428 (if val7245 val7245 #f))) g7428)))))
                   g7427))))
               g7425)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7429
                 (letrec*
                  ((x7431
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7431))))
                (g7430
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7432
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7433 (if val7247 val7247 #f))) g7433)))))
                   g7432))))
               g7430)))
           (>
            (lambda (x y)
              (letrec*
               ((g7434
                 (letrec*
                  ((x7436
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7436))))
                (g7435
                 (letrec*
                  ((x7437
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7437)))))
               g7435)))
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
           ((g7438 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7439
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7440
                     (lambda (k j lst)
                       (letrec*
                        ((g7441
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7442
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7442))
                             lst))))
                        g7441))))
                   g7440)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x-cnd7444
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7444
                        g7264
                        (begin
                          (write '(blame g7262 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7443)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x-cnd7446
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7446
                        g7267
                        (begin
                          (write '(blame g7265 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7445)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7448
                        g7270
                        (begin
                          (write '(blame g7268 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7447)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7451 #t)) g7451)) g7273))))
                      (if x-cnd7450
                        g7273
                        (begin
                          (write '(blame g7271 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7449)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7454 #t)) g7454)) g7276))))
                      (if x-cnd7453
                        g7276
                        (begin
                          (write '(blame g7274 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7452)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7456
                        g7279
                        (begin
                          (write '(blame g7277 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7455)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7458
                        g7282
                        (begin
                          (write '(blame g7280 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7457)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x-cnd7460
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7460
                        g7285
                        (begin
                          (write '(blame g7283 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7459)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x-cnd7462
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7462
                        g7288
                        (begin
                          (write '(blame g7286 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7461)))
               (string?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7463
                     (letrec*
                      ((x-cnd7464
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7291))))
                      (if x-cnd7464
                        g7291
                        (begin
                          (write '(blame g7289 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7463)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7465
                     (lambda (k j v)
                       (letrec*
                        ((g7466
                          (letrec*
                           ((x-cnd7467
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7467
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7466))))
                   g7465)))
               (list-of
                (lambda (contract)
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
                               (null? v))))
                           (if x-cnd7470
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7474
                                (letrec*
                                 ((x7475
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7475))))
                               (x7471
                                (letrec*
                                 ((x7473
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7472
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7473 k j x7472)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7474 x7471)))))))
                        g7469))))
                   g7468)))
               (any? (lambda (v) (letrec* ((g7476 #t)) g7476)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7477
                     (letrec*
                      ((x7478
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7478)))))
                   g7477)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x-cnd7480
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7481
                                (letrec*
                                 ((x7482
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7482)))))
                              g7481))
                           g7294))))
                      (if x-cnd7480
                        g7294
                        (begin
                          (write '(blame g7292 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7479)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7483
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7484
                          (letrec*
                           ((x-cnd7485
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7486
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7486))
                                g7297))))
                           (if x-cnd7485
                             g7297
                             (begin
                               (write '(blame g7295 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7484))))
                   g7483)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7487
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7488
                          (letrec*
                           ((x-cnd7489
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7490
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7490))
                                g7300))))
                           (if x-cnd7489
                             g7300
                             (begin
                               (write '(blame g7298 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7488))))
                   g7487)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7491
                     (lambda (g7301 g7302 g7303)
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
                                       (orig-< v n))))
                                   g7494))
                                g7303))))
                           (if x-cnd7493
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7492))))
                   g7491)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7495
                     (lambda (g7304 g7305 g7306)
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
                                       (orig-<= v n))))
                                   g7498))
                                g7306))))
                           (if x-cnd7497
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7496))))
                   g7495)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7499
                     (lambda (g7307 g7308 g7309)
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
                                       (orig-= v n))))
                                   g7502))
                                g7309))))
                           (if x-cnd7501
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7500))))
                   g7499)))
               (meta (lambda (v) (letrec* ((g7503 v)) g7503)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7504
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7506
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7507
                                 (letrec*
                                  ((x7508
                                    (letrec*
                                     ((x7510
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7509
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7316 x7510 x7509)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7508)))))
                               g7507))))
                          g7506))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7505
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7505))))))
                  g7504)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7511
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7513
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7514
                                 (letrec*
                                  ((x7515
                                    (letrec*
                                     ((x7517
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7516
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7323 x7517 x7516)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7515)))))
                               g7514))))
                          g7513))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7512
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7512))))))
                  g7511)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7518
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7520
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7521
                                 (letrec*
                                  ((x7522
                                    (letrec*
                                     ((x7524
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7523
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7330 x7524 x7523)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7522)))))
                               g7521))))
                          g7520))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7519
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7519))))))
                  g7518)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7525
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7527
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7528
                                 (letrec*
                                  ((x7529
                                    (letrec*
                                     ((x7531
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7530
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7337 x7531 x7530)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7529)))))
                               g7528))))
                          g7527))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7526
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7526))))))
                  g7525)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7532
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7534
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7535
                                 (letrec*
                                  ((x7536
                                    (letrec*
                                     ((x7538
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7537
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7344 x7538 x7537)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7536)))))
                               g7535))))
                          g7534))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7533
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7533))))))
                  g7532)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7539
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7541
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7542
                                 (letrec*
                                  ((x7543
                                    (letrec*
                                     ((x7545
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7544
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7351 x7545 x7544)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7543)))))
                               g7542))))
                          g7541))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7540
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7540))))))
                  g7539)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7546
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7548
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7549
                                 (letrec*
                                  ((x7550
                                    (letrec*
                                     ((x7552
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7551
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7358 x7552 x7551)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7550)))))
                               g7549))))
                          g7548))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7547
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7547))))))
                  g7546)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7553
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7555
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7556
                                 (letrec*
                                  ((x7557
                                    (letrec*
                                     ((x7559
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7558
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7365 x7559 x7558)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7557)))))
                               g7556))))
                          g7555))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7554
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7554))))))
                  g7553)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7560
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7562
                            (lambda (g7368)
                              (letrec*
                               ((g7563
                                 (letrec*
                                  ((x7564
                                    (letrec*
                                     ((x7565
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7371 x7565)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7564)))))
                               g7563))))
                          g7562))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7561
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7561))))))
                  g7560)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7566
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7568
                            (lambda (g7374)
                              (letrec*
                               ((g7569
                                 (letrec*
                                  ((x7570
                                    (letrec*
                                     ((x7571
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7377 x7571)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7570)))))
                               g7569))))
                          g7568))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7567
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7567))))))
                  g7566)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7572
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7574
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7575
                                 (letrec*
                                  ((x7576
                                    (letrec*
                                     ((x7578
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7577
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7384 x7578 x7577)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7576)))))
                               g7575))))
                          g7574))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7573
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7573))))))
                  g7572)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7579
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7581
                            (lambda (g7387)
                              (letrec*
                               ((g7582
                                 (letrec*
                                  ((x7583
                                    (letrec*
                                     ((x7584
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7390 x7584)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7583)))))
                               g7582))))
                          g7581))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7580
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7580))))))
                  g7579)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7585
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7587
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7588
                                 (letrec*
                                  ((x7589
                                    (letrec*
                                     ((x7591
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7590
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7397 x7591 x7590)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7589)))))
                               g7588))))
                          g7587))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7586
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7586))))))
                  g7585)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7592
                     (letrec*
                      ((x7593
                        (letrec*
                         ((x7594
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7594)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7593)))))
                   g7592)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7598))))
                    (g7596
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7599))))
                    (g7597
                     (letrec*
                      ((x-cnd7600
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7600
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7603
                           (letrec*
                            ((x7604
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7604))))
                          (x7601
                           (letrec*
                            ((x7602
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7602)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7603 x7601)))))))
                   g7597)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7606)))))
                   g7605)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7608
                        (letrec*
                         ((x7609
                           (letrec*
                            ((x7610
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7610)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7609)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7608)))))
                   g7607)))
               (cdadar
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
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7614)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7613)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7612)))))
                   g7611)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7618))))
                    (g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7619))))
                    (g7617
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
                       ((g7620
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7621 res))
                       g7621))))
                   g7617)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7623
                        (letrec*
                         ((x7624
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7624)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7623)))))
                   g7622)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (letrec*
                         ((x7627
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7628)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7627)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7626)))))
                   g7625)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7631))))
                    (g7630
                     (letrec*
                      ((x-cnd7632
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7632
                        #f
                        (letrec*
                         ((x-cnd7633
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7634 k)))))
                         (if x-cnd7633
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7635
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7635)))))))))
                   g7630)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7637
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7637)))))
                   g7636)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7640))))
                    (g7639
                     (letrec*
                      ((x-cnd7641
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7641
                        ""
                        (letrec*
                         ((x7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7645))))
                          (x7642
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7643)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7644 x7642)))))))
                   g7639)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7649))))
                    (g7647
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7650))))
                    (g7648
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7651
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7651))))
                   g7648)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7653
                        (letrec*
                         ((x7654
                           (letrec*
                            ((x7655
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7655)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7654)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7653)))))
                   g7652)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((x-cnd7661
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7661
                        x
                        (letrec*
                         ((x7663
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7662
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7663 x7662)))))))
                   g7658)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7664
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7664)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x-cnd7666
                        (letrec*
                         ((x7667 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7667)))))
                      (if x-cnd7666
                        (letrec*
                         ((x7668 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7668)))
                        #f))))
                   g7665)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x7670
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7670 9)))))
                      (letrec*
                       ((g7671
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x7672
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7672 10)))))
                            (letrec*
                             ((g7673
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x7674
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7674 32))))))
                             g7673)))))
                       g7671))))
                   g7669)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x7676
                        (letrec*
                         ((x7677
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7677)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7676)))))
                   g7675)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((x7680
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7680))))
                    (g7679
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7679)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7681 #f)) g7681)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((x7683
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7683)))))
                   g7682)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x7686
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7686))))
                    (g7685
                     (letrec*
                      ((x-cnd7687
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7687
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7685)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7688
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7689
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd7690
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7690
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7691
                               (if val7252
                                 val7252
                                 (letrec*
                                  ((val7253
                                    (letrec*
                                     ((x-cnd7692
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7692
                                       (letrec*
                                        ((x-cnd7693
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7693
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7694
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd7695
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7695
                                             (letrec*
                                              ((x-cnd7696
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7696
                                                (letrec*
                                                 ((x-cnd7697
                                                   (letrec*
                                                    ((x7699
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7698
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7699 x7698)))))
                                                 (if x-cnd7697
                                                   (letrec*
                                                    ((x7701
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7700
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7701 x7700)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7702
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd7703
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7703
                                                (letrec*
                                                 ((x-cnd7704
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7704
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7705
                                                       (letrec*
                                                        ((x-cnd7706
                                                          (letrec*
                                                           ((x7707
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
                                                             (= x7707 n)))))
                                                        (if x-cnd7706
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7708
                                                                  (letrec*
                                                                   ((val7255
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
                                                                    ((g7709
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd7710
                                                                           (letrec*
                                                                            ((x7712
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
                                                                             (x7711
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
                                                                               x7712
                                                                               x7711)))))
                                                                         (if x-cnd7710
                                                                           (letrec*
                                                                            ((x7713
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
                                                                               x7713)))
                                                                           #f)))))
                                                                    g7709))))
                                                                g7708))))
                                                           (letrec*
                                                            ((g7714
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7714))
                                                          #f))))
                                                     g7705))
                                                   #f))
                                                #f)))))
                                         g7702)))))
                                   g7694)))))
                             g7691)))))
                       g7689))))
                   g7688)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7715
                     (letrec*
                      ((x7716
                        (letrec*
                         ((x7717
                           (letrec*
                            ((x7718
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7718)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7717)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7716)))))
                   g7715)))
               (caaddr
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
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7722)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7721)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7720)))))
                   g7719)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7723
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7723)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7724
                     (letrec*
                      ((x7727
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7727))))
                    (g7725
                     (letrec*
                      ((x7728
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7728))))
                    (g7726
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
                       ((g7729
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7730 res))
                       g7730))))
                   g7726)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7731
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7731)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7732
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7735))))
                    (g7733
                     (letrec*
                      ((x7736
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7736))))
                    (g7734
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7737
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7737))))
                   g7734)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7739
                        (letrec*
                         ((x7740
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7740)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7739)))))
                   g7738)))
               (cdaddr
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
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7744)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7743)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7742)))))
                   g7741)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7746
                        (letrec*
                         ((x7747
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7747)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7746)))))
                   g7745)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7749
                        (letrec*
                         ((x7750
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7750)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7749)))))
                   g7748)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7754))))
                    (g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7755))))
                    (g7753
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7756)))))
                   g7753)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7758
                        (letrec*
                         ((x7759
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7760)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7759)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7758)))))
                   g7757)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7763))))
                    (g7762
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7762)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7764
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7764)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7766
                        (letrec*
                         ((x7767
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7767)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7766)))))
                   g7765)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7768
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7768)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7771))))
                    (g7770
                     (letrec*
                      ((x-cnd7772
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7772
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7776))))
                          (x7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7774)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7775 x7773)))))))
                   g7770)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7778
                        (letrec*
                         ((x7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7780)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7779)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7778)))))
                   g7777)))
               (cddadr
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
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7784)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7783)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7782)))))
                   g7781)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7787))))
                    (g7786
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7788)))))
                   g7786)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7790
                        (letrec*
                         ((x7791
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7792)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7791)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7790)))))
                   g7789)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7796))))
                    (g7794
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7797))))
                    (g7795
                     (letrec*
                      ((x-cnd7798
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7798
                        (letrec*
                         ((g7799
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7799)
                        (letrec*
                         ((x-cnd7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7801)))))
                         (if x-cnd7800
                           (letrec*
                            ((g7802
                              (letrec*
                               ((x7803
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7803)))))
                            g7802)
                           (letrec*
                            ((x-cnd7804
                              (letrec*
                               ((x7805
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7805)))))
                            (if x-cnd7804
                              (letrec*
                               ((g7806
                                 (letrec*
                                  ((x7808
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7807
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7808 x7807)))))
                               g7806)
                              (letrec*
                               ((x-cnd7809
                                 (letrec*
                                  ((x7810
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7810)))))
                               (if x-cnd7809
                                 (letrec*
                                  ((g7811
                                    (letrec*
                                     ((x7814
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7813
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7812
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7814 x7813 x7812)))))
                                  g7811)
                                 (letrec*
                                  ((x-cnd7815
                                    (letrec*
                                     ((x7816
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7816)))))
                                  (if x-cnd7815
                                    (letrec*
                                     ((g7817
                                       (letrec*
                                        ((x7821
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7820
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7819
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7818
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7821 x7820 x7819 x7818)))))
                                     g7817)
                                    (letrec*
                                     ((x-cnd7822
                                       (letrec*
                                        ((x7823
                                          (letrec*
                                           ((x7824
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7824)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7823)))))
                                     (if x-cnd7822
                                       (letrec*
                                        ((g7825
                                          (letrec*
                                           ((x7831
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7830
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7829
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7828
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7826
                                             (letrec*
                                              ((x7827
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7827)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7831
                                              x7830
                                              x7829
                                              x7828
                                              x7826)))))
                                        g7825)
                                       (letrec*
                                        ((x-cnd7832
                                          (letrec*
                                           ((x7833
                                             (letrec*
                                              ((x7834
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7834)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7833)))))
                                        (if x-cnd7832
                                          (letrec*
                                           ((g7835
                                             (letrec*
                                              ((x7843
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7842
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7841
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7840
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7838
                                                (letrec*
                                                 ((x7839
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7839))))
                                               (x7836
                                                (letrec*
                                                 ((x7837
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7837)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7843
                                                 x7842
                                                 x7841
                                                 x7840
                                                 x7838
                                                 x7836)))))
                                           g7835)
                                          (letrec*
                                           ((x-cnd7844
                                             (letrec*
                                              ((x7845
                                                (letrec*
                                                 ((x7846
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7846)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7845)))))
                                           (if x-cnd7844
                                             (letrec*
                                              ((g7847
                                                (letrec*
                                                 ((x7857
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7856
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7855
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7854
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7852
                                                   (letrec*
                                                    ((x7853
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7853))))
                                                  (x7850
                                                   (letrec*
                                                    ((x7851
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7851))))
                                                  (x7848
                                                   (letrec*
                                                    ((x7849
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7849)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7857
                                                    x7856
                                                    x7855
                                                    x7854
                                                    x7852
                                                    x7850
                                                    x7848)))))
                                              g7847)
                                             (letrec*
                                              ((g7858
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7858)))))))))))))))))))
                   g7795)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((x7861
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7861))))
                    (g7860
                     (letrec*
                      ((x-cnd7862
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7862
                        #f
                        (letrec*
                         ((x-cnd7863
                           (letrec*
                            ((x7864
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7864 e)))))
                         (if x-cnd7863
                           l
                           (letrec*
                            ((x7865
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7865)))))))))
                   g7860)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x7867
                        (letrec*
                         ((x7868
                           (letrec*
                            ((x7869
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7869)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7868)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7867)))))
                   g7866)))
               (cadddr
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
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7873)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7872)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7871)))))
                   g7870)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7874
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7874)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7877
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7877))))
                    (g7876
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7876)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7879
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7879))))
                   g7878)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7881
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7881)))))
                   g7880)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd7883
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7883
                           (letrec*
                            ((x7884
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7884)))
                           #f))))
                      (letrec*
                       ((g7885
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7885))))
                   g7882)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7887
                        (letrec*
                         ((x7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7889)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7888)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7887)))))
                   g7886)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x-cnd7891
                        (letrec*
                         ((x7892 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7892 c)))))
                      (if x-cnd7891
                        (letrec*
                         ((x7893 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7893)))
                        #f))))
                   g7890)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7894
                     (letrec*
                      ((x7896
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7896))))
                    (g7895
                     (letrec*
                      ((x-cnd7897
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7897
                        #f
                        (letrec*
                         ((x-cnd7898
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7899 k)))))
                         (if x-cnd7898
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7900)))))))))
                   g7895)))
               (not (lambda (x) (letrec* ((g7901 (if x #f #t))) g7901)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7902
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7902)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7905
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7905))))
                    (g7904
                     (letrec*
                      ((x-cnd7906
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7906
                        #f
                        (letrec*
                         ((x-cnd7907
                           (letrec*
                            ((x7908
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7908 e)))))
                         (if x-cnd7907
                           l
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7909)))))))))
                   g7904)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x7911
                        (letrec*
                         ((x7912
                           (letrec*
                            ((x7913
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7913)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7912)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7911)))))
                   g7910)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7916
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7916))))
                    (g7915
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7917
                             (letrec*
                              ((x-cnd7918
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7918
                                0
                                (letrec*
                                 ((x7919
                                   (letrec*
                                    ((x7920
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7920)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7919)))))))
                           g7917))))
                      (letrec*
                       ((g7921
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7921))))
                   g7915)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7925))))
                    (g7923
                     (letrec*
                      ((x7926
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7926))))
                    (g7924
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7927
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7927))))
                   g7924)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7929)))))
                   g7928)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7931
                        (letrec*
                         ((x7932
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7932)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7931)))))
                   g7930)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7935))))
                    (g7934
                     (letrec*
                      ((x-cnd7936
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7936
                        #f
                        (letrec*
                         ((x-cnd7937
                           (letrec*
                            ((x7938
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7938 k)))))
                         (if x-cnd7937
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7939
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7939)))))))))
                   g7934)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7941)))))
                   g7940)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7945))))
                    (g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7946))))
                    (g7944
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7947)))))
                   g7944)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7949
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7949))))
                   g7948)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7950
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7953))))
                    (g7951
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7954))))
                    (g7952
                     (letrec*
                      ((x-cnd7955
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7955
                        #t
                        (letrec*
                         ((x-cnd7956
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7956
                           (letrec*
                            ((g7957
                              (letrec*
                               ((x7959
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7959))))
                             (g7958
                              (letrec*
                               ((x7960
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7960)))))
                            g7958)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7952)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7963))))
                    (g7962
                     (letrec*
                      ((x-cnd7964
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7964
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7962)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7968))))
                    (g7966
                     (letrec*
                      ((x7969
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7969))))
                    (g7967
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7970
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7970))))
                   g7967)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7971
                     (letrec*
                      ((x7972
                        (letrec*
                         ((x7973
                           (letrec*
                            ((x7974
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7974)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7973)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7972)))))
                   g7971)))
               (newline (lambda () (letrec* ((g7975 #f)) g7975)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7978
                        (letrec*
                         ((x7979
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7979))))
                       (x7977
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7978 x7977)))))
                   g7976)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7984))))
                    (g7981
                     (letrec*
                      ((x7985
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7985))))
                    (g7982
                     (letrec*
                      ((x7986
                        (letrec*
                         ((x7987
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7987)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7986))))
                    (g7983
                     (letrec*
                      ((x-cnd7988
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7988
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7990
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7989
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7990 x7989)))))))
                   g7983)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((x-cnd7992
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7992
                        a
                        (letrec*
                         ((x7993
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7993)))))))
                   g7991)))
               (STATE/C
                (lambda (g7401 g7402 g7403)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x-cnd7995
                        (begin
                          (write '(funapp 1666 25))
                          (display "\n")
                          ((lambda (v7400)
                             (letrec*
                              ((g7996
                                (letrec*
                                 ((x-cnd7997
                                   (begin
                                     (write '(funapp 1670 44))
                                     (display "\n")
                                     (eq?
                                      (begin
                                        (write '(funapp 1670 48))
                                        (display "\n")
                                        'init)
                                      v7400))))
                                 (if x-cnd7997
                                   #t
                                   (letrec*
                                    ((x-cnd7998
                                      (begin
                                        (write '(funapp 1674 47))
                                        (display "\n")
                                        (eq?
                                         (begin
                                           (write '(funapp 1674 51))
                                           (display "\n")
                                           'opened)
                                         v7400))))
                                    (if x-cnd7998
                                      #t
                                      (letrec*
                                       ((x-cnd7999
                                         (begin
                                           (write '(funapp 1678 50))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1678 54))
                                              (display "\n")
                                              'closed)
                                            v7400))))
                                       (if x-cnd7999
                                         #t
                                         (begin
                                           (write '(funapp 1681 40))
                                           (display "\n")
                                           (eq?
                                            (begin
                                              (write '(funapp 1681 44))
                                              (display "\n")
                                              'ignore)
                                            v7400))))))))))
                              g7996))
                           g7403))))
                      (if x-cnd7995
                        g7403
                        (begin
                          (write '(blame g7401 1686 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7401)))))))
                   g7994)))
               (loop
                (lambda ()
                  (letrec*
                   ((g8000
                     (begin (write '(funapp 1697 50)) (display "\n") (loop))))
                   g8000)))
               (readit
                (lambda (st)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((x-cnd8002
                        (begin
                          (write '(funapp 1703 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1703 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd8002
                        (begin
                          (write '(funapp 1704 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1704 44))
                          (display "\n")
                          'ignore)))))
                   g8001)))
               (read_
                (lambda (x st)
                  (letrec*
                   ((g8003
                     (if x
                       (begin
                         (write '(funapp 1708 42))
                         (display "\n")
                         (readit st))
                       st)))
                   g8003)))
               (closeit
                (lambda (st)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((x-cnd8005
                        (begin
                          (write '(funapp 1714 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1714 42))
                             (display "\n")
                             'opened)
                           st))))
                      (if x-cnd8005
                        (letrec*
                         ((g8006
                           (begin
                             (write '(funapp 1716 41))
                             (display "\n")
                             'closed)))
                         g8006)
                        (letrec*
                         ((x-cnd8007
                           (begin
                             (write '(funapp 1718 38))
                             (display "\n")
                             (equal?
                              (begin
                                (write '(funapp 1718 45))
                                (display "\n")
                                'ignore)
                              st))))
                         (if x-cnd8007
                           (letrec*
                            ((g8008
                              (begin
                                (write '(funapp 1720 44))
                                (display "\n")
                                'ignore)))
                            g8008)
                           (letrec*
                            ((g8009
                              (begin
                                (write '(funapp 1721 45))
                                (display "\n")
                                (loop)))
                             (g8010 0))
                            g8010)))))))
                   g8004)))
               (close_
                (lambda (x st)
                  (letrec*
                   ((g8011
                     (if x
                       (begin
                         (write '(funapp 1725 42))
                         (display "\n")
                         (closeit st))
                       st)))
                   g8011)))
               (f
                (lambda (x y st)
                  (letrec*
                   ((g8012
                     (letrec*
                      ((x8014
                        (begin
                          (write '(funapp 1729 45))
                          (display "\n")
                          (close_ x st))))
                      (begin
                        (write '(funapp 1729 61))
                        (display "\n")
                        (close_ y x8014))))
                    (g8013
                     (letrec*
                      ((x8015
                        (letrec*
                         ((x8016
                           (begin
                             (write '(funapp 1733 42))
                             (display "\n")
                             (read_ x st))))
                         (begin
                           (write '(funapp 1733 57))
                           (display "\n")
                           (read_ y x8016)))))
                      (begin
                        (write '(funapp 1734 23))
                        (display "\n")
                        (f x y x8015)))))
                   g8013)))
               (next
                (lambda (st)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((x-cnd8018
                        (begin
                          (write '(funapp 1741 35))
                          (display "\n")
                          (equal?
                           (begin
                             (write '(funapp 1741 42))
                             (display "\n")
                             'init)
                           st))))
                      (if x-cnd8018
                        (begin
                          (write '(funapp 1742 36))
                          (display "\n")
                          'opened)
                        (begin
                          (write '(funapp 1742 44))
                          (display "\n")
                          'ignore)))))
                   g8017)))
               (g
                (lambda (b3 x st)
                  (letrec*
                   ((g8019
                     (letrec*
                      ((x-cnd8020
                        (begin
                          (write '(funapp 1749 35))
                          (display "\n")
                          (> b3 0))))
                      (if x-cnd8020
                        (letrec*
                         ((x8021
                           (begin
                             (write '(funapp 1751 42))
                             (display "\n")
                             (next st))))
                         (begin
                           (write '(funapp 1751 54))
                           (display "\n")
                           (f x #t x8021)))
                        (begin
                          (write '(funapp 1752 25))
                          (display "\n")
                          (f x #f st))))))
                   g8019)))
               (main
                (lambda (b2 b3)
                  (letrec*
                   ((g8022
                     (letrec*
                      ((x-cnd8024
                        (begin
                          (write '(funapp 1759 35))
                          (display "\n")
                          (> b2 0))))
                      (if x-cnd8024
                        (begin
                          (write '(funapp 1760 37))
                          (display "\n")
                          (g
                           b3
                           #t
                           (begin
                             (write '(funapp 1760 45))
                             (display "\n")
                             'opened)))
                        (begin
                          (write '(funapp 1760 55))
                          (display "\n")
                          (g
                           b3
                           #f
                           (begin
                             (write '(funapp 1760 63))
                             (display "\n")
                             'init))))))
                    (g8023
                     (begin (write '(funapp 1761 27)) (display "\n") 'unit)))
                   g8023))))
              (letrec*
               ((g8025
                 (begin
                   (write '(funapp 1765 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1766 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8028
                          (letrec*
                           ((xj7404
                             (begin
                               (write '(funapp 1770 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1770 37))
                                  (display "\n")
                                  'module))))
                            (xk7405
                             (begin
                               (write '(funapp 1770 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1770 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8029
                              (begin
                                (write '(funapp 1773 27))
                                (display "\n")
                                ((lambda (j7408 k7409 f7410)
                                   (letrec*
                                    ((g8030
                                      (lambda (g7406 g7407)
                                        (letrec*
                                         ((g8031
                                           (letrec*
                                            ((x8032
                                              (letrec*
                                               ((x8034
                                                 (begin
                                                   (write '(funapp 1783 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7408
                                                    k7409
                                                    g7406)))
                                                (x8033
                                                 (begin
                                                   (write '(funapp 1785 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7408
                                                    k7409
                                                    g7407))))
                                               (begin
                                                 (write '(funapp 1786 42))
                                                 (display "\n")
                                                 (f7410 x8034 x8033)))))
                                            (begin
                                              (write '(funapp 1787 39))
                                              (display "\n")
                                              (any/c j7408 k7409 x8032)))))
                                         g8031))))
                                    g8030))
                                 xj7404
                                 xk7405
                                 main))))
                            g8029)))
                         (x8027 (input))
                         (x8026 (input)))
                        (begin
                          (write '(funapp 1796 21))
                          (display "\n")
                          (x8028 x8027 x8026)))))))))
               g8025))))
           g7439))))
       g7422)))
    g7421)))
