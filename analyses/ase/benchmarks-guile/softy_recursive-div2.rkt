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
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x-cnd7440
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7440
                        g7264
                        (begin
                          (write '(blame g7262 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7439)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7441
                     (letrec*
                      ((x-cnd7442
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7442
                        g7267
                        (begin
                          (write '(blame g7265 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7441)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x-cnd7444
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7444
                        g7270
                        (begin
                          (write '(blame g7268 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7443)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x-cnd7446
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7447 #t)) g7447)) g7273))))
                      (if x-cnd7446
                        g7273
                        (begin
                          (write '(blame g7271 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7445)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7450 #t)) g7450)) g7276))))
                      (if x-cnd7449
                        g7276
                        (begin
                          (write '(blame g7274 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7448)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7452
                        g7279
                        (begin
                          (write '(blame g7277 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7451)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7454
                        g7282
                        (begin
                          (write '(blame g7280 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7453)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7456
                        g7285
                        (begin
                          (write '(blame g7283 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7455)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7458
                        g7288
                        (begin
                          (write '(blame g7286 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7457)))
               (string?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x-cnd7460
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7291))))
                      (if x-cnd7460
                        g7291
                        (begin
                          (write '(blame g7289 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7459)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7461
                     (lambda (k j v)
                       (letrec*
                        ((g7462
                          (letrec*
                           ((x-cnd7463
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7463
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7462))))
                   g7461)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7464
                     (lambda (k j v)
                       (letrec*
                        ((g7465
                          (letrec*
                           ((x-cnd7466
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7466
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7470
                                (letrec*
                                 ((x7471
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7471))))
                               (x7467
                                (letrec*
                                 ((x7469
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7468
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7469 k j x7468)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7470 x7467)))))))
                        g7465))))
                   g7464)))
               (any? (lambda (v) (letrec* ((g7472 #t)) g7472)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x7474
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7474)))))
                   g7473)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7475
                     (letrec*
                      ((x-cnd7476
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7477
                                (letrec*
                                 ((x7478
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7478)))))
                              g7477))
                           g7294))))
                      (if x-cnd7476
                        g7294
                        (begin
                          (write '(blame g7292 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7475)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7479
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7480
                          (letrec*
                           ((x-cnd7481
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7482
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7482))
                                g7297))))
                           (if x-cnd7481
                             g7297
                             (begin
                               (write '(blame g7295 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7480))))
                   g7479)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7483
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7484
                          (letrec*
                           ((x-cnd7485
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7486
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7486))
                                g7300))))
                           (if x-cnd7485
                             g7300
                             (begin
                               (write '(blame g7298 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7484))))
                   g7483)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7487
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7488
                          (letrec*
                           ((x-cnd7489
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7490
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7490))
                                g7303))))
                           (if x-cnd7489
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7488))))
                   g7487)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7491
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7492
                          (letrec*
                           ((x-cnd7493
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7494
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7494))
                                g7306))))
                           (if x-cnd7493
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7492))))
                   g7491)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7495
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7496
                          (letrec*
                           ((x-cnd7497
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7498
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7498))
                                g7309))))
                           (if x-cnd7497
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7496))))
                   g7495)))
               (meta (lambda (v) (letrec* ((g7499 v)) g7499)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7500
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7502
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7503
                                 (letrec*
                                  ((x7504
                                    (letrec*
                                     ((x7506
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7505
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7316 x7506 x7505)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7504)))))
                               g7503))))
                          g7502))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7501
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7501))))))
                  g7500)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7507
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7509
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7510
                                 (letrec*
                                  ((x7511
                                    (letrec*
                                     ((x7513
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7512
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7323 x7513 x7512)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7511)))))
                               g7510))))
                          g7509))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7508
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7508))))))
                  g7507)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7514
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7516
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7517
                                 (letrec*
                                  ((x7518
                                    (letrec*
                                     ((x7520
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7519
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7330 x7520 x7519)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7518)))))
                               g7517))))
                          g7516))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7515
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7515))))))
                  g7514)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7521
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7523
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7524
                                 (letrec*
                                  ((x7525
                                    (letrec*
                                     ((x7527
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7526
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7337 x7527 x7526)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7525)))))
                               g7524))))
                          g7523))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7522
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7522))))))
                  g7521)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7528
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7530
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7531
                                 (letrec*
                                  ((x7532
                                    (letrec*
                                     ((x7534
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7533
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7344 x7534 x7533)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7532)))))
                               g7531))))
                          g7530))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7529
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7529))))))
                  g7528)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7535
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7537
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7538
                                 (letrec*
                                  ((x7539
                                    (letrec*
                                     ((x7541
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7540
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7351 x7541 x7540)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7539)))))
                               g7538))))
                          g7537))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7536
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7536))))))
                  g7535)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7542
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7544
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7545
                                 (letrec*
                                  ((x7546
                                    (letrec*
                                     ((x7548
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7547
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7358 x7548 x7547)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7546)))))
                               g7545))))
                          g7544))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7543
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7543))))))
                  g7542)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7549
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7551
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7552
                                 (letrec*
                                  ((x7553
                                    (letrec*
                                     ((x7555
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7554
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7365 x7555 x7554)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7553)))))
                               g7552))))
                          g7551))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7550
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7550))))))
                  g7549)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7556
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7558
                            (lambda (g7368)
                              (letrec*
                               ((g7559
                                 (letrec*
                                  ((x7560
                                    (letrec*
                                     ((x7561
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7371 x7561)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7560)))))
                               g7559))))
                          g7558))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7557
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7557))))))
                  g7556)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7562
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7564
                            (lambda (g7374)
                              (letrec*
                               ((g7565
                                 (letrec*
                                  ((x7566
                                    (letrec*
                                     ((x7567
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7377 x7567)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7566)))))
                               g7565))))
                          g7564))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7563
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7563))))))
                  g7562)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7568
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7570
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7571
                                 (letrec*
                                  ((x7572
                                    (letrec*
                                     ((x7574
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7573
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7384 x7574 x7573)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7572)))))
                               g7571))))
                          g7570))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7569
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7569))))))
                  g7568)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7575
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7577
                            (lambda (g7387)
                              (letrec*
                               ((g7578
                                 (letrec*
                                  ((x7579
                                    (letrec*
                                     ((x7580
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7390 x7580)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7579)))))
                               g7578))))
                          g7577))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7576
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7576))))))
                  g7575)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7581
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7583
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7584
                                 (letrec*
                                  ((x7585
                                    (letrec*
                                     ((x7587
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7586
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7397 x7587 x7586)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7585)))))
                               g7584))))
                          g7583))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7582
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7582))))))
                  g7581)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7588
                     (letrec*
                      ((x7589
                        (letrec*
                         ((x7590
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7590)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7589)))))
                   g7588)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7591
                     (letrec*
                      ((x7594
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7594))))
                    (g7592
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7595))))
                    (g7593
                     (letrec*
                      ((x-cnd7596
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7596
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7599
                           (letrec*
                            ((x7600
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7600))))
                          (x7597
                           (letrec*
                            ((x7598
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7598)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7599 x7597)))))))
                   g7593)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7602
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7602)))))
                   g7601)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7604
                        (letrec*
                         ((x7605
                           (letrec*
                            ((x7606
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7606)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7605)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7604)))))
                   g7603)))
               (cdadar
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
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7610)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7609)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7608)))))
                   g7607)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7614))))
                    (g7612
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7615))))
                    (g7613
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
                       ((g7616
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7617 res))
                       g7617))))
                   g7613)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7619
                        (letrec*
                         ((x7620
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7620)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7619)))))
                   g7618)))
               (cdaadr
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
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7624)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7623)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7622)))))
                   g7621)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7627))))
                    (g7626
                     (letrec*
                      ((x-cnd7628
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7628
                        #f
                        (letrec*
                         ((x-cnd7629
                           (letrec*
                            ((x7630
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7630 k)))))
                         (if x-cnd7629
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7631
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7631)))))))))
                   g7626)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7633)))))
                   g7632)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7636))))
                    (g7635
                     (letrec*
                      ((x-cnd7637
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7637
                        ""
                        (letrec*
                         ((x7640
                           (letrec*
                            ((x7641
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7641))))
                          (x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7639)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7640 x7638)))))))
                   g7635)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7645))))
                    (g7643
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7646))))
                    (g7644
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7647
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7647))))
                   g7644)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7649
                        (letrec*
                         ((x7650
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7651)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7650)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7649)))))
                   g7648)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7655))))
                    (g7653
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7656))))
                    (g7654
                     (letrec*
                      ((x-cnd7657
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7657
                        x
                        (letrec*
                         ((x7659
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7658
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7659 x7658)))))))
                   g7654)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7660
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7660)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x-cnd7662
                        (letrec*
                         ((x7663 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7663)))))
                      (if x-cnd7662
                        (letrec*
                         ((x7664 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7664)))
                        #f))))
                   g7661)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x7666
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7666 9)))))
                      (letrec*
                       ((g7667
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x7668
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7668 10)))))
                            (letrec*
                             ((g7669
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x7670
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7670 32))))))
                             g7669)))))
                       g7667))))
                   g7665)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7672
                        (letrec*
                         ((x7673
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7673)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7672)))))
                   g7671)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7676))))
                    (g7675
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7675)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7677 #f)) g7677)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7679)))))
                   g7678)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7682
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7682))))
                    (g7681
                     (letrec*
                      ((x-cnd7683
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7683
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7681)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7685
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd7686
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7686
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7687
                               (if val7252
                                 val7252
                                 (letrec*
                                  ((val7253
                                    (letrec*
                                     ((x-cnd7688
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7688
                                       (letrec*
                                        ((x-cnd7689
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7689
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7690
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd7691
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7691
                                             (letrec*
                                              ((x-cnd7692
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7692
                                                (letrec*
                                                 ((x-cnd7693
                                                   (letrec*
                                                    ((x7695
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7694
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7695 x7694)))))
                                                 (if x-cnd7693
                                                   (letrec*
                                                    ((x7697
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7696
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7697 x7696)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7698
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd7699
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7699
                                                (letrec*
                                                 ((x-cnd7700
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7700
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7701
                                                       (letrec*
                                                        ((x-cnd7702
                                                          (letrec*
                                                           ((x7703
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
                                                             (= x7703 n)))))
                                                        (if x-cnd7702
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7704
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
                                                                    ((g7705
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd7706
                                                                           (letrec*
                                                                            ((x7708
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
                                                                             (x7707
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
                                                                               x7708
                                                                               x7707)))))
                                                                         (if x-cnd7706
                                                                           (letrec*
                                                                            ((x7709
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
                                                                               x7709)))
                                                                           #f)))))
                                                                    g7705))))
                                                                g7704))))
                                                           (letrec*
                                                            ((g7710
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7710))
                                                          #f))))
                                                     g7701))
                                                   #f))
                                                #f)))))
                                         g7698)))))
                                   g7690)))))
                             g7687)))))
                       g7685))))
                   g7684)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7711
                     (letrec*
                      ((x7712
                        (letrec*
                         ((x7713
                           (letrec*
                            ((x7714
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7714)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7713)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7712)))))
                   g7711)))
               (caaddr
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
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7718)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7717)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7716)))))
                   g7715)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7719
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7719)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x7723
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7723))))
                    (g7721
                     (letrec*
                      ((x7724
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7724))))
                    (g7722
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
                       ((g7725
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7726 res))
                       g7726))))
                   g7722)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7727
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7727)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7731
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7731))))
                    (g7729
                     (letrec*
                      ((x7732
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7732))))
                    (g7730
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7733
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7733))))
                   g7730)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7735
                        (letrec*
                         ((x7736
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7736)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7735)))))
                   g7734)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7738
                        (letrec*
                         ((x7739
                           (letrec*
                            ((x7740
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7740)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7739)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7738)))))
                   g7737)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7742
                        (letrec*
                         ((x7743
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7743)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7742)))))
                   g7741)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (letrec*
                         ((x7746
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7746)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7745)))))
                   g7744)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7750))))
                    (g7748
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7751))))
                    (g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7752)))))
                   g7749)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7754
                        (letrec*
                         ((x7755
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7756)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7755)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7754)))))
                   g7753)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7759))))
                    (g7758
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7758)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7760
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7760)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7762
                        (letrec*
                         ((x7763
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7763)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7762)))))
                   g7761)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7764
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7764)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7767))))
                    (g7766
                     (letrec*
                      ((x-cnd7768
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7768
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7771
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7772))))
                          (x7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7770)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7771 x7769)))))))
                   g7766)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7774
                        (letrec*
                         ((x7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7776)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7775)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7774)))))
                   g7773)))
               (cddadr
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
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7780)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7779)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7778)))))
                   g7777)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7783))))
                    (g7782
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7784)))))
                   g7782)))
               (caadar
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
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7788)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7787)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7786)))))
                   g7785)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7792))))
                    (g7790
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7793))))
                    (g7791
                     (letrec*
                      ((x-cnd7794
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7794
                        (letrec*
                         ((g7795
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7795)
                        (letrec*
                         ((x-cnd7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7797)))))
                         (if x-cnd7796
                           (letrec*
                            ((g7798
                              (letrec*
                               ((x7799
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7799)))))
                            g7798)
                           (letrec*
                            ((x-cnd7800
                              (letrec*
                               ((x7801
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7801)))))
                            (if x-cnd7800
                              (letrec*
                               ((g7802
                                 (letrec*
                                  ((x7804
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7803
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7804 x7803)))))
                               g7802)
                              (letrec*
                               ((x-cnd7805
                                 (letrec*
                                  ((x7806
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7806)))))
                               (if x-cnd7805
                                 (letrec*
                                  ((g7807
                                    (letrec*
                                     ((x7810
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7809
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7808
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7810 x7809 x7808)))))
                                  g7807)
                                 (letrec*
                                  ((x-cnd7811
                                    (letrec*
                                     ((x7812
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7812)))))
                                  (if x-cnd7811
                                    (letrec*
                                     ((g7813
                                       (letrec*
                                        ((x7817
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7816
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7815
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7814
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7817 x7816 x7815 x7814)))))
                                     g7813)
                                    (letrec*
                                     ((x-cnd7818
                                       (letrec*
                                        ((x7819
                                          (letrec*
                                           ((x7820
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7820)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7819)))))
                                     (if x-cnd7818
                                       (letrec*
                                        ((g7821
                                          (letrec*
                                           ((x7827
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7826
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7825
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7824
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7822
                                             (letrec*
                                              ((x7823
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7823)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7827
                                              x7826
                                              x7825
                                              x7824
                                              x7822)))))
                                        g7821)
                                       (letrec*
                                        ((x-cnd7828
                                          (letrec*
                                           ((x7829
                                             (letrec*
                                              ((x7830
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7830)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7829)))))
                                        (if x-cnd7828
                                          (letrec*
                                           ((g7831
                                             (letrec*
                                              ((x7839
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7838
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7837
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7836
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7834
                                                (letrec*
                                                 ((x7835
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7835))))
                                               (x7832
                                                (letrec*
                                                 ((x7833
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7833)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7839
                                                 x7838
                                                 x7837
                                                 x7836
                                                 x7834
                                                 x7832)))))
                                           g7831)
                                          (letrec*
                                           ((x-cnd7840
                                             (letrec*
                                              ((x7841
                                                (letrec*
                                                 ((x7842
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7842)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7841)))))
                                           (if x-cnd7840
                                             (letrec*
                                              ((g7843
                                                (letrec*
                                                 ((x7853
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7852
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7851
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7850
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7848
                                                   (letrec*
                                                    ((x7849
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7849))))
                                                  (x7846
                                                   (letrec*
                                                    ((x7847
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7847))))
                                                  (x7844
                                                   (letrec*
                                                    ((x7845
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7845)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7853
                                                    x7852
                                                    x7851
                                                    x7850
                                                    x7848
                                                    x7846
                                                    x7844)))))
                                              g7843)
                                             (letrec*
                                              ((g7854
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7854)))))))))))))))))))
                   g7791)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7857))))
                    (g7856
                     (letrec*
                      ((x-cnd7858
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7858
                        #f
                        (letrec*
                         ((x-cnd7859
                           (letrec*
                            ((x7860
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7860 e)))))
                         (if x-cnd7859
                           l
                           (letrec*
                            ((x7861
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7861)))))))))
                   g7856)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((x7863
                        (letrec*
                         ((x7864
                           (letrec*
                            ((x7865
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7865)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7864)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7863)))))
                   g7862)))
               (cadddr
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
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7869)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7868)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7867)))))
                   g7866)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7870
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7870)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7873))))
                    (g7872
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7872)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7875
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7875))))
                   g7874)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x7877
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7877)))))
                   g7876)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd7879
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7879
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7880)))
                           #f))))
                      (letrec*
                       ((g7881
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7881))))
                   g7878)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7883
                        (letrec*
                         ((x7884
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7885)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7884)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7883)))))
                   g7882)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x-cnd7887
                        (letrec*
                         ((x7888 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7888 c)))))
                      (if x-cnd7887
                        (letrec*
                         ((x7889 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7889)))
                        #f))))
                   g7886)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x7892
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7892))))
                    (g7891
                     (letrec*
                      ((x-cnd7893
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7893
                        #f
                        (letrec*
                         ((x-cnd7894
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7895 k)))))
                         (if x-cnd7894
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7896
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7896)))))))))
                   g7891)))
               (not (lambda (x) (letrec* ((g7897 (if x #f #t))) g7897)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7898
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7898)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7901))))
                    (g7900
                     (letrec*
                      ((x-cnd7902
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7902
                        #f
                        (letrec*
                         ((x-cnd7903
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7904 e)))))
                         (if x-cnd7903
                           l
                           (letrec*
                            ((x7905
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7905)))))))))
                   g7900)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7907
                        (letrec*
                         ((x7908
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7909)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7908)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7907)))))
                   g7906)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7910
                     (letrec*
                      ((x7912
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7912))))
                    (g7911
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7913
                             (letrec*
                              ((x-cnd7914
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7914
                                0
                                (letrec*
                                 ((x7915
                                   (letrec*
                                    ((x7916
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7916)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7915)))))))
                           g7913))))
                      (letrec*
                       ((g7917
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7917))))
                   g7911)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7921))))
                    (g7919
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7922))))
                    (g7920
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7923
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7923))))
                   g7920)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7925)))))
                   g7924)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7927
                        (letrec*
                         ((x7928
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7928)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7927)))))
                   g7926)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7931))))
                    (g7930
                     (letrec*
                      ((x-cnd7932
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7932
                        #f
                        (letrec*
                         ((x-cnd7933
                           (letrec*
                            ((x7934
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7934 k)))))
                         (if x-cnd7933
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7935
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7935)))))))))
                   g7930)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7937)))))
                   g7936)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7941))))
                    (g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7942))))
                    (g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7943)))))
                   g7940)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7945
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7945))))
                   g7944)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7949))))
                    (g7947
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7950))))
                    (g7948
                     (letrec*
                      ((x-cnd7951
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7951
                        #t
                        (letrec*
                         ((x-cnd7952
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7952
                           (letrec*
                            ((g7953
                              (letrec*
                               ((x7955
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7955))))
                             (g7954
                              (letrec*
                               ((x7956
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7956)))))
                            g7954)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7948)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7959))))
                    (g7958
                     (letrec*
                      ((x-cnd7960
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7960
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7958)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7964))))
                    (g7962
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7965))))
                    (g7963
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7966
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7966))))
                   g7963)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((x7968
                        (letrec*
                         ((x7969
                           (letrec*
                            ((x7970
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7970)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7969)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7968)))))
                   g7967)))
               (newline (lambda () (letrec* ((g7971 #f)) g7971)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7974
                        (letrec*
                         ((x7975
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7975))))
                       (x7973
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7974 x7973)))))
                   g7972)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7980))))
                    (g7977
                     (letrec*
                      ((x7981
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7981))))
                    (g7978
                     (letrec*
                      ((x7982
                        (letrec*
                         ((x7983
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7983)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7982))))
                    (g7979
                     (letrec*
                      ((x-cnd7984
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7984
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7986
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7985
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7986 x7985)))))))
                   g7979)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7987
                     (letrec*
                      ((x-cnd7988
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7988
                        a
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7989)))))))
                   g7987)))
               (recursive-div2
                (lambda (l)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x-cnd7991
                        (begin
                          (write '(funapp 1665 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7991
                        empty
                        (letrec*
                         ((x7995
                           (begin
                             (write '(funapp 1669 34))
                             (display "\n")
                             (car l)))
                          (x7992
                           (letrec*
                            ((x7993
                              (letrec*
                               ((x7994
                                 (begin
                                   (write '(funapp 1672 54))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1672 64))
                                 (display "\n")
                                 (cdr x7994)))))
                            (begin
                              (write '(funapp 1673 29))
                              (display "\n")
                              (recursive-div2 x7993)))))
                         (begin
                           (write '(funapp 1674 26))
                           (display "\n")
                           (cons x7995 x7992)))))))
                   g7990)))
               (even-list/c
                (lambda (g7398 g7399 g7400)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x-cnd7997
                        (begin
                          (write '(funapp 1682 25))
                          (display "\n")
                          ((lambda ()
                             (letrec*
                              ((g7998
                                (letrec*
                                 ((x7999
                                   (letrec*
                                    ((x8000
                                      (begin
                                        (write '(funapp 1688 43))
                                        (display "\n")
                                        (cons/c any/c even-list/c))))
                                    (begin
                                      (write '(funapp 1689 35))
                                      (display "\n")
                                      (cons/c any/c x8000)))))
                                 (begin
                                   (write '(funapp 1690 32))
                                   (display "\n")
                                   (or/c null? x7999)))))
                              g7998))
                           g7400))))
                      (if x-cnd7997
                        g7400
                        (begin
                          (write '(blame g7398 1695 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7398)))))))
                   g7996))))
              (letrec*
               ((g8001
                 (begin
                   (write '(funapp 1704 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1705 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8003
                          (letrec*
                           ((xj7401
                             (begin
                               (write '(funapp 1709 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1709 37))
                                  (display "\n")
                                  'module))))
                            (xk7402
                             (begin
                               (write '(funapp 1709 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1709 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8004
                              (begin
                                (write '(funapp 1712 27))
                                (display "\n")
                                ((lambda (j7404 k7405 f7406)
                                   (letrec*
                                    ((g8005
                                      (lambda (g7403)
                                        (letrec*
                                         ((g8006
                                           (letrec*
                                            ((x8010
                                              (begin
                                                (write '(funapp 1719 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8007
                                              (letrec*
                                               ((x8008
                                                 (letrec*
                                                  ((x8009
                                                    (begin
                                                      (write '(funapp 1724 53))
                                                      (display "\n")
                                                      (even-list/c))))
                                                  (begin
                                                    (write '(funapp 1725 45))
                                                    (display "\n")
                                                    (x8009
                                                     j7404
                                                     k7405
                                                     g7403)))))
                                               (begin
                                                 (write '(funapp 1726 42))
                                                 (display "\n")
                                                 (f7406 x8008)))))
                                            (begin
                                              (write '(funapp 1727 39))
                                              (display "\n")
                                              (x8010 j7404 k7405 x8007)))))
                                         g8006))))
                                    g8005))
                                 xj7401
                                 xk7402
                                 recursive-div2))))
                            g8004)))
                         (x8002 (input)))
                        (begin
                          (write '(funapp 1735 21))
                          (display "\n")
                          (x8003 x8002)))))))))
               g8001))))
           g7435))))
       g7418)))
    g7417)))
