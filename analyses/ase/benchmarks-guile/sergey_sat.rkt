(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7410 #t)) g7410)))
    (meta (lambda (v) (letrec* ((g7411 v)) g7411)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7412
          (letrec*
           ((g7413
             (letrec*
              ((x-e7414 lst))
              (letrec*
               ((v1742 x-e7414))
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
                   ((x-cnd7415
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7415
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
           g7413)))
        g7412)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7416 (lambda (v) (letrec* ((g7417 v)) g7417)))) g7416)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7418
          (letrec*
           ((x7419 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7419)))))
        g7418))))
   (letrec*
    ((g7420
      (letrec*
       ((g7421
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7422
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7422)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7423
                 (letrec*
                  ((x7425
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7425))))
                (g7424
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7426
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7427 (if val7245 val7245 #f))) g7427)))))
                   g7426))))
               g7424)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7428
                 (letrec*
                  ((x7430
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7430))))
                (g7429
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7431
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7432 (if val7247 val7247 #f))) g7432)))))
                   g7431))))
               g7429)))
           (>
            (lambda (x y)
              (letrec*
               ((g7433
                 (letrec*
                  ((x7435
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7435))))
                (g7434
                 (letrec*
                  ((x7436
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7436)))))
               g7434)))
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
           ((g7437 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7438
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7439
                     (lambda (k j lst)
                       (letrec*
                        ((g7440
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7441
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7441))
                             lst))))
                        g7440))))
                   g7439)))
               (real?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7273))))
                      (if x-cnd7443
                        g7273
                        (begin
                          (write '(blame g7271 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7442)))
               (boolean?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7276))))
                      (if x-cnd7445
                        g7276
                        (begin
                          (write '(blame g7274 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7444)))
               (number?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7279))))
                      (if x-cnd7447
                        g7279
                        (begin
                          (write '(blame g7277 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7446)))
               (any/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7450 #t)) g7450)) g7282))))
                      (if x-cnd7449
                        g7282
                        (begin
                          (write '(blame g7280 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7448)))
               (any?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7453 #t)) g7453)) g7285))))
                      (if x-cnd7452
                        g7285
                        (begin
                          (write '(blame g7283 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7451)))
               (cons?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7288))))
                      (if x-cnd7455
                        g7288
                        (begin
                          (write '(blame g7286 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7454)))
               (cons/c
                (lambda (k1 k2)
                  (letrec*
                   ((g7456
                     (lambda (k j v)
                       (letrec*
                        ((g7457
                          (letrec*
                           ((x7460
                             (letrec*
                              ((x7461
                                (begin
                                  (write '(funapp 176 53))
                                  (display "\n")
                                  (car v))))
                              (begin
                                (write '(funapp 176 63))
                                (display "\n")
                                (k1 k j x7461))))
                            (x7458
                             (letrec*
                              ((x7459
                                (begin
                                  (write '(funapp 177 53))
                                  (display "\n")
                                  (cdr v))))
                              (begin
                                (write '(funapp 177 63))
                                (display "\n")
                                (k2 k j x7459)))))
                           (begin
                             (write '(funapp 178 28))
                             (display "\n")
                             (cons x7460 x7458)))))
                        g7457))))
                   g7456)))
               (pair?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x-cnd7463
                        (begin
                          (write '(funapp 186 35))
                          (display "\n")
                          (pair? g7291))))
                      (if x-cnd7463
                        g7291
                        (begin
                          (write '(blame g7289 187 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7462)))
               (integer?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x-cnd7465
                        (begin
                          (write '(funapp 194 35))
                          (display "\n")
                          (integer? g7294))))
                      (if x-cnd7465
                        g7294
                        (begin
                          (write '(blame g7292 195 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7464)))
               (symbol?/c
                (lambda (g7295 g7296 g7297)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x-cnd7467
                        (begin
                          (write '(funapp 202 35))
                          (display "\n")
                          (symbol? g7297))))
                      (if x-cnd7467
                        g7297
                        (begin
                          (write '(blame g7295 203 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7295)))))))
                   g7466)))
               (string?/c
                (lambda (g7298 g7299 g7300)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x-cnd7469
                        (begin
                          (write '(funapp 210 35))
                          (display "\n")
                          (string? g7300))))
                      (if x-cnd7469
                        g7300
                        (begin
                          (write '(blame g7298 211 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7298)))))))
                   g7468)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7470
                     (lambda (k j v)
                       (letrec*
                        ((g7471
                          (letrec*
                           ((x-cnd7472
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7472
                             (begin
                               (write '(funapp 222 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7471))))
                   g7470)))
               (or/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7473
                     (lambda (k j v)
                       (letrec*
                        ((g7474
                          (letrec*
                           ((val7248
                             (begin
                               (write '(funapp 233 38))
                               (display "\n")
                               (c1 k j v))))
                           (letrec*
                            ((g7475
                              (if val7248
                                val7248
                                (begin
                                  (write '(funapp 235 57))
                                  (display "\n")
                                  (c2 k j v)))))
                            g7475))))
                        g7474))))
                   g7473)))
               (null?/c
                (lambda (g7301 g7302 g7303)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x-cnd7477
                        (begin
                          (write '(funapp 244 35))
                          (display "\n")
                          (null? g7303))))
                      (if x-cnd7477
                        g7303
                        (begin
                          (write '(blame g7301 245 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7301)))))))
                   g7476)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7478
                     (lambda (k j v)
                       (letrec*
                        ((g7479
                          (letrec*
                           ((x-cnd7480
                             (begin
                               (write '(funapp 255 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7480
                             (begin
                               (write '(funapp 257 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7484
                                (letrec*
                                 ((x7485
                                   (begin
                                     (write '(funapp 261 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 262 34))
                                   (display "\n")
                                   (contract k j x7485))))
                               (x7481
                                (letrec*
                                 ((x7483
                                   (begin
                                     (write '(funapp 265 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7482
                                   (begin
                                     (write '(funapp 265 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 266 34))
                                   (display "\n")
                                   (x7483 k j x7482)))))
                              (begin
                                (write '(funapp 267 31))
                                (display "\n")
                                (orig-cons x7484 x7481)))))))
                        g7479))))
                   g7478)))
               (any? (lambda (v) (letrec* ((g7486 #t)) g7486)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x7488
                        (begin
                          (write '(funapp 274 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 274 55))
                        (display "\n")
                        (not x7488)))))
                   g7487)))
               (nonzero?/c
                (lambda (g7304 g7305 g7306)
                  (letrec*
                   ((g7489
                     (letrec*
                      ((x-cnd7490
                        (begin
                          (write '(funapp 282 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7491
                                (letrec*
                                 ((x7492
                                   (begin
                                     (write '(funapp 284 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 284 64))
                                   (display "\n")
                                   (not x7492)))))
                              g7491))
                           g7306))))
                      (if x-cnd7490
                        g7306
                        (begin
                          (write '(blame g7304 289 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7304)))))))
                   g7489)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7493
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7494
                          (letrec*
                           ((x-cnd7495
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7496
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7496))
                                g7309))))
                           (if x-cnd7495
                             g7309
                             (begin
                               (write '(blame g7307 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7494))))
                   g7493)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7497
                     (lambda (g7310 g7311 g7312)
                       (letrec*
                        ((g7498
                          (letrec*
                           ((x-cnd7499
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7500
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7500))
                                g7312))))
                           (if x-cnd7499
                             g7312
                             (begin
                               (write '(blame g7310 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7310)))))))
                        g7498))))
                   g7497)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7501
                     (lambda (g7313 g7314 g7315)
                       (letrec*
                        ((g7502
                          (letrec*
                           ((x-cnd7503
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7504
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7504))
                                g7315))))
                           (if x-cnd7503
                             g7315
                             (begin
                               (write '(blame g7313 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7313)))))))
                        g7502))))
                   g7501)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7505
                     (lambda (g7316 g7317 g7318)
                       (letrec*
                        ((g7506
                          (letrec*
                           ((x-cnd7507
                             (begin
                               (write '(funapp 351 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7508
                                     (begin
                                       (write '(funapp 352 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7508))
                                g7318))))
                           (if x-cnd7507
                             g7318
                             (begin
                               (write '(blame g7316 356 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7316)))))))
                        g7506))))
                   g7505)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7509
                     (lambda (g7319 g7320 g7321)
                       (letrec*
                        ((g7510
                          (letrec*
                           ((x-cnd7511
                             (begin
                               (write '(funapp 368 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7512
                                     (begin
                                       (write '(funapp 369 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7512))
                                g7321))))
                           (if x-cnd7511
                             g7321
                             (begin
                               (write '(blame g7319 373 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7319)))))))
                        g7510))))
                   g7509)))
               (meta (lambda (v) (letrec* ((g7513 v)) g7513)))
               (+
                (letrec*
                 ((xj7322
                   (begin (write '(funapp 379 26)) (display "\n") 'server))
                  (xk7323
                   (begin (write '(funapp 379 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7514
                    (begin
                      (write '(funapp 382 21))
                      (display "\n")
                      ((lambda (j7326 k7327 f7328)
                         (letrec*
                          ((g7516
                            (lambda (g7324 g7325)
                              (letrec*
                               ((g7517
                                 (letrec*
                                  ((x7518
                                    (letrec*
                                     ((x7520
                                       (begin
                                         (write '(funapp 391 44))
                                         (display "\n")
                                         (number?/c j7326 k7327 g7324)))
                                      (x7519
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7326 k7327 g7325))))
                                     (begin
                                       (write '(funapp 393 36))
                                       (display "\n")
                                       (f7328 x7520 x7519)))))
                                  (begin
                                    (write '(funapp 394 33))
                                    (display "\n")
                                    (number?/c j7326 k7327 x7518)))))
                               g7517))))
                          g7516))
                       xj7322
                       xk7323
                       (lambda (a b)
                         (letrec*
                          ((g7515
                            (begin
                              (write '(funapp 399 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7515))))))
                  g7514)))
               (-
                (letrec*
                 ((xj7329
                   (begin (write '(funapp 403 26)) (display "\n") 'server))
                  (xk7330
                   (begin (write '(funapp 403 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7521
                    (begin
                      (write '(funapp 406 21))
                      (display "\n")
                      ((lambda (j7333 k7334 f7335)
                         (letrec*
                          ((g7523
                            (lambda (g7331 g7332)
                              (letrec*
                               ((g7524
                                 (letrec*
                                  ((x7525
                                    (letrec*
                                     ((x7527
                                       (begin
                                         (write '(funapp 415 44))
                                         (display "\n")
                                         (number?/c j7333 k7334 g7331)))
                                      (x7526
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7333 k7334 g7332))))
                                     (begin
                                       (write '(funapp 417 36))
                                       (display "\n")
                                       (f7335 x7527 x7526)))))
                                  (begin
                                    (write '(funapp 418 33))
                                    (display "\n")
                                    (number?/c j7333 k7334 x7525)))))
                               g7524))))
                          g7523))
                       xj7329
                       xk7330
                       (lambda (a b)
                         (letrec*
                          ((g7522
                            (begin
                              (write '(funapp 423 53))
                              (display "\n")
                              (orig-- a b))))
                          g7522))))))
                  g7521)))
               (*
                (letrec*
                 ((xj7336
                   (begin (write '(funapp 427 26)) (display "\n") 'server))
                  (xk7337
                   (begin (write '(funapp 427 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7528
                    (begin
                      (write '(funapp 430 21))
                      (display "\n")
                      ((lambda (j7340 k7341 f7342)
                         (letrec*
                          ((g7530
                            (lambda (g7338 g7339)
                              (letrec*
                               ((g7531
                                 (letrec*
                                  ((x7532
                                    (letrec*
                                     ((x7534
                                       (begin
                                         (write '(funapp 439 44))
                                         (display "\n")
                                         (number?/c j7340 k7341 g7338)))
                                      (x7533
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7340 k7341 g7339))))
                                     (begin
                                       (write '(funapp 441 36))
                                       (display "\n")
                                       (f7342 x7534 x7533)))))
                                  (begin
                                    (write '(funapp 442 33))
                                    (display "\n")
                                    (number?/c j7340 k7341 x7532)))))
                               g7531))))
                          g7530))
                       xj7336
                       xk7337
                       (lambda (a b)
                         (letrec*
                          ((g7529
                            (begin
                              (write '(funapp 447 53))
                              (display "\n")
                              (orig-* a b))))
                          g7529))))))
                  g7528)))
               (<
                (letrec*
                 ((xj7343
                   (begin (write '(funapp 451 26)) (display "\n") 'server))
                  (xk7344
                   (begin (write '(funapp 451 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7535
                    (begin
                      (write '(funapp 454 21))
                      (display "\n")
                      ((lambda (j7347 k7348 f7349)
                         (letrec*
                          ((g7537
                            (lambda (g7345 g7346)
                              (letrec*
                               ((g7538
                                 (letrec*
                                  ((x7539
                                    (letrec*
                                     ((x7541
                                       (begin
                                         (write '(funapp 463 44))
                                         (display "\n")
                                         (number?/c j7347 k7348 g7345)))
                                      (x7540
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7347 k7348 g7346))))
                                     (begin
                                       (write '(funapp 465 36))
                                       (display "\n")
                                       (f7349 x7541 x7540)))))
                                  (begin
                                    (write '(funapp 466 33))
                                    (display "\n")
                                    (boolean?/c j7347 k7348 x7539)))))
                               g7538))))
                          g7537))
                       xj7343
                       xk7344
                       (lambda (a b)
                         (letrec*
                          ((g7536
                            (begin
                              (write '(funapp 471 53))
                              (display "\n")
                              (orig-< a b))))
                          g7536))))))
                  g7535)))
               (>
                (letrec*
                 ((xj7350
                   (begin (write '(funapp 475 26)) (display "\n") 'server))
                  (xk7351
                   (begin (write '(funapp 475 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7542
                    (begin
                      (write '(funapp 478 21))
                      (display "\n")
                      ((lambda (j7354 k7355 f7356)
                         (letrec*
                          ((g7544
                            (lambda (g7352 g7353)
                              (letrec*
                               ((g7545
                                 (letrec*
                                  ((x7546
                                    (letrec*
                                     ((x7548
                                       (begin
                                         (write '(funapp 487 44))
                                         (display "\n")
                                         (number?/c j7354 k7355 g7352)))
                                      (x7547
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7354 k7355 g7353))))
                                     (begin
                                       (write '(funapp 489 36))
                                       (display "\n")
                                       (f7356 x7548 x7547)))))
                                  (begin
                                    (write '(funapp 490 33))
                                    (display "\n")
                                    (boolean?/c j7354 k7355 x7546)))))
                               g7545))))
                          g7544))
                       xj7350
                       xk7351
                       (lambda (a b)
                         (letrec*
                          ((g7543
                            (begin
                              (write '(funapp 495 53))
                              (display "\n")
                              (orig-> a b))))
                          g7543))))))
                  g7542)))
               (<=
                (letrec*
                 ((xj7357
                   (begin (write '(funapp 499 26)) (display "\n") 'server))
                  (xk7358
                   (begin (write '(funapp 499 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7549
                    (begin
                      (write '(funapp 502 21))
                      (display "\n")
                      ((lambda (j7361 k7362 f7363)
                         (letrec*
                          ((g7551
                            (lambda (g7359 g7360)
                              (letrec*
                               ((g7552
                                 (letrec*
                                  ((x7553
                                    (letrec*
                                     ((x7555
                                       (begin
                                         (write '(funapp 511 44))
                                         (display "\n")
                                         (number?/c j7361 k7362 g7359)))
                                      (x7554
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7361 k7362 g7360))))
                                     (begin
                                       (write '(funapp 513 36))
                                       (display "\n")
                                       (f7363 x7555 x7554)))))
                                  (begin
                                    (write '(funapp 514 33))
                                    (display "\n")
                                    (boolean?/c j7361 k7362 x7553)))))
                               g7552))))
                          g7551))
                       xj7357
                       xk7358
                       (lambda (a b)
                         (letrec*
                          ((g7550
                            (begin
                              (write '(funapp 519 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7550))))))
                  g7549)))
               (>=
                (letrec*
                 ((xj7364
                   (begin (write '(funapp 523 26)) (display "\n") 'server))
                  (xk7365
                   (begin (write '(funapp 523 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7556
                    (begin
                      (write '(funapp 526 21))
                      (display "\n")
                      ((lambda (j7368 k7369 f7370)
                         (letrec*
                          ((g7558
                            (lambda (g7366 g7367)
                              (letrec*
                               ((g7559
                                 (letrec*
                                  ((x7560
                                    (letrec*
                                     ((x7562
                                       (begin
                                         (write '(funapp 535 44))
                                         (display "\n")
                                         (number?/c j7368 k7369 g7366)))
                                      (x7561
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (number?/c j7368 k7369 g7367))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7370 x7562 x7561)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (boolean?/c j7368 k7369 x7560)))))
                               g7559))))
                          g7558))
                       xj7364
                       xk7365
                       (lambda (a b)
                         (letrec*
                          ((g7557
                            (begin
                              (write '(funapp 543 53))
                              (display "\n")
                              (orig->= a b))))
                          g7557))))))
                  g7556)))
               (/
                (letrec*
                 ((xj7371
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7372
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7563
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7565
                            (lambda (g7373 g7374)
                              (letrec*
                               ((g7566
                                 (letrec*
                                  ((x7567
                                    (letrec*
                                     ((x7569
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (number?/c j7375 k7376 g7373)))
                                      (x7568
                                       (begin
                                         (write '(funapp 560 44))
                                         (display "\n")
                                         (number?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 561 36))
                                       (display "\n")
                                       (f7377 x7569 x7568)))))
                                  (begin
                                    (write '(funapp 562 33))
                                    (display "\n")
                                    (number?/c j7375 k7376 x7567)))))
                               g7566))))
                          g7565))
                       xj7371
                       xk7372
                       (lambda (a b)
                         (letrec*
                          ((g7564
                            (begin
                              (write '(funapp 567 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7564))))))
                  g7563)))
               (car
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 571 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 571 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7570
                    (begin
                      (write '(funapp 574 21))
                      (display "\n")
                      ((lambda (j7381 k7382 f7383)
                         (letrec*
                          ((g7572
                            (lambda (g7380)
                              (letrec*
                               ((g7573
                                 (letrec*
                                  ((x7574
                                    (letrec*
                                     ((x7575
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (pair?/c j7381 k7382 g7380))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7383 x7575)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (any/c j7381 k7382 x7574)))))
                               g7573))))
                          g7572))
                       xj7378
                       xk7379
                       (lambda (p)
                         (letrec*
                          ((g7571
                            (begin
                              (write '(funapp 590 51))
                              (display "\n")
                              (orig-car p))))
                          g7571))))))
                  g7570)))
               (cdr
                (letrec*
                 ((xj7384
                   (begin (write '(funapp 594 26)) (display "\n") 'server))
                  (xk7385
                   (begin (write '(funapp 594 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7576
                    (begin
                      (write '(funapp 597 21))
                      (display "\n")
                      ((lambda (j7387 k7388 f7389)
                         (letrec*
                          ((g7578
                            (lambda (g7386)
                              (letrec*
                               ((g7579
                                 (letrec*
                                  ((x7580
                                    (letrec*
                                     ((x7581
                                       (begin
                                         (write '(funapp 606 44))
                                         (display "\n")
                                         (pair?/c j7387 k7388 g7386))))
                                     (begin
                                       (write '(funapp 607 36))
                                       (display "\n")
                                       (f7389 x7581)))))
                                  (begin
                                    (write '(funapp 608 33))
                                    (display "\n")
                                    (any/c j7387 k7388 x7580)))))
                               g7579))))
                          g7578))
                       xj7384
                       xk7385
                       (lambda (p)
                         (letrec*
                          ((g7577
                            (begin
                              (write '(funapp 613 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7577))))))
                  g7576)))
               (cons
                (letrec*
                 ((xj7390
                   (begin (write '(funapp 617 26)) (display "\n") 'server))
                  (xk7391
                   (begin (write '(funapp 617 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7582
                    (begin
                      (write '(funapp 620 21))
                      (display "\n")
                      ((lambda (j7394 k7395 f7396)
                         (letrec*
                          ((g7584
                            (lambda (g7392 g7393)
                              (letrec*
                               ((g7585
                                 (letrec*
                                  ((x7586
                                    (letrec*
                                     ((x7588
                                       (begin
                                         (write '(funapp 629 44))
                                         (display "\n")
                                         (any/c j7394 k7395 g7392)))
                                      (x7587
                                       (begin
                                         (write '(funapp 630 44))
                                         (display "\n")
                                         (any/c j7394 k7395 g7393))))
                                     (begin
                                       (write '(funapp 631 36))
                                       (display "\n")
                                       (f7396 x7588 x7587)))))
                                  (begin
                                    (write '(funapp 632 33))
                                    (display "\n")
                                    (pair?/c j7394 k7395 x7586)))))
                               g7585))))
                          g7584))
                       xj7390
                       xk7391
                       (lambda (a b)
                         (letrec*
                          ((g7583
                            (begin
                              (write '(funapp 638 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7583))))))
                  g7582)))
               (vector-ref
                (letrec*
                 ((xj7397
                   (begin (write '(funapp 642 26)) (display "\n") 'server))
                  (xk7398
                   (begin (write '(funapp 642 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7589
                    (begin
                      (write '(funapp 645 21))
                      (display "\n")
                      ((lambda (j7400 k7401 f7402)
                         (letrec*
                          ((g7591
                            (lambda (g7399)
                              (letrec*
                               ((g7592
                                 (letrec*
                                  ((x7593
                                    (letrec*
                                     ((x7594
                                       (begin
                                         (write '(funapp 654 44))
                                         (display "\n")
                                         (vector?/c j7400 k7401 g7399))))
                                     (begin
                                       (write '(funapp 655 36))
                                       (display "\n")
                                       (f7402 x7594)))))
                                  (begin
                                    (write '(funapp 656 33))
                                    (display "\n")
                                    (integer?/c j7400 k7401 x7593)))))
                               g7592))))
                          g7591))
                       xj7397
                       xk7398
                       (lambda (v i)
                         (letrec*
                          ((g7590
                            (begin
                              (write '(funapp 662 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7590))))))
                  g7589)))
               (vector-set!
                (letrec*
                 ((xj7403
                   (begin (write '(funapp 666 26)) (display "\n") 'server))
                  (xk7404
                   (begin (write '(funapp 666 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7595
                    (begin
                      (write '(funapp 669 21))
                      (display "\n")
                      ((lambda (j7407 k7408 f7409)
                         (letrec*
                          ((g7597
                            (lambda (g7405 g7406)
                              (letrec*
                               ((g7598
                                 (letrec*
                                  ((x7599
                                    (letrec*
                                     ((x7601
                                       (begin
                                         (write '(funapp 678 44))
                                         (display "\n")
                                         (vector?/c j7407 k7408 g7405)))
                                      (x7600
                                       (begin
                                         (write '(funapp 679 44))
                                         (display "\n")
                                         (integer?/c j7407 k7408 g7406))))
                                     (begin
                                       (write '(funapp 680 36))
                                       (display "\n")
                                       (f7409 x7601 x7600)))))
                                  (begin
                                    (write '(funapp 681 33))
                                    (display "\n")
                                    (any/c j7407 k7408 x7599)))))
                               g7598))))
                          g7597))
                       xj7403
                       xk7404
                       (lambda (vec i v)
                         (letrec*
                          ((g7596
                            (begin
                              (write '(funapp 687 41))
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
                             (write '(funapp 694 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 694 58))
                           (display "\n")
                           (cdr x7604)))))
                      (begin
                        (write '(funapp 695 23))
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
                          (write '(funapp 701 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 701 62))
                        (display "\n")
                        (assert x7608))))
                    (g7606
                     (letrec*
                      ((x7609
                        (begin
                          (write '(funapp 702 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 702 57))
                        (display "\n")
                        (assert x7609))))
                    (g7607
                     (letrec*
                      ((x-cnd7610
                        (begin
                          (write '(funapp 705 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7610
                        (begin (write '(funapp 707 24)) (display "\n") '())
                        (letrec*
                         ((x7613
                           (letrec*
                            ((x7614
                              (begin
                                (write '(funapp 709 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 709 61))
                              (display "\n")
                              (f x7614))))
                          (x7611
                           (letrec*
                            ((x7612
                              (begin
                                (write '(funapp 710 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 710 61))
                              (display "\n")
                              (map f x7612)))))
                         (begin
                           (write '(funapp 711 26))
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
                          (write '(funapp 716 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 716 55))
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
                                (write '(funapp 725 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 725 61))
                              (display "\n")
                              (car x7620)))))
                         (begin
                           (write '(funapp 726 26))
                           (display "\n")
                           (cdr x7619)))))
                      (begin
                        (write '(funapp 727 23))
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
                                (write '(funapp 736 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (cdr x7624)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7623)))))
                      (begin
                        (write '(funapp 738 23))
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
                          (write '(funapp 744 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 744 60))
                        (display "\n")
                        (assert x7628))))
                    (g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 746 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 746 59))
                        (display "\n")
                        (assert x7629))))
                    (g7627
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
                       ((g7630
                         (begin
                           (write '(funapp 752 32))
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
                             (write '(funapp 760 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 760 58))
                           (display "\n")
                           (cdr x7634)))))
                      (begin
                        (write '(funapp 761 23))
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
                                (write '(funapp 770 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 770 61))
                              (display "\n")
                              (car x7638)))))
                         (begin
                           (write '(funapp 771 26))
                           (display "\n")
                           (car x7637)))))
                      (begin
                        (write '(funapp 772 23))
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
                          (write '(funapp 777 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 777 57))
                        (display "\n")
                        (assert x7641))))
                    (g7640
                     (letrec*
                      ((x-cnd7642
                        (begin
                          (write '(funapp 780 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7642
                        #f
                        (letrec*
                         ((x-cnd7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 785 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 785 56))
                              (display "\n")
                              (eq? x7644 k)))))
                         (if x-cnd7643
                           (begin
                             (write '(funapp 787 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 788 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 788 55))
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
                          (write '(funapp 793 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 793 60))
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
                          (write '(funapp 798 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 798 57))
                        (display "\n")
                        (assert x7650))))
                    (g7649
                     (letrec*
                      ((x-cnd7651
                        (begin
                          (write '(funapp 801 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7651
                        ""
                        (letrec*
                         ((x7654
                           (letrec*
                            ((x7655
                              (begin
                                (write '(funapp 806 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 806 55))
                              (display "\n")
                              (char->string x7655))))
                          (x7652
                           (letrec*
                            ((x7653
                              (begin
                                (write '(funapp 808 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 808 55))
                              (display "\n")
                              (list->string x7653)))))
                         (begin
                           (write '(funapp 809 26))
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
                          (write '(funapp 814 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 814 58))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 815 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 815 58))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((val7249
                        (begin
                          (write '(funapp 818 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7661
                         (if val7249
                           val7249
                           (begin
                             (write '(funapp 820 52))
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
                                (write '(funapp 830 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 830 61))
                              (display "\n")
                              (cdr x7665)))))
                         (begin
                           (write '(funapp 831 26))
                           (display "\n")
                           (cdr x7664)))))
                      (begin
                        (write '(funapp 832 23))
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
                          (write '(funapp 837 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 837 57))
                        (display "\n")
                        (assert x7669))))
                    (g7667
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 838 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 838 57))
                        (display "\n")
                        (assert x7670))))
                    (g7668
                     (letrec*
                      ((x-cnd7671
                        (begin
                          (write '(funapp 841 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7671
                        x
                        (letrec*
                         ((x7673
                           (begin
                             (write '(funapp 845 34))
                             (display "\n")
                             (cdr x)))
                          (x7672
                           (begin
                             (write '(funapp 845 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (list-tail x7673 x7672)))))))
                   g7668)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7674
                     (begin (write '(funapp 848 49)) (display "\n") '())))
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
                           (write '(funapp 855 48))
                           (display "\n")
                           (char-ci>=? c x7677)))))
                      (if x-cnd7676
                        (letrec*
                         ((x7678 #\z))
                         (begin
                           (write '(funapp 857 48))
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
                             (write '(funapp 866 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 866 62))
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
                                   (write '(funapp 874 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 875 32))
                                 (display "\n")
                                 (= x7682 10)))))
                            (letrec*
                             ((g7683
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((x7684
                                    (begin
                                      (write '(funapp 881 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 882 35))
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
                             (write '(funapp 891 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 891 58))
                           (display "\n")
                           (cdr x7687)))))
                      (begin
                        (write '(funapp 892 23))
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
                          (write '(funapp 897 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 897 59))
                        (display "\n")
                        (assert x7690))))
                    (g7689
                     (begin (write '(funapp 898 28)) (display "\n") (> x 0))))
                   g7689)))
               (string=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7691
                     (begin
                       (write '(funapp 900 59))
                       (display "\n")
                       (bool-top))))
                   g7691)))
               ($pc (begin (write '(funapp 901 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7692 #f)) g7692)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((x7694
                        (begin
                          (write '(funapp 907 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 907 55))
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
                          (write '(funapp 912 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 912 59))
                        (display "\n")
                        (assert x7697))))
                    (g7696
                     (letrec*
                      ((x-cnd7698
                        (begin
                          (write '(funapp 915 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7698
                        (begin
                          (write '(funapp 916 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 916 49))
                          (display "\n")
                          (floor x))))))
                   g7696)))
               ($cmp (begin (write '(funapp 918 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7699
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 924 33))
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
                                   (write '(funapp 932 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7701
                                 (begin
                                   (write '(funapp 933 46))
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
                                         (write '(funapp 941 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7703
                                       (letrec*
                                        ((x-cnd7704
                                          (begin
                                            (write '(funapp 944 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7704
                                          (begin
                                            (write '(funapp 945 55))
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
                                               (write '(funapp 954 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7706
                                             (letrec*
                                              ((x-cnd7707
                                                (begin
                                                  (write '(funapp 957 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7707
                                                (letrec*
                                                 ((x-cnd7708
                                                   (letrec*
                                                    ((x7710
                                                      (begin
                                                        (write
                                                         '(funapp 962 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7709
                                                      (begin
                                                        (write
                                                         '(funapp 963 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 964 53))
                                                      (display "\n")
                                                      (equal? x7710 x7709)))))
                                                 (if x-cnd7708
                                                   (letrec*
                                                    ((x7712
                                                      (begin
                                                        (write
                                                         '(funapp 967 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7711
                                                      (begin
                                                        (write
                                                         '(funapp 968 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 969 53))
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
                                                  (write '(funapp 978 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7714
                                                (letrec*
                                                 ((x-cnd7715
                                                   (begin
                                                     (write '(funapp 981 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7715
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 984 57))
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
                                                                  991
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 993 60))
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
                                                                          1002
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
                                                                                   1011
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
                                                                               x7723
                                                                               x7722)))))
                                                                         (if x-cnd7721
                                                                           (letrec*
                                                                            ((x7724
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
                                                                               x7724)))
                                                                           #f)))))
                                                                    g7720))))
                                                                g7719))))
                                                           (letrec*
                                                            ((g7725
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1033
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
                                (write '(funapp 1051 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1051 61))
                              (display "\n")
                              (car x7729)))))
                         (begin
                           (write '(funapp 1052 26))
                           (display "\n")
                           (car x7728)))))
                      (begin
                        (write '(funapp 1053 23))
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
                                (write '(funapp 1062 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1062 61))
                              (display "\n")
                              (cdr x7733)))))
                         (begin
                           (write '(funapp 1063 26))
                           (display "\n")
                           (car x7732)))))
                      (begin
                        (write '(funapp 1064 23))
                        (display "\n")
                        (car x7731)))))
                   g7730)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7734
                     (begin
                       (write '(funapp 1066 53))
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
                          (write '(funapp 1071 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1071 60))
                        (display "\n")
                        (assert x7738))))
                    (g7736
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 1073 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1073 59))
                        (display "\n")
                        (assert x7739))))
                    (g7737
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
                       ((g7740
                         (begin
                           (write '(funapp 1079 32))
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
                       (write '(funapp 1082 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1082 57))
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
                          (write '(funapp 1086 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1086 58))
                        (display "\n")
                        (assert x7746))))
                    (g7744
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1087 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1087 58))
                        (display "\n")
                        (assert x7747))))
                    (g7745
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1090 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7748
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1092 52))
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
                             (write '(funapp 1100 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1100 58))
                           (display "\n")
                           (car x7751)))))
                      (begin
                        (write '(funapp 1101 23))
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
                                (write '(funapp 1110 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1110 61))
                              (display "\n")
                              (cdr x7755)))))
                         (begin
                           (write '(funapp 1111 26))
                           (display "\n")
                           (car x7754)))))
                      (begin
                        (write '(funapp 1112 23))
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
                             (write '(funapp 1120 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1120 58))
                           (display "\n")
                           (cdr x7758)))))
                      (begin
                        (write '(funapp 1121 23))
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
                             (write '(funapp 1128 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1128 58))
                           (display "\n")
                           (car x7761)))))
                      (begin
                        (write '(funapp 1129 23))
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
                          (write '(funapp 1134 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1134 58))
                        (display "\n")
                        (assert x7765))))
                    (g7763
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1135 58))
                        (display "\n")
                        (assert x7766))))
                    (g7764
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1136 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1136 66))
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
                                (write '(funapp 1146 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (car x7771)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (car x7770)))))
                      (begin
                        (write '(funapp 1148 23))
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
                          (write '(funapp 1153 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1153 59))
                        (display "\n")
                        (assert x7774))))
                    (g7773
                     (begin (write '(funapp 1154 28)) (display "\n") (< x 0))))
                   g7773)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7775
                     (begin
                       (write '(funapp 1156 53))
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
                             (write '(funapp 1162 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1162 58))
                           (display "\n")
                           (car x7778)))))
                      (begin
                        (write '(funapp 1163 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7779
                     (begin (write '(funapp 1165 51)) (display "\n") '())))
                   g7779)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1169 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1169 57))
                        (display "\n")
                        (assert x7782))))
                    (g7781
                     (letrec*
                      ((x-cnd7783
                        (begin
                          (write '(funapp 1172 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7783
                        (begin (write '(funapp 1174 24)) (display "\n") '())
                        (letrec*
                         ((x7786
                           (letrec*
                            ((x7787
                              (begin
                                (write '(funapp 1176 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1176 61))
                              (display "\n")
                              (reverse x7787))))
                          (x7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1177 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1177 61))
                              (display "\n")
                              (list x7785)))))
                         (begin
                           (write '(funapp 1178 26))
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
                                (write '(funapp 1187 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1187 61))
                              (display "\n")
                              (car x7791)))))
                         (begin
                           (write '(funapp 1188 26))
                           (display "\n")
                           (car x7790)))))
                      (begin
                        (write '(funapp 1189 23))
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
                                (write '(funapp 1198 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1198 61))
                              (display "\n")
                              (car x7795)))))
                         (begin
                           (write '(funapp 1199 26))
                           (display "\n")
                           (cdr x7794)))))
                      (begin
                        (write '(funapp 1200 23))
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
                          (write '(funapp 1205 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1205 59))
                        (display "\n")
                        (assert x7798))))
                    (g7797
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1206 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1206 60))
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
                                (write '(funapp 1215 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1215 61))
                              (display "\n")
                              (cdr x7803)))))
                         (begin
                           (write '(funapp 1216 26))
                           (display "\n")
                           (car x7802)))))
                      (begin
                        (write '(funapp 1217 23))
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
                          (write '(funapp 1223 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1223 59))
                        (display "\n")
                        (assert x7807))))
                    (g7805
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1224 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1224 60))
                        (display "\n")
                        (assert x7808))))
                    (g7806
                     (letrec*
                      ((x-cnd7809
                        (begin
                          (write '(funapp 1227 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7809
                        (letrec*
                         ((g7810
                           (begin
                             (write '(funapp 1229 42))
                             (display "\n")
                             (proc))))
                         g7810)
                        (letrec*
                         ((x-cnd7811
                           (letrec*
                            ((x7812
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1232 58))
                              (display "\n")
                              (null? x7812)))))
                         (if x-cnd7811
                           (letrec*
                            ((g7813
                              (letrec*
                               ((x7814
                                 (begin
                                   (write '(funapp 1236 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1236 61))
                                 (display "\n")
                                 (proc x7814)))))
                            g7813)
                           (letrec*
                            ((x-cnd7815
                              (letrec*
                               ((x7816
                                 (begin
                                   (write '(funapp 1240 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1240 62))
                                 (display "\n")
                                 (null? x7816)))))
                            (if x-cnd7815
                              (letrec*
                               ((g7817
                                 (letrec*
                                  ((x7819
                                    (begin
                                      (write '(funapp 1245 43))
                                      (display "\n")
                                      (car args)))
                                   (x7818
                                    (begin
                                      (write '(funapp 1245 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1246 35))
                                    (display "\n")
                                    (proc x7819 x7818)))))
                               g7817)
                              (letrec*
                               ((x-cnd7820
                                 (letrec*
                                  ((x7821
                                    (begin
                                      (write '(funapp 1251 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1252 35))
                                    (display "\n")
                                    (null? x7821)))))
                               (if x-cnd7820
                                 (letrec*
                                  ((g7822
                                    (letrec*
                                     ((x7825
                                       (begin
                                         (write '(funapp 1257 46))
                                         (display "\n")
                                         (car args)))
                                      (x7824
                                       (begin
                                         (write '(funapp 1258 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7823
                                       (begin
                                         (write '(funapp 1259 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1260 38))
                                       (display "\n")
                                       (proc x7825 x7824 x7823)))))
                                  g7822)
                                 (letrec*
                                  ((x-cnd7826
                                    (letrec*
                                     ((x7827
                                       (begin
                                         (write '(funapp 1265 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1266 38))
                                       (display "\n")
                                       (null? x7827)))))
                                  (if x-cnd7826
                                    (letrec*
                                     ((g7828
                                       (letrec*
                                        ((x7832
                                          (begin
                                            (write '(funapp 1271 49))
                                            (display "\n")
                                            (car args)))
                                         (x7831
                                          (begin
                                            (write '(funapp 1272 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7830
                                          (begin
                                            (write '(funapp 1273 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7829
                                          (begin
                                            (write '(funapp 1274 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1275 41))
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
                                               (write '(funapp 1282 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1283 44))
                                             (display "\n")
                                             (cdr x7835)))))
                                        (begin
                                          (write '(funapp 1284 41))
                                          (display "\n")
                                          (null? x7834)))))
                                     (if x-cnd7833
                                       (letrec*
                                        ((g7836
                                          (letrec*
                                           ((x7842
                                             (begin
                                               (write '(funapp 1289 52))
                                               (display "\n")
                                               (car args)))
                                            (x7841
                                             (begin
                                               (write '(funapp 1290 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7840
                                             (begin
                                               (write '(funapp 1291 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7839
                                             (begin
                                               (write '(funapp 1292 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7837
                                             (letrec*
                                              ((x7838
                                                (begin
                                                  (write '(funapp 1295 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1296 47))
                                                (display "\n")
                                                (car x7838)))))
                                           (begin
                                             (write '(funapp 1297 44))
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
                                                  (write '(funapp 1309 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1310 47))
                                                (display "\n")
                                                (cddr x7845)))))
                                           (begin
                                             (write '(funapp 1311 44))
                                             (display "\n")
                                             (null? x7844)))))
                                        (if x-cnd7843
                                          (letrec*
                                           ((g7846
                                             (letrec*
                                              ((x7854
                                                (begin
                                                  (write '(funapp 1316 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7853
                                                (begin
                                                  (write '(funapp 1317 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7852
                                                (begin
                                                  (write '(funapp 1318 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7851
                                                (begin
                                                  (write '(funapp 1319 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7849
                                                (letrec*
                                                 ((x7850
                                                   (begin
                                                     (write '(funapp 1322 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1323 50))
                                                   (display "\n")
                                                   (car x7850))))
                                               (x7847
                                                (letrec*
                                                 ((x7848
                                                   (begin
                                                     (write '(funapp 1326 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1327 50))
                                                   (display "\n")
                                                   (cadr x7848)))))
                                              (begin
                                                (write '(funapp 1328 47))
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
                                                     (write '(funapp 1341 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1342 50))
                                                   (display "\n")
                                                   (cdddr x7857)))))
                                              (begin
                                                (write '(funapp 1343 47))
                                                (display "\n")
                                                (null? x7856)))))
                                           (if x-cnd7855
                                             (letrec*
                                              ((g7858
                                                (letrec*
                                                 ((x7868
                                                   (begin
                                                     (write '(funapp 1348 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7867
                                                   (begin
                                                     (write '(funapp 1349 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7866
                                                   (begin
                                                     (write '(funapp 1350 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7865
                                                   (begin
                                                     (write '(funapp 1351 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7863
                                                   (letrec*
                                                    ((x7864
                                                      (begin
                                                        (write
                                                         '(funapp 1354 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1355 53))
                                                      (display "\n")
                                                      (car x7864))))
                                                  (x7861
                                                   (letrec*
                                                    ((x7862
                                                      (begin
                                                        (write
                                                         '(funapp 1358 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1359 53))
                                                      (display "\n")
                                                      (cadr x7862))))
                                                  (x7859
                                                   (letrec*
                                                    ((x7860
                                                      (begin
                                                        (write
                                                         '(funapp 1362 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1363 53))
                                                      (display "\n")
                                                      (caddr x7860)))))
                                                 (begin
                                                   (write '(funapp 1364 50))
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
                                                  (write '(funapp 1375 49))
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
                          (write '(funapp 1381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1381 57))
                        (display "\n")
                        (assert x7872))))
                    (g7871
                     (letrec*
                      ((x-cnd7873
                        (begin
                          (write '(funapp 1384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7873
                        #f
                        (letrec*
                         ((x-cnd7874
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 1389 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1389 55))
                              (display "\n")
                              (equal? x7875 e)))))
                         (if x-cnd7874
                           l
                           (letrec*
                            ((x7876
                              (begin
                                (write '(funapp 1392 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1392 55))
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
                                (write '(funapp 1401 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1401 61))
                              (display "\n")
                              (cdr x7880)))))
                         (begin
                           (write '(funapp 1402 26))
                           (display "\n")
                           (cdr x7879)))))
                      (begin
                        (write '(funapp 1403 23))
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
                                (write '(funapp 1412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1412 61))
                              (display "\n")
                              (cdr x7884)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cdr x7883)))))
                      (begin
                        (write '(funapp 1414 23))
                        (display "\n")
                        (car x7882)))))
                   g7881)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7885
                     (begin
                       (write '(funapp 1416 53))
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
                          (write '(funapp 1420 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1420 59))
                        (display "\n")
                        (assert x7888))))
                    (g7887
                     (begin (write '(funapp 1421 28)) (display "\n") (= x 0))))
                   g7887)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1428 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7890
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1430 52))
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
                          (write '(funapp 1436 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1436 55))
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
                             (write '(funapp 1446 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7894
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1448 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1448 55))
                              (display "\n")
                              (list? x7895)))
                           #f))))
                      (letrec*
                       ((g7896
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1451 52))
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
                                (write '(funapp 1461 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1461 61))
                              (display "\n")
                              (car x7900)))))
                         (begin
                           (write '(funapp 1462 26))
                           (display "\n")
                           (cdr x7899)))))
                      (begin
                        (write '(funapp 1463 23))
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
                           (write '(funapp 1470 58))
                           (display "\n")
                           (char<=? x7903 c)))))
                      (if x-cnd7902
                        (letrec*
                         ((x7904 #\9))
                         (begin
                           (write '(funapp 1472 48))
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
                          (write '(funapp 1479 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1479 57))
                        (display "\n")
                        (assert x7907))))
                    (g7906
                     (letrec*
                      ((x-cnd7908
                        (begin
                          (write '(funapp 1482 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7908
                        #f
                        (letrec*
                         ((x-cnd7909
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 1487 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1487 56))
                              (display "\n")
                              (eqv? x7910 k)))))
                         (if x-cnd7909
                           (begin
                             (write '(funapp 1489 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7911
                              (begin
                                (write '(funapp 1490 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1490 55))
                              (display "\n")
                              (assq k x7911)))))))))
                   g7906)))
               (not (lambda (x) (letrec* ((g7912 (if x #f #t))) g7912)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7913
                     (begin
                       (write '(funapp 1494 50))
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
                          (write '(funapp 1498 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1498 57))
                        (display "\n")
                        (assert x7916))))
                    (g7915
                     (letrec*
                      ((x-cnd7917
                        (begin
                          (write '(funapp 1501 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7917
                        #f
                        (letrec*
                         ((x-cnd7918
                           (letrec*
                            ((x7919
                              (begin
                                (write '(funapp 1506 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1506 55))
                              (display "\n")
                              (eq? x7919 e)))))
                         (if x-cnd7918
                           l
                           (letrec*
                            ((x7920
                              (begin
                                (write '(funapp 1509 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1509 55))
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
                                (write '(funapp 1518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1518 61))
                              (display "\n")
                              (car x7924)))))
                         (begin
                           (write '(funapp 1519 26))
                           (display "\n")
                           (cdr x7923)))))
                      (begin
                        (write '(funapp 1520 23))
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
                          (write '(funapp 1525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1525 57))
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
                                  (write '(funapp 1533 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7929
                                0
                                (letrec*
                                 ((x7930
                                   (letrec*
                                    ((x7931
                                      (begin
                                        (write '(funapp 1538 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1538 63))
                                      (display "\n")
                                      (rec x7931)))))
                                 (begin
                                   (write '(funapp 1539 34))
                                   (display "\n")
                                   (+ 1 x7930)))))))
                           g7928))))
                      (letrec*
                       ((g7932
                         (begin
                           (write '(funapp 1541 40))
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
                          (write '(funapp 1546 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1546 58))
                        (display "\n")
                        (assert x7936))))
                    (g7934
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (assert x7937))))
                    (g7935
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1550 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7938
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1552 52))
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
                          (write '(funapp 1558 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1558 65))
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
                             (write '(funapp 1565 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1565 58))
                           (display "\n")
                           (car x7943)))))
                      (begin
                        (write '(funapp 1566 23))
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
                          (write '(funapp 1571 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1571 57))
                        (display "\n")
                        (assert x7946))))
                    (g7945
                     (letrec*
                      ((x-cnd7947
                        (begin
                          (write '(funapp 1574 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7947
                        #f
                        (letrec*
                         ((x-cnd7948
                           (letrec*
                            ((x7949
                              (begin
                                (write '(funapp 1579 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1579 56))
                              (display "\n")
                              (equal? x7949 k)))))
                         (if x-cnd7948
                           (begin
                             (write '(funapp 1581 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7950
                              (begin
                                (write '(funapp 1582 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1582 55))
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
                          (write '(funapp 1587 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1587 55))
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
                          (write '(funapp 1592 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1592 58))
                        (display "\n")
                        (assert x7956))))
                    (g7954
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7957))))
                    (g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1594 63))
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
                          (write '(funapp 1601 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7960
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1603 52))
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
                          (write '(funapp 1609 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1609 62))
                        (display "\n")
                        (assert x7964))))
                    (g7962
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1610 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1610 57))
                        (display "\n")
                        (assert x7965))))
                    (g7963
                     (letrec*
                      ((x-cnd7966
                        (begin
                          (write '(funapp 1613 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7966
                        #t
                        (letrec*
                         ((x-cnd7967
                           (begin
                             (write '(funapp 1617 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7967
                           (letrec*
                            ((g7968
                              (letrec*
                               ((x7970
                                 (begin
                                   (write '(funapp 1620 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1620 64))
                                 (display "\n")
                                 (f x7970))))
                             (g7969
                              (letrec*
                               ((x7971
                                 (begin
                                   (write '(funapp 1622 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1622 58))
                                 (display "\n")
                                 (for-each f x7971)))))
                            g7969)
                           (begin
                             (write '(funapp 1624 27))
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
                          (write '(funapp 1629 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1629 59))
                        (display "\n")
                        (assert x7974))))
                    (g7973
                     (letrec*
                      ((x-cnd7975
                        (begin
                          (write '(funapp 1631 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7975
                        (begin
                          (write '(funapp 1631 67))
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
                          (write '(funapp 1636 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1636 58))
                        (display "\n")
                        (assert x7979))))
                    (g7977
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1637 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1637 58))
                        (display "\n")
                        (assert x7980))))
                    (g7978
                     (letrec*
                      ((val7262
                        (begin
                          (write '(funapp 1640 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7981
                         (if val7262
                           val7262
                           (begin
                             (write '(funapp 1642 52))
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
                                (write '(funapp 1652 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1652 61))
                              (display "\n")
                              (cdr x7985)))))
                         (begin
                           (write '(funapp 1653 26))
                           (display "\n")
                           (cdr x7984)))))
                      (begin
                        (write '(funapp 1654 23))
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
                             (write '(funapp 1662 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1662 58))
                           (display "\n")
                           (abs x7990))))
                       (x7988
                        (begin
                          (write '(funapp 1663 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1664 23))
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
                          (write '(funapp 1670 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1670 57))
                        (display "\n")
                        (assert x7995))))
                    (g7992
                     (letrec*
                      ((x7996
                        (begin
                          (write '(funapp 1671 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1671 63))
                        (display "\n")
                        (assert x7996))))
                    (g7993
                     (letrec*
                      ((x7997
                        (letrec*
                         ((x7998
                           (begin
                             (write '(funapp 1674 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1674 61))
                           (display "\n")
                           (< index x7998)))))
                      (begin
                        (write '(funapp 1675 23))
                        (display "\n")
                        (assert x7997))))
                    (g7994
                     (letrec*
                      ((x-cnd7999
                        (begin
                          (write '(funapp 1678 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7999
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8001
                           (begin
                             (write '(funapp 1682 34))
                             (display "\n")
                             (cdr l)))
                          (x8000
                           (begin
                             (write '(funapp 1682 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1683 26))
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
                          (write '(funapp 1690 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8003
                        a
                        (letrec*
                         ((x8004
                           (begin
                             (write '(funapp 1693 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1693 57))
                           (display "\n")
                           (gcd b x8004)))))))
                   g8002)))
               (phi
                (lambda (x1)
                  (letrec*
                   ((g8005
                     (lambda (x2)
                       (letrec*
                        ((g8006
                          (lambda (x3)
                            (letrec*
                             ((g8007
                               (lambda (x4)
                                 (letrec*
                                  ((g8008
                                    (lambda (x5)
                                      (letrec*
                                       ((g8009
                                         (lambda (x6)
                                           (letrec*
                                            ((g8010
                                              (lambda (x7)
                                                (letrec*
                                                 ((g8011
                                                   (letrec*
                                                    ((x-cnd8012
                                                      (letrec*
                                                       ((val7263 x1))
                                                       (letrec*
                                                        ((g8013
                                                          (if val7263
                                                            val7263
                                                            x2)))
                                                        g8013))))
                                                    (if x-cnd8012
                                                      (letrec*
                                                       ((x-cnd8014
                                                         (letrec*
                                                          ((val7264 x1))
                                                          (letrec*
                                                           ((g8015
                                                             (if val7264
                                                               val7264
                                                               (letrec*
                                                                ((val7265
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1738
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (not x2))))
                                                                (letrec*
                                                                 ((g8016
                                                                   (if val7265
                                                                     val7265
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1743
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (not
                                                                        x3)))))
                                                                 g8016)))))
                                                           g8015))))
                                                       (if x-cnd8014
                                                         (letrec*
                                                          ((x-cnd8017
                                                            (letrec*
                                                             ((val7266 x3))
                                                             (letrec*
                                                              ((g8018
                                                                (if val7266
                                                                  val7266
                                                                  x4)))
                                                              g8018))))
                                                          (if x-cnd8017
                                                            (letrec*
                                                             ((x-cnd8019
                                                               (letrec*
                                                                ((val7267
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1763
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (not x4))))
                                                                (letrec*
                                                                 ((g8020
                                                                   (if val7267
                                                                     val7267
                                                                     x1)))
                                                                 g8020))))
                                                             (if x-cnd8019
                                                               (letrec*
                                                                ((x-cnd8021
                                                                  (letrec*
                                                                   ((val7268
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1775
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (not
                                                                        x2))))
                                                                   (letrec*
                                                                    ((g8022
                                                                      (if val7268
                                                                        val7268
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             1780
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (not
                                                                           x3)))))
                                                                    g8022))))
                                                                (if x-cnd8021
                                                                  (letrec*
                                                                   ((val7269
                                                                     x4))
                                                                   (letrec*
                                                                    ((g8023
                                                                      (if val7269
                                                                        val7269
                                                                        x2)))
                                                                    g8023))
                                                                  #f))
                                                               #f))
                                                            #f))
                                                         #f))
                                                      #f))))
                                                 g8011))))
                                            g8010))))
                                       g8009))))
                                  g8008))))
                             g8007))))
                        g8006))))
                   g8005)))
               (try
                (lambda (f)
                  (letrec*
                   ((g8024
                     (letrec*
                      ((val7270
                        (begin
                          (write '(funapp 1810 33))
                          (display "\n")
                          (f #t))))
                      (letrec*
                       ((g8025
                         (if val7270
                           val7270
                           (begin
                             (write '(funapp 1811 60))
                             (display "\n")
                             (f #f)))))
                       g8025))))
                   g8024)))
               (sat-solve-7
                (lambda (p)
                  (letrec*
                   ((g8026
                     (begin
                       (write '(funapp 1817 22))
                       (display "\n")
                       (try
                        (lambda (n1)
                          (letrec*
                           ((g8027
                             (begin
                               (write '(funapp 1821 28))
                               (display "\n")
                               (try
                                (lambda (n2)
                                  (letrec*
                                   ((g8028
                                     (begin
                                       (write '(funapp 1825 34))
                                       (display "\n")
                                       (try
                                        (lambda (n3)
                                          (letrec*
                                           ((g8029
                                             (begin
                                               (write '(funapp 1829 40))
                                               (display "\n")
                                               (try
                                                (lambda (n4)
                                                  (letrec*
                                                   ((g8030
                                                     (begin
                                                       (write
                                                        '(funapp 1833 46))
                                                       (display "\n")
                                                       (try
                                                        (lambda (n5)
                                                          (letrec*
                                                           ((g8031
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1837
                                                                  52))
                                                               (display "\n")
                                                               (try
                                                                (lambda (n6)
                                                                  (letrec*
                                                                   ((g8032
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          1841
                                                                          58))
                                                                       (display
                                                                        "\n")
                                                                       (try
                                                                        (lambda (n7)
                                                                          (letrec*
                                                                           ((g8033
                                                                             (letrec*
                                                                              ((x8034
                                                                                (letrec*
                                                                                 ((x8035
                                                                                   (letrec*
                                                                                    ((x8036
                                                                                      (letrec*
                                                                                       ((x8037
                                                                                         (letrec*
                                                                                          ((x8038
                                                                                            (letrec*
                                                                                             ((x8039
                                                                                               (begin
                                                                                                 (write
                                                                                                  '(funapp
                                                                                                    1857
                                                                                                    82))
                                                                                                 (display
                                                                                                  "\n")
                                                                                                 (p
                                                                                                  n1))))
                                                                                             (begin
                                                                                               (write
                                                                                                '(funapp
                                                                                                  1859
                                                                                                  80))
                                                                                               (display
                                                                                                "\n")
                                                                                               (x8039
                                                                                                n2)))))
                                                                                          (begin
                                                                                            (write
                                                                                             '(funapp
                                                                                               1861
                                                                                               77))
                                                                                            (display
                                                                                             "\n")
                                                                                            (x8038
                                                                                             n3)))))
                                                                                       (begin
                                                                                         (write
                                                                                          '(funapp
                                                                                            1863
                                                                                            74))
                                                                                         (display
                                                                                          "\n")
                                                                                         (x8037
                                                                                          n4)))))
                                                                                    (begin
                                                                                      (write
                                                                                       '(funapp
                                                                                         1865
                                                                                         71))
                                                                                      (display
                                                                                       "\n")
                                                                                      (x8036
                                                                                       n5)))))
                                                                                 (begin
                                                                                   (write
                                                                                    '(funapp
                                                                                      1867
                                                                                      68))
                                                                                   (display
                                                                                    "\n")
                                                                                   (x8035
                                                                                    n6)))))
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   1869
                                                                                   65))
                                                                                (display
                                                                                 "\n")
                                                                                (x8034
                                                                                 n7)))))
                                                                           g8033))))))
                                                                   g8032))))))
                                                           g8031))))))
                                                   g8030))))))
                                           g8029))))))
                                   g8028))))))
                           g8027))))))
                   g8026))))
              (letrec*
               ((g8040
                 (begin
                   (write '(funapp 1878 32))
                   (display "\n")
                   (sat-solve-7 phi))))
               g8040))))
           g7438))))
       g7421)))
    g7420)))
