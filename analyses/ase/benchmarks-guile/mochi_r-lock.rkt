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
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7443
                        g7264
                        (begin
                          (write '(blame g7262 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7442)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7445
                        g7267
                        (begin
                          (write '(blame g7265 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7444)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7447
                        g7270
                        (begin
                          (write '(blame g7268 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7446)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7450 #t)) g7450)) g7273))))
                      (if x-cnd7449
                        g7273
                        (begin
                          (write '(blame g7271 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7448)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7453 #t)) g7453)) g7276))))
                      (if x-cnd7452
                        g7276
                        (begin
                          (write '(blame g7274 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7451)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7455
                        g7279
                        (begin
                          (write '(blame g7277 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7454)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7457
                        g7282
                        (begin
                          (write '(blame g7280 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7456)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7459
                        g7285
                        (begin
                          (write '(blame g7283 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7458)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7461
                        g7288
                        (begin
                          (write '(blame g7286 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7460)))
               (string?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x-cnd7463
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7291))))
                      (if x-cnd7463
                        g7291
                        (begin
                          (write '(blame g7289 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7462)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7464
                     (lambda (k j v)
                       (letrec*
                        ((g7465
                          (letrec*
                           ((x-cnd7466
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7466
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7465))))
                   g7464)))
               (list-of
                (lambda (contract)
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
                               (null? v))))
                           (if x-cnd7469
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7473
                                (letrec*
                                 ((x7474
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7474))))
                               (x7470
                                (letrec*
                                 ((x7472
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7471
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7472 k j x7471)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7473 x7470)))))))
                        g7468))))
                   g7467)))
               (any? (lambda (v) (letrec* ((g7475 #t)) g7475)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x7477
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7477)))))
                   g7476)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7478
                     (letrec*
                      ((x-cnd7479
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7480
                                (letrec*
                                 ((x7481
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7481)))))
                              g7480))
                           g7294))))
                      (if x-cnd7479
                        g7294
                        (begin
                          (write '(blame g7292 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7478)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7482
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7483
                          (letrec*
                           ((x-cnd7484
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7485
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7485))
                                g7297))))
                           (if x-cnd7484
                             g7297
                             (begin
                               (write '(blame g7295 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7483))))
                   g7482)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7486
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7487
                          (letrec*
                           ((x-cnd7488
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7489
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7489))
                                g7300))))
                           (if x-cnd7488
                             g7300
                             (begin
                               (write '(blame g7298 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7487))))
                   g7486)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7490
                     (lambda (g7301 g7302 g7303)
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
                                       (orig-< v n))))
                                   g7493))
                                g7303))))
                           (if x-cnd7492
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7491))))
                   g7490)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7494
                     (lambda (g7304 g7305 g7306)
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
                                       (orig-<= v n))))
                                   g7497))
                                g7306))))
                           (if x-cnd7496
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7495))))
                   g7494)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7498
                     (lambda (g7307 g7308 g7309)
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
                                       (orig-= v n))))
                                   g7501))
                                g7309))))
                           (if x-cnd7500
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7499))))
                   g7498)))
               (meta (lambda (v) (letrec* ((g7502 v)) g7502)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7503
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7505
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7506
                                 (letrec*
                                  ((x7507
                                    (letrec*
                                     ((x7509
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7508
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7316 x7509 x7508)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7507)))))
                               g7506))))
                          g7505))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7504
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7504))))))
                  g7503)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7510
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7512
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7513
                                 (letrec*
                                  ((x7514
                                    (letrec*
                                     ((x7516
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7515
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7323 x7516 x7515)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7514)))))
                               g7513))))
                          g7512))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7511
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7511))))))
                  g7510)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7517
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7519
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7520
                                 (letrec*
                                  ((x7521
                                    (letrec*
                                     ((x7523
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7522
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7330 x7523 x7522)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7521)))))
                               g7520))))
                          g7519))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7518
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7518))))))
                  g7517)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7524
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7526
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7527
                                 (letrec*
                                  ((x7528
                                    (letrec*
                                     ((x7530
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7529
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7337 x7530 x7529)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7528)))))
                               g7527))))
                          g7526))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7525
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7525))))))
                  g7524)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7531
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7533
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7534
                                 (letrec*
                                  ((x7535
                                    (letrec*
                                     ((x7537
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7536
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7344 x7537 x7536)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7535)))))
                               g7534))))
                          g7533))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7532
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7532))))))
                  g7531)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7538
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7540
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7541
                                 (letrec*
                                  ((x7542
                                    (letrec*
                                     ((x7544
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7543
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7351 x7544 x7543)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7542)))))
                               g7541))))
                          g7540))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7539
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7539))))))
                  g7538)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7545
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7547
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7548
                                 (letrec*
                                  ((x7549
                                    (letrec*
                                     ((x7551
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7550
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7358 x7551 x7550)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7549)))))
                               g7548))))
                          g7547))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7546
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7546))))))
                  g7545)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7552
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7554
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7555
                                 (letrec*
                                  ((x7556
                                    (letrec*
                                     ((x7558
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7557
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7365 x7558 x7557)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7556)))))
                               g7555))))
                          g7554))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7553
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7553))))))
                  g7552)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7559
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7561
                            (lambda (g7368)
                              (letrec*
                               ((g7562
                                 (letrec*
                                  ((x7563
                                    (letrec*
                                     ((x7564
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7371 x7564)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7563)))))
                               g7562))))
                          g7561))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7560
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7560))))))
                  g7559)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7565
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7567
                            (lambda (g7374)
                              (letrec*
                               ((g7568
                                 (letrec*
                                  ((x7569
                                    (letrec*
                                     ((x7570
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7377 x7570)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7569)))))
                               g7568))))
                          g7567))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7566
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7566))))))
                  g7565)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7571
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7573
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7574
                                 (letrec*
                                  ((x7575
                                    (letrec*
                                     ((x7577
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7576
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7384 x7577 x7576)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7575)))))
                               g7574))))
                          g7573))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7572
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7572))))))
                  g7571)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7578
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7580
                            (lambda (g7387)
                              (letrec*
                               ((g7581
                                 (letrec*
                                  ((x7582
                                    (letrec*
                                     ((x7583
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7390 x7583)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7582)))))
                               g7581))))
                          g7580))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7579
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7579))))))
                  g7578)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7584
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7586
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7587
                                 (letrec*
                                  ((x7588
                                    (letrec*
                                     ((x7590
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7589
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7397 x7590 x7589)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7588)))))
                               g7587))))
                          g7586))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7585
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7585))))))
                  g7584)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7591
                     (letrec*
                      ((x7592
                        (letrec*
                         ((x7593
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7593)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7592)))))
                   g7591)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7597))))
                    (g7595
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7598))))
                    (g7596
                     (letrec*
                      ((x-cnd7599
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7599
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7602
                           (letrec*
                            ((x7603
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7603))))
                          (x7600
                           (letrec*
                            ((x7601
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7601)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7602 x7600)))))))
                   g7596)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7605
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7605)))))
                   g7604)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7607
                        (letrec*
                         ((x7608
                           (letrec*
                            ((x7609
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7609)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7608)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7607)))))
                   g7606)))
               (cdadar
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
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7613)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7612)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7611)))))
                   g7610)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7617))))
                    (g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7618))))
                    (g7616
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
                       ((g7619
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7620 res))
                       g7620))))
                   g7616)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7622
                        (letrec*
                         ((x7623
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7623)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7622)))))
                   g7621)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7625
                        (letrec*
                         ((x7626
                           (letrec*
                            ((x7627
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7627)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7626)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7625)))))
                   g7624)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7630))))
                    (g7629
                     (letrec*
                      ((x-cnd7631
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7631
                        #f
                        (letrec*
                         ((x-cnd7632
                           (letrec*
                            ((x7633
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7633 k)))))
                         (if x-cnd7632
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7634)))))))))
                   g7629)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7636)))))
                   g7635)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7639))))
                    (g7638
                     (letrec*
                      ((x-cnd7640
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7640
                        ""
                        (letrec*
                         ((x7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7644))))
                          (x7641
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7642)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7643 x7641)))))))
                   g7638)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7648))))
                    (g7646
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7649))))
                    (g7647
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7650
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7650))))
                   g7647)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7652
                        (letrec*
                         ((x7653
                           (letrec*
                            ((x7654
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7654)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7653)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7652)))))
                   g7651)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7658))))
                    (g7656
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((x-cnd7660
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7660
                        x
                        (letrec*
                         ((x7662
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7661
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7662 x7661)))))))
                   g7657)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7663
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7663)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x-cnd7665
                        (letrec*
                         ((x7666 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7666)))))
                      (if x-cnd7665
                        (letrec*
                         ((x7667 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7667)))
                        #f))))
                   g7664)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x7669
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7669 9)))))
                      (letrec*
                       ((g7670
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x7671
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7671 10)))))
                            (letrec*
                             ((g7672
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x7673
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7673 32))))))
                             g7672)))))
                       g7670))))
                   g7668)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7675
                        (letrec*
                         ((x7676
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7676)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7675)))))
                   g7674)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7679))))
                    (g7678
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7678)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7680 #f)) g7680)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((x7682
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7682)))))
                   g7681)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x7685
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7685))))
                    (g7684
                     (letrec*
                      ((x-cnd7686
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7686
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7684)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7688
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd7689
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7689
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7690
                               (if val7252
                                 val7252
                                 (letrec*
                                  ((val7253
                                    (letrec*
                                     ((x-cnd7691
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7691
                                       (letrec*
                                        ((x-cnd7692
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7692
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7693
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd7694
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7694
                                             (letrec*
                                              ((x-cnd7695
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7695
                                                (letrec*
                                                 ((x-cnd7696
                                                   (letrec*
                                                    ((x7698
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7697
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7698 x7697)))))
                                                 (if x-cnd7696
                                                   (letrec*
                                                    ((x7700
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7699
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7700 x7699)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7701
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd7702
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7702
                                                (letrec*
                                                 ((x-cnd7703
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7703
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7704
                                                       (letrec*
                                                        ((x-cnd7705
                                                          (letrec*
                                                           ((x7706
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
                                                             (= x7706 n)))))
                                                        (if x-cnd7705
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7707
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
                                                                    ((g7708
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd7709
                                                                           (letrec*
                                                                            ((x7711
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
                                                                             (x7710
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
                                                                               x7711
                                                                               x7710)))))
                                                                         (if x-cnd7709
                                                                           (letrec*
                                                                            ((x7712
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
                                                                               x7712)))
                                                                           #f)))))
                                                                    g7708))))
                                                                g7707))))
                                                           (letrec*
                                                            ((g7713
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7713))
                                                          #f))))
                                                     g7704))
                                                   #f))
                                                #f)))))
                                         g7701)))))
                                   g7693)))))
                             g7690)))))
                       g7688))))
                   g7687)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7714
                     (letrec*
                      ((x7715
                        (letrec*
                         ((x7716
                           (letrec*
                            ((x7717
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7717)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7716)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7715)))))
                   g7714)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7718
                     (letrec*
                      ((x7719
                        (letrec*
                         ((x7720
                           (letrec*
                            ((x7721
                              (begin
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7721)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7720)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7719)))))
                   g7718)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7722
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7722)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7723
                     (letrec*
                      ((x7726
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7726))))
                    (g7724
                     (letrec*
                      ((x7727
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7727))))
                    (g7725
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
                       ((g7728
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7729 res))
                       g7729))))
                   g7725)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7730
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7730)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7734
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7734))))
                    (g7732
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7735))))
                    (g7733
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7736
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7736))))
                   g7733)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7738
                        (letrec*
                         ((x7739
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7739)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7738)))))
                   g7737)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (letrec*
                         ((x7742
                           (letrec*
                            ((x7743
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7743)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7742)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7741)))))
                   g7740)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (letrec*
                         ((x7746
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7746)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7745)))))
                   g7744)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (letrec*
                         ((x7749
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7749)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7748)))))
                   g7747)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7753))))
                    (g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7754))))
                    (g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7755)))))
                   g7752)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (letrec*
                         ((x7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7759)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7758)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7757)))))
                   g7756)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7762))))
                    (g7761
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7761)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7763
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7763)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7766)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7765)))))
                   g7764)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7767
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7767)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7770))))
                    (g7769
                     (letrec*
                      ((x-cnd7771
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7771
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7775))))
                          (x7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7773)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7774 x7772)))))))
                   g7769)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7777
                        (letrec*
                         ((x7778
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7779)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7778)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (cddadr
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
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7783)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7782)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7781)))))
                   g7780)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7786))))
                    (g7785
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7787)))))
                   g7785)))
               (caadar
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
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7791)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7790)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7789)))))
                   g7788)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7795))))
                    (g7793
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7796))))
                    (g7794
                     (letrec*
                      ((x-cnd7797
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7797
                        (letrec*
                         ((g7798
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7798)
                        (letrec*
                         ((x-cnd7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7800)))))
                         (if x-cnd7799
                           (letrec*
                            ((g7801
                              (letrec*
                               ((x7802
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7802)))))
                            g7801)
                           (letrec*
                            ((x-cnd7803
                              (letrec*
                               ((x7804
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7804)))))
                            (if x-cnd7803
                              (letrec*
                               ((g7805
                                 (letrec*
                                  ((x7807
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7806
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7807 x7806)))))
                               g7805)
                              (letrec*
                               ((x-cnd7808
                                 (letrec*
                                  ((x7809
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7809)))))
                               (if x-cnd7808
                                 (letrec*
                                  ((g7810
                                    (letrec*
                                     ((x7813
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7812
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7811
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7813 x7812 x7811)))))
                                  g7810)
                                 (letrec*
                                  ((x-cnd7814
                                    (letrec*
                                     ((x7815
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7815)))))
                                  (if x-cnd7814
                                    (letrec*
                                     ((g7816
                                       (letrec*
                                        ((x7820
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7819
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7818
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7817
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7820 x7819 x7818 x7817)))))
                                     g7816)
                                    (letrec*
                                     ((x-cnd7821
                                       (letrec*
                                        ((x7822
                                          (letrec*
                                           ((x7823
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7823)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7822)))))
                                     (if x-cnd7821
                                       (letrec*
                                        ((g7824
                                          (letrec*
                                           ((x7830
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7829
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7828
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7827
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7825
                                             (letrec*
                                              ((x7826
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7826)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7830
                                              x7829
                                              x7828
                                              x7827
                                              x7825)))))
                                        g7824)
                                       (letrec*
                                        ((x-cnd7831
                                          (letrec*
                                           ((x7832
                                             (letrec*
                                              ((x7833
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7833)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7832)))))
                                        (if x-cnd7831
                                          (letrec*
                                           ((g7834
                                             (letrec*
                                              ((x7842
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7841
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7840
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7839
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7837
                                                (letrec*
                                                 ((x7838
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7838))))
                                               (x7835
                                                (letrec*
                                                 ((x7836
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7836)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7842
                                                 x7841
                                                 x7840
                                                 x7839
                                                 x7837
                                                 x7835)))))
                                           g7834)
                                          (letrec*
                                           ((x-cnd7843
                                             (letrec*
                                              ((x7844
                                                (letrec*
                                                 ((x7845
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7845)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7844)))))
                                           (if x-cnd7843
                                             (letrec*
                                              ((g7846
                                                (letrec*
                                                 ((x7856
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7855
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7854
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7853
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7851
                                                   (letrec*
                                                    ((x7852
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7852))))
                                                  (x7849
                                                   (letrec*
                                                    ((x7850
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7850))))
                                                  (x7847
                                                   (letrec*
                                                    ((x7848
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7848)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7856
                                                    x7855
                                                    x7854
                                                    x7853
                                                    x7851
                                                    x7849
                                                    x7847)))))
                                              g7846)
                                             (letrec*
                                              ((g7857
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7857)))))))))))))))))))
                   g7794)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7860))))
                    (g7859
                     (letrec*
                      ((x-cnd7861
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7861
                        #f
                        (letrec*
                         ((x-cnd7862
                           (letrec*
                            ((x7863
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7863 e)))))
                         (if x-cnd7862
                           l
                           (letrec*
                            ((x7864
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7864)))))))))
                   g7859)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x7866
                        (letrec*
                         ((x7867
                           (letrec*
                            ((x7868
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7868)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7867)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7866)))))
                   g7865)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7870
                        (letrec*
                         ((x7871
                           (letrec*
                            ((x7872
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7872)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7871)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7870)))))
                   g7869)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7873
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7873)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x7876
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7876))))
                    (g7875
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7875)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7878
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7878))))
                   g7877)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7880
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7880)))))
                   g7879)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd7882
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7882
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7883)))
                           #f))))
                      (letrec*
                       ((g7884
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7884))))
                   g7881)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7886
                        (letrec*
                         ((x7887
                           (letrec*
                            ((x7888
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7888)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7887)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7886)))))
                   g7885)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x-cnd7890
                        (letrec*
                         ((x7891 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7891 c)))))
                      (if x-cnd7890
                        (letrec*
                         ((x7892 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7892)))
                        #f))))
                   g7889)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7895))))
                    (g7894
                     (letrec*
                      ((x-cnd7896
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7896
                        #f
                        (letrec*
                         ((x-cnd7897
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7898 k)))))
                         (if x-cnd7897
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7899)))))))))
                   g7894)))
               (not (lambda (x) (letrec* ((g7900 (if x #f #t))) g7900)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7901
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7901)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7904
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7904))))
                    (g7903
                     (letrec*
                      ((x-cnd7905
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7905
                        #f
                        (letrec*
                         ((x-cnd7906
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7907 e)))))
                         (if x-cnd7906
                           l
                           (letrec*
                            ((x7908
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7908)))))))))
                   g7903)))
               (cadaar
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
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7912)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7911)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7910)))))
                   g7909)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7915))))
                    (g7914
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7916
                             (letrec*
                              ((x-cnd7917
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7917
                                0
                                (letrec*
                                 ((x7918
                                   (letrec*
                                    ((x7919
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7919)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7918)))))))
                           g7916))))
                      (letrec*
                       ((g7920
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7920))))
                   g7914)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7924))))
                    (g7922
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7925))))
                    (g7923
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7926
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7926))))
                   g7923)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7928)))))
                   g7927)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7930
                        (letrec*
                         ((x7931
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7931)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7930)))))
                   g7929)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7934))))
                    (g7933
                     (letrec*
                      ((x-cnd7935
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7935
                        #f
                        (letrec*
                         ((x-cnd7936
                           (letrec*
                            ((x7937
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7937 k)))))
                         (if x-cnd7936
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7938
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7938)))))))))
                   g7933)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7940)))))
                   g7939)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7944))))
                    (g7942
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7945))))
                    (g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7946)))))
                   g7943)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7948
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7948))))
                   g7947)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7952))))
                    (g7950
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7953))))
                    (g7951
                     (letrec*
                      ((x-cnd7954
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7954
                        #t
                        (letrec*
                         ((x-cnd7955
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7955
                           (letrec*
                            ((g7956
                              (letrec*
                               ((x7958
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7958))))
                             (g7957
                              (letrec*
                               ((x7959
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7959)))))
                            g7957)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7951)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7962))))
                    (g7961
                     (letrec*
                      ((x-cnd7963
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7963
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7961)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7967))))
                    (g7965
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7968))))
                    (g7966
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7969
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7969))))
                   g7966)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7971
                        (letrec*
                         ((x7972
                           (letrec*
                            ((x7973
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7973)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7972)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7971)))))
                   g7970)))
               (newline (lambda () (letrec* ((g7974 #f)) g7974)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7977
                        (letrec*
                         ((x7978
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7978))))
                       (x7976
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7977 x7976)))))
                   g7975)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7983))))
                    (g7980
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7984))))
                    (g7981
                     (letrec*
                      ((x7985
                        (letrec*
                         ((x7986
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7986)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7985))))
                    (g7982
                     (letrec*
                      ((x-cnd7987
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7987
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7988
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7989 x7988)))))))
                   g7982)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x-cnd7991
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7991
                        a
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7992)))))))
                   g7990)))
               (lock (lambda (st) (letrec* ((g7993 1)) g7993)))
               (unlock (lambda (st) (letrec* ((g7994 0)) g7994)))
               (f
                (lambda (n st)
                  (letrec*
                   ((g7995
                     (letrec*
                      ((x-cnd7996
                        (begin
                          (write '(funapp 1667 35))
                          (display "\n")
                          (> n 0))))
                      (if x-cnd7996
                        (begin
                          (write '(funapp 1668 37))
                          (display "\n")
                          (lock st))
                        st))))
                   g7995)))
               (g
                (lambda (n st)
                  (letrec*
                   ((g7997
                     (letrec*
                      ((x-cnd7998
                        (begin
                          (write '(funapp 1675 35))
                          (display "\n")
                          (> n 0))))
                      (if x-cnd7998
                        (begin
                          (write '(funapp 1676 37))
                          (display "\n")
                          (unlock st))
                        st))))
                   g7997)))
               (main
                (lambda (n)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x8000
                        (begin
                          (write '(funapp 1681 45))
                          (display "\n")
                          (f n 0))))
                      (begin
                        (write '(funapp 1681 55))
                        (display "\n")
                        (g n x8000)))))
                   g7999))))
              (letrec*
               ((g8001
                 (begin
                   (write '(funapp 1685 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1686 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8003
                          (letrec*
                           ((xj7398
                             (begin
                               (write '(funapp 1690 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1690 37))
                                  (display "\n")
                                  'module))))
                            (xk7399
                             (begin
                               (write '(funapp 1690 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1690 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8004
                              (begin
                                (write '(funapp 1693 27))
                                (display "\n")
                                ((lambda (j7401 k7402 f7403)
                                   (letrec*
                                    ((g8005
                                      (lambda (g7400)
                                        (letrec*
                                         ((g8006
                                           (letrec*
                                            ((x8007
                                              (letrec*
                                               ((x8008
                                                 (begin
                                                   (write '(funapp 1703 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7401
                                                    k7402
                                                    g7400))))
                                               (begin
                                                 (write '(funapp 1704 42))
                                                 (display "\n")
                                                 (f7403 x8008)))))
                                            (begin
                                              (write '(funapp 1705 39))
                                              (display "\n")
                                              ((lambda (g7407 g7408 g7409)
                                                 (letrec*
                                                  ((g8009
                                                    (letrec*
                                                     ((x-cnd8010
                                                       (begin
                                                         (write
                                                          '(funapp 1710 48))
                                                         (display "\n")
                                                         ((lambda (v7406)
                                                            (letrec*
                                                             ((g8011
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1712
                                                                    60))
                                                                 (display "\n")
                                                                 (eq?
                                                                  0
                                                                  v7406))))
                                                             g8011))
                                                          g7409))))
                                                     (if x-cnd8010
                                                       g7409
                                                       (begin
                                                         (write
                                                          '(blame
                                                            g7407
                                                            1717
                                                            47))
                                                         (display "\n")
                                                         (error
                                                          (format
                                                           "contract violation, blaming ~a~%"
                                                           g7407)))))))
                                                  g8009))
                                               j7401
                                               k7402
                                               x8007)))))
                                         g8006))))
                                    g8005))
                                 xj7398
                                 xk7399
                                 main))))
                            g8004)))
                         (x8002 (input)))
                        (begin
                          (write '(funapp 1732 21))
                          (display "\n")
                          (x8003 x8002)))))))))
               g8001))))
           g7438))))
       g7421)))
    g7420)))
