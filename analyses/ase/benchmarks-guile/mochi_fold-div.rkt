(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7409 #t)) g7409)))
    (meta (lambda (v) (letrec* ((g7410 v)) g7410)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7411
          (letrec*
           ((g7412
             (letrec*
              ((x-e7413 lst))
              (letrec*
               ((v1742 x-e7413))
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
                   ((x-cnd7414
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7414
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
           g7412)))
        g7411)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7415 (lambda (v) (letrec* ((g7416 v)) g7416)))) g7415)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7417
          (letrec*
           ((x7418 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7418)))))
        g7417))))
   (letrec*
    ((g7419
      (letrec*
       ((g7420
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7421
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7421)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7422
                 (letrec*
                  ((x7424
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7424))))
                (g7423
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7425
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7426 (if val7245 val7245 #f))) g7426)))))
                   g7425))))
               g7423)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7427
                 (letrec*
                  ((x7429
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7429))))
                (g7428
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7430
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7431 (if val7247 val7247 #f))) g7431)))))
                   g7430))))
               g7428)))
           (>
            (lambda (x y)
              (letrec*
               ((g7432
                 (letrec*
                  ((x7434
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7434))))
                (g7433
                 (letrec*
                  ((x7435
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7435)))))
               g7433)))
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
           ((g7436 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7437
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7438
                     (lambda (k j lst)
                       (letrec*
                        ((g7439
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7440
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7440))
                             lst))))
                        g7439))))
                   g7438)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7441
                     (letrec*
                      ((x-cnd7442
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7442
                        g7264
                        (begin
                          (write '(blame g7262 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7441)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x-cnd7444
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7444
                        g7267
                        (begin
                          (write '(blame g7265 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7443)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x-cnd7446
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7446
                        g7270
                        (begin
                          (write '(blame g7268 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7445)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7449 #t)) g7449)) g7273))))
                      (if x-cnd7448
                        g7273
                        (begin
                          (write '(blame g7271 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7447)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7452 #t)) g7452)) g7276))))
                      (if x-cnd7451
                        g7276
                        (begin
                          (write '(blame g7274 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7450)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7454
                        g7279
                        (begin
                          (write '(blame g7277 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7453)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7456
                        g7282
                        (begin
                          (write '(blame g7280 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7455)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7458
                        g7285
                        (begin
                          (write '(blame g7283 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7457)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x-cnd7460
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7460
                        g7288
                        (begin
                          (write '(blame g7286 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7459)))
               (string?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x-cnd7462
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7291))))
                      (if x-cnd7462
                        g7291
                        (begin
                          (write '(blame g7289 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7461)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7463
                     (lambda (k j v)
                       (letrec*
                        ((g7464
                          (letrec*
                           ((x-cnd7465
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7465
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7464))))
                   g7463)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7466
                     (lambda (k j v)
                       (letrec*
                        ((g7467
                          (letrec*
                           ((x-cnd7468
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7468
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7472
                                (letrec*
                                 ((x7473
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7473))))
                               (x7469
                                (letrec*
                                 ((x7471
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7470
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7471 k j x7470)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7472 x7469)))))))
                        g7467))))
                   g7466)))
               (any? (lambda (v) (letrec* ((g7474 #t)) g7474)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7475
                     (letrec*
                      ((x7476
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7476)))))
                   g7475)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7477
                     (letrec*
                      ((x-cnd7478
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7479
                                (letrec*
                                 ((x7480
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7480)))))
                              g7479))
                           g7294))))
                      (if x-cnd7478
                        g7294
                        (begin
                          (write '(blame g7292 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7477)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7481
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7482
                          (letrec*
                           ((x-cnd7483
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7484
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7484))
                                g7297))))
                           (if x-cnd7483
                             g7297
                             (begin
                               (write '(blame g7295 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7482))))
                   g7481)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7485
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7486
                          (letrec*
                           ((x-cnd7487
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7488
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7488))
                                g7300))))
                           (if x-cnd7487
                             g7300
                             (begin
                               (write '(blame g7298 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7486))))
                   g7485)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7489
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7490
                          (letrec*
                           ((x-cnd7491
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7492
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7492))
                                g7303))))
                           (if x-cnd7491
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7490))))
                   g7489)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7493
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7494
                          (letrec*
                           ((x-cnd7495
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7496
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7496))
                                g7306))))
                           (if x-cnd7495
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7494))))
                   g7493)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7497
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7498
                          (letrec*
                           ((x-cnd7499
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7500
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7500))
                                g7309))))
                           (if x-cnd7499
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7498))))
                   g7497)))
               (meta (lambda (v) (letrec* ((g7501 v)) g7501)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7502
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7504
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7505
                                 (letrec*
                                  ((x7506
                                    (letrec*
                                     ((x7508
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7507
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7316 x7508 x7507)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7506)))))
                               g7505))))
                          g7504))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7503
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7503))))))
                  g7502)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7509
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7511
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7512
                                 (letrec*
                                  ((x7513
                                    (letrec*
                                     ((x7515
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7514
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7323 x7515 x7514)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7513)))))
                               g7512))))
                          g7511))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7510
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7510))))))
                  g7509)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7516
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7518
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7519
                                 (letrec*
                                  ((x7520
                                    (letrec*
                                     ((x7522
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7521
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7330 x7522 x7521)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7520)))))
                               g7519))))
                          g7518))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7517
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7517))))))
                  g7516)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7523
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7525
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7526
                                 (letrec*
                                  ((x7527
                                    (letrec*
                                     ((x7529
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7528
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7337 x7529 x7528)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7527)))))
                               g7526))))
                          g7525))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7524
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7524))))))
                  g7523)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7530
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7532
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7533
                                 (letrec*
                                  ((x7534
                                    (letrec*
                                     ((x7536
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7535
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7344 x7536 x7535)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7534)))))
                               g7533))))
                          g7532))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7531
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7531))))))
                  g7530)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7537
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7539
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7540
                                 (letrec*
                                  ((x7541
                                    (letrec*
                                     ((x7543
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7542
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7351 x7543 x7542)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7541)))))
                               g7540))))
                          g7539))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7538
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7538))))))
                  g7537)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7544
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7546
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7547
                                 (letrec*
                                  ((x7548
                                    (letrec*
                                     ((x7550
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7549
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7358 x7550 x7549)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7548)))))
                               g7547))))
                          g7546))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7545
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7545))))))
                  g7544)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7551
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7553
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7554
                                 (letrec*
                                  ((x7555
                                    (letrec*
                                     ((x7557
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7556
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7365 x7557 x7556)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7555)))))
                               g7554))))
                          g7553))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7552
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7552))))))
                  g7551)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7558
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7560
                            (lambda (g7368)
                              (letrec*
                               ((g7561
                                 (letrec*
                                  ((x7562
                                    (letrec*
                                     ((x7563
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7371 x7563)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7562)))))
                               g7561))))
                          g7560))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7559
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7559))))))
                  g7558)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7564
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7566
                            (lambda (g7374)
                              (letrec*
                               ((g7567
                                 (letrec*
                                  ((x7568
                                    (letrec*
                                     ((x7569
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7377 x7569)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7568)))))
                               g7567))))
                          g7566))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7565
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7565))))))
                  g7564)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7570
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7572
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7573
                                 (letrec*
                                  ((x7574
                                    (letrec*
                                     ((x7576
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7575
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7384 x7576 x7575)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7574)))))
                               g7573))))
                          g7572))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7571
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7571))))))
                  g7570)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7577
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7579
                            (lambda (g7387)
                              (letrec*
                               ((g7580
                                 (letrec*
                                  ((x7581
                                    (letrec*
                                     ((x7582
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7390 x7582)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7581)))))
                               g7580))))
                          g7579))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7578
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7578))))))
                  g7577)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7583
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7585
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7586
                                 (letrec*
                                  ((x7587
                                    (letrec*
                                     ((x7589
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7588
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7397 x7589 x7588)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7587)))))
                               g7586))))
                          g7585))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7584
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7584))))))
                  g7583)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7590
                     (letrec*
                      ((x7591
                        (letrec*
                         ((x7592
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7592)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7591)))))
                   g7590)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7593
                     (letrec*
                      ((x7596
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7596))))
                    (g7594
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7597))))
                    (g7595
                     (letrec*
                      ((x-cnd7598
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7598
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7601
                           (letrec*
                            ((x7602
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7602))))
                          (x7599
                           (letrec*
                            ((x7600
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7600)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7601 x7599)))))))
                   g7595)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7604)))))
                   g7603)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (letrec*
                         ((x7607
                           (letrec*
                            ((x7608
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7608)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7607)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7606)))))
                   g7605)))
               (cdadar
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
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7612)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7611)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7610)))))
                   g7609)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7616))))
                    (g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7617))))
                    (g7615
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
                       ((g7618
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7619 res))
                       g7619))))
                   g7615)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7621
                        (letrec*
                         ((x7622
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7622)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7621)))))
                   g7620)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7624
                        (letrec*
                         ((x7625
                           (letrec*
                            ((x7626
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7626)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7625)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7624)))))
                   g7623)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7629))))
                    (g7628
                     (letrec*
                      ((x-cnd7630
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7630
                        #f
                        (letrec*
                         ((x-cnd7631
                           (letrec*
                            ((x7632
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7632 k)))))
                         (if x-cnd7631
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7633
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7633)))))))))
                   g7628)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7635)))))
                   g7634)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7638))))
                    (g7637
                     (letrec*
                      ((x-cnd7639
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7639
                        ""
                        (letrec*
                         ((x7642
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7643))))
                          (x7640
                           (letrec*
                            ((x7641
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7641)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7642 x7640)))))))
                   g7637)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7647))))
                    (g7645
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7648))))
                    (g7646
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7649
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7649))))
                   g7646)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7651
                        (letrec*
                         ((x7652
                           (letrec*
                            ((x7653
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7653)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7652)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7651)))))
                   g7650)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7657))))
                    (g7655
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7658))))
                    (g7656
                     (letrec*
                      ((x-cnd7659
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7659
                        x
                        (letrec*
                         ((x7661
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7660
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7661 x7660)))))))
                   g7656)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7662
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7662)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x-cnd7664
                        (letrec*
                         ((x7665 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7665)))))
                      (if x-cnd7664
                        (letrec*
                         ((x7666 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7666)))
                        #f))))
                   g7663)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x7668
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7668 9)))))
                      (letrec*
                       ((g7669
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x7670
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7670 10)))))
                            (letrec*
                             ((g7671
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x7672
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7672 32))))))
                             g7671)))))
                       g7669))))
                   g7667)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x7674
                        (letrec*
                         ((x7675
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7675)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7674)))))
                   g7673)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((x7678
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7678))))
                    (g7677
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7677)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7679 #f)) g7679)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7681
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7681)))))
                   g7680)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((x7684
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7684))))
                    (g7683
                     (letrec*
                      ((x-cnd7685
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7685
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7683)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7686
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7687
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd7688
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7688
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7689
                               (if val7252
                                 val7252
                                 (letrec*
                                  ((val7253
                                    (letrec*
                                     ((x-cnd7690
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7690
                                       (letrec*
                                        ((x-cnd7691
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7691
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7692
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd7693
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7693
                                             (letrec*
                                              ((x-cnd7694
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7694
                                                (letrec*
                                                 ((x-cnd7695
                                                   (letrec*
                                                    ((x7697
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7696
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7697 x7696)))))
                                                 (if x-cnd7695
                                                   (letrec*
                                                    ((x7699
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7698
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7699 x7698)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7700
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd7701
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7701
                                                (letrec*
                                                 ((x-cnd7702
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7702
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7703
                                                       (letrec*
                                                        ((x-cnd7704
                                                          (letrec*
                                                           ((x7705
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
                                                             (= x7705 n)))))
                                                        (if x-cnd7704
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7706
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
                                                                    ((g7707
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd7708
                                                                           (letrec*
                                                                            ((x7710
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
                                                                             (x7709
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
                                                                               x7710
                                                                               x7709)))))
                                                                         (if x-cnd7708
                                                                           (letrec*
                                                                            ((x7711
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
                                                                               x7711)))
                                                                           #f)))))
                                                                    g7707))))
                                                                g7706))))
                                                           (letrec*
                                                            ((g7712
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7712))
                                                          #f))))
                                                     g7703))
                                                   #f))
                                                #f)))))
                                         g7700)))))
                                   g7692)))))
                             g7689)))))
                       g7687))))
                   g7686)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7713
                     (letrec*
                      ((x7714
                        (letrec*
                         ((x7715
                           (letrec*
                            ((x7716
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7716)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7715)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7714)))))
                   g7713)))
               (caaddr
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
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7720)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7719)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7718)))))
                   g7717)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7721
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7721)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7722
                     (letrec*
                      ((x7725
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7725))))
                    (g7723
                     (letrec*
                      ((x7726
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7726))))
                    (g7724
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
                       ((g7727
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7728 res))
                       g7728))))
                   g7724)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7729
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7729)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7733
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7733))))
                    (g7731
                     (letrec*
                      ((x7734
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7734))))
                    (g7732
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7735
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7735))))
                   g7732)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7737
                        (letrec*
                         ((x7738
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7738)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7737)))))
                   g7736)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7740
                        (letrec*
                         ((x7741
                           (letrec*
                            ((x7742
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7742)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7741)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7740)))))
                   g7739)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7745)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7744)))))
                   g7743)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (letrec*
                         ((x7748
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7748)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7747)))))
                   g7746)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7752))))
                    (g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7753))))
                    (g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7754)))))
                   g7751)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7758)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7757)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7756)))))
                   g7755)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7761))))
                    (g7760
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7760)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7762
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7762)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7764
                        (letrec*
                         ((x7765
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7765)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7764)))))
                   g7763)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7766
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7766)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7769
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7769))))
                    (g7768
                     (letrec*
                      ((x-cnd7770
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7770
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7774))))
                          (x7771
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7772)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7773 x7771)))))))
                   g7768)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7776
                        (letrec*
                         ((x7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7778)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7777)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (cddadr
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
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7782)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7781)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7780)))))
                   g7779)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7785))))
                    (g7784
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7786)))))
                   g7784)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7788
                        (letrec*
                         ((x7789
                           (letrec*
                            ((x7790
                              (begin
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7790)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7789)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7788)))))
                   g7787)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7794))))
                    (g7792
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7795))))
                    (g7793
                     (letrec*
                      ((x-cnd7796
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7796
                        (letrec*
                         ((g7797
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7797)
                        (letrec*
                         ((x-cnd7798
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7799)))))
                         (if x-cnd7798
                           (letrec*
                            ((g7800
                              (letrec*
                               ((x7801
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7801)))))
                            g7800)
                           (letrec*
                            ((x-cnd7802
                              (letrec*
                               ((x7803
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7803)))))
                            (if x-cnd7802
                              (letrec*
                               ((g7804
                                 (letrec*
                                  ((x7806
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7805
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7806 x7805)))))
                               g7804)
                              (letrec*
                               ((x-cnd7807
                                 (letrec*
                                  ((x7808
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7808)))))
                               (if x-cnd7807
                                 (letrec*
                                  ((g7809
                                    (letrec*
                                     ((x7812
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7811
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7810
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7812 x7811 x7810)))))
                                  g7809)
                                 (letrec*
                                  ((x-cnd7813
                                    (letrec*
                                     ((x7814
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7814)))))
                                  (if x-cnd7813
                                    (letrec*
                                     ((g7815
                                       (letrec*
                                        ((x7819
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7818
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7817
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7816
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7819 x7818 x7817 x7816)))))
                                     g7815)
                                    (letrec*
                                     ((x-cnd7820
                                       (letrec*
                                        ((x7821
                                          (letrec*
                                           ((x7822
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7822)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7821)))))
                                     (if x-cnd7820
                                       (letrec*
                                        ((g7823
                                          (letrec*
                                           ((x7829
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7828
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7827
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7826
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7824
                                             (letrec*
                                              ((x7825
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7825)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7829
                                              x7828
                                              x7827
                                              x7826
                                              x7824)))))
                                        g7823)
                                       (letrec*
                                        ((x-cnd7830
                                          (letrec*
                                           ((x7831
                                             (letrec*
                                              ((x7832
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7832)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7831)))))
                                        (if x-cnd7830
                                          (letrec*
                                           ((g7833
                                             (letrec*
                                              ((x7841
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7840
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7839
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7838
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7836
                                                (letrec*
                                                 ((x7837
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7837))))
                                               (x7834
                                                (letrec*
                                                 ((x7835
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7835)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7841
                                                 x7840
                                                 x7839
                                                 x7838
                                                 x7836
                                                 x7834)))))
                                           g7833)
                                          (letrec*
                                           ((x-cnd7842
                                             (letrec*
                                              ((x7843
                                                (letrec*
                                                 ((x7844
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7844)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7843)))))
                                           (if x-cnd7842
                                             (letrec*
                                              ((g7845
                                                (letrec*
                                                 ((x7855
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7854
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7853
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7852
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
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
                                                      (car x7851))))
                                                  (x7848
                                                   (letrec*
                                                    ((x7849
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7849))))
                                                  (x7846
                                                   (letrec*
                                                    ((x7847
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7847)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7855
                                                    x7854
                                                    x7853
                                                    x7852
                                                    x7850
                                                    x7848
                                                    x7846)))))
                                              g7845)
                                             (letrec*
                                              ((g7856
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7856)))))))))))))))))))
                   g7793)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7859))))
                    (g7858
                     (letrec*
                      ((x-cnd7860
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7860
                        #f
                        (letrec*
                         ((x-cnd7861
                           (letrec*
                            ((x7862
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7862 e)))))
                         (if x-cnd7861
                           l
                           (letrec*
                            ((x7863
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7863)))))))))
                   g7858)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7865
                        (letrec*
                         ((x7866
                           (letrec*
                            ((x7867
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7867)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7866)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7865)))))
                   g7864)))
               (cadddr
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
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7871)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7870)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7869)))))
                   g7868)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7872
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7872)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7875
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7875))))
                    (g7874
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7874)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7877
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7877))))
                   g7876)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7879)))))
                   g7878)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd7881
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7881
                           (letrec*
                            ((x7882
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7882)))
                           #f))))
                      (letrec*
                       ((g7883
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7883))))
                   g7880)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7885
                        (letrec*
                         ((x7886
                           (letrec*
                            ((x7887
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7887)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7886)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7885)))))
                   g7884)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x-cnd7889
                        (letrec*
                         ((x7890 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7890 c)))))
                      (if x-cnd7889
                        (letrec*
                         ((x7891 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7891)))
                        #f))))
                   g7888)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7894))))
                    (g7893
                     (letrec*
                      ((x-cnd7895
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7895
                        #f
                        (letrec*
                         ((x-cnd7896
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7897 k)))))
                         (if x-cnd7896
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7898)))))))))
                   g7893)))
               (not (lambda (x) (letrec* ((g7899 (if x #f #t))) g7899)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7900
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7900)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7903))))
                    (g7902
                     (letrec*
                      ((x-cnd7904
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7904
                        #f
                        (letrec*
                         ((x-cnd7905
                           (letrec*
                            ((x7906
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7906 e)))))
                         (if x-cnd7905
                           l
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7907)))))))))
                   g7902)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7909
                        (letrec*
                         ((x7910
                           (letrec*
                            ((x7911
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7911)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7910)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7909)))))
                   g7908)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7914))))
                    (g7913
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7915
                             (letrec*
                              ((x-cnd7916
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7916
                                0
                                (letrec*
                                 ((x7917
                                   (letrec*
                                    ((x7918
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7918)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7917)))))))
                           g7915))))
                      (letrec*
                       ((g7919
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7919))))
                   g7913)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7923))))
                    (g7921
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7924))))
                    (g7922
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7925
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7925))))
                   g7922)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7927)))))
                   g7926)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7929
                        (letrec*
                         ((x7930
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7930)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7929)))))
                   g7928)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7933))))
                    (g7932
                     (letrec*
                      ((x-cnd7934
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7934
                        #f
                        (letrec*
                         ((x-cnd7935
                           (letrec*
                            ((x7936
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7936 k)))))
                         (if x-cnd7935
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7937
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7937)))))))))
                   g7932)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7939)))))
                   g7938)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7944))))
                    (g7942
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7945)))))
                   g7942)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7947
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7947))))
                   g7946)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7951))))
                    (g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7952))))
                    (g7950
                     (letrec*
                      ((x-cnd7953
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7953
                        #t
                        (letrec*
                         ((x-cnd7954
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7954
                           (letrec*
                            ((g7955
                              (letrec*
                               ((x7957
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7957))))
                             (g7956
                              (letrec*
                               ((x7958
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7958)))))
                            g7956)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7950)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7961))))
                    (g7960
                     (letrec*
                      ((x-cnd7962
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7962
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7960)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7966))))
                    (g7964
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7967))))
                    (g7965
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7968
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7968))))
                   g7965)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7970
                        (letrec*
                         ((x7971
                           (letrec*
                            ((x7972
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7972)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7971)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7970)))))
                   g7969)))
               (newline (lambda () (letrec* ((g7973 #f)) g7973)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x7976
                        (letrec*
                         ((x7977
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7977))))
                       (x7975
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7976 x7975)))))
                   g7974)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7978
                     (letrec*
                      ((x7982
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7982))))
                    (g7979
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7983))))
                    (g7980
                     (letrec*
                      ((x7984
                        (letrec*
                         ((x7985
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7985)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7984))))
                    (g7981
                     (letrec*
                      ((x-cnd7986
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7986
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7988
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7987
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7988 x7987)))))))
                   g7981)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x-cnd7990
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7990
                        a
                        (letrec*
                         ((x7991
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7991)))))))
                   g7989)))
               (foldl
                (lambda (f z l)
                  (letrec*
                   ((g7992
                     (letrec*
                      ((x-cnd7993
                        (begin
                          (write '(funapp 1665 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7993
                        z
                        (letrec*
                         ((x7995
                           (letrec*
                            ((x7996
                              (begin
                                (write '(funapp 1669 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1669 61))
                              (display "\n")
                              (f z x7996))))
                          (x7994
                           (begin
                             (write '(funapp 1670 34))
                             (display "\n")
                             (cdr l))))
                         (begin
                           (write '(funapp 1671 26))
                           (display "\n")
                           (foldl f x7995 x7994)))))))
                   g7992)))
               (randpos
                (lambda (rand)
                  (letrec*
                   ((g7997
                     (letrec*
                      ((n
                        (begin
                          (write '(funapp 1678 27))
                          (display "\n")
                          (rand))))
                      (letrec*
                       ((g7998
                         (letrec*
                          ((x-cnd7999
                            (begin
                              (write '(funapp 1682 39))
                              (display "\n")
                              (> n 0))))
                          (if x-cnd7999
                            n
                            (begin
                              (write '(funapp 1683 43))
                              (display "\n")
                              (randpos rand))))))
                       g7998))))
                   g7997)))
               (mk-list
                (lambda (rand n)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((x-cnd8001
                        (begin
                          (write '(funapp 1691 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd8001
                        empty
                        (letrec*
                         ((x8004
                           (begin
                             (write '(funapp 1695 34))
                             (display "\n")
                             (randpos rand)))
                          (x8002
                           (letrec*
                            ((x8003
                              (begin
                                (write '(funapp 1697 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1697 55))
                              (display "\n")
                              (mk-list rand x8003)))))
                         (begin
                           (write '(funapp 1698 26))
                           (display "\n")
                           (cons x8004 x8002)))))))
                   g8000)))
               (main
                (lambda (rand n m)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((x8006
                        (begin
                          (write '(funapp 1704 39))
                          (display "\n")
                          (mk-list rand n))))
                      (begin
                        (write '(funapp 1704 58))
                        (display "\n")
                        (foldl / m x8006)))))
                   g8005))))
              (letrec*
               ((g8007
                 (begin
                   (write '(funapp 1708 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1709 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8011
                          (letrec*
                           ((xj7398
                             (begin
                               (write '(funapp 1713 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1713 37))
                                  (display "\n")
                                  'module))))
                            (xk7399
                             (begin
                               (write '(funapp 1713 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1713 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8012
                              (begin
                                (write '(funapp 1716 27))
                                (display "\n")
                                ((lambda (j7403 k7404 f7405)
                                   (letrec*
                                    ((g8013
                                      (lambda (g7400 g7401 g7402)
                                        (letrec*
                                         ((g8014
                                           (letrec*
                                            ((x8015
                                              (letrec*
                                               ((x8018
                                                 (begin
                                                   (write '(funapp 1726 44))
                                                   (display "\n")
                                                   ((lambda (j7406 k7407 f7408)
                                                      (letrec*
                                                       ((g8019
                                                         (lambda ()
                                                           (letrec*
                                                            ((g8020
                                                              (letrec*
                                                               ((x8021
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1733
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (f7408))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1734
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7406
                                                                  k7407
                                                                  x8021)))))
                                                            g8020))))
                                                       g8019))
                                                    j7403
                                                    k7404
                                                    g7400)))
                                                (x8017
                                                 (begin
                                                   (write '(funapp 1744 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7403
                                                    k7404
                                                    g7401)))
                                                (x8016
                                                 (begin
                                                   (write '(funapp 1746 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7403
                                                    k7404
                                                    g7402))))
                                               (begin
                                                 (write '(funapp 1747 42))
                                                 (display "\n")
                                                 (f7405 x8018 x8017 x8016)))))
                                            (begin
                                              (write '(funapp 1748 39))
                                              (display "\n")
                                              (real?/c j7403 k7404 x8015)))))
                                         g8014))))
                                    g8013))
                                 xj7398
                                 xk7399
                                 main))))
                            g8012)))
                         (x8010 (input))
                         (x8009 (input))
                         (x8008 (input)))
                        (begin
                          (write '(funapp 1758 21))
                          (display "\n")
                          (x8011 x8010 x8009 x8008)))))))))
               g8007))))
           g7437))))
       g7420)))
    g7419)))
