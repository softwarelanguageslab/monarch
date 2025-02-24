(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7405 #t)) g7405)))
    (meta (lambda (v) (letrec* ((g7406 v)) g7406)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7407
          (letrec*
           ((g7408
             (letrec*
              ((x-e7409 lst))
              (letrec*
               ((v1742 x-e7409))
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
                   ((x-cnd7410
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7410
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
           g7408)))
        g7407)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7411 (lambda (v) (letrec* ((g7412 v)) g7412)))) g7411)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7413
          (letrec*
           ((x7414 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7414)))))
        g7413))))
   (letrec*
    ((g7415
      (letrec*
       ((g7416
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7417
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7417)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7418
                 (letrec*
                  ((x7420
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7420))))
                (g7419
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7421
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7422 (if val7245 val7245 #f))) g7422)))))
                   g7421))))
               g7419)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7423
                 (letrec*
                  ((x7425
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7425))))
                (g7424
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7426
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7427 (if val7247 val7247 #f))) g7427)))))
                   g7426))))
               g7424)))
           (>
            (lambda (x y)
              (letrec*
               ((g7428
                 (letrec*
                  ((x7430
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7430))))
                (g7429
                 (letrec*
                  ((x7431
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7431)))))
               g7429)))
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
           ((g7432 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7433
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7434
                     (lambda (k j lst)
                       (letrec*
                        ((g7435
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7436
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7436))
                             lst))))
                        g7435))))
                   g7434)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7437
                     (letrec*
                      ((x-cnd7438
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7438
                        g7264
                        (begin
                          (write '(blame g7262 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7437)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x-cnd7440
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7440
                        g7267
                        (begin
                          (write '(blame g7265 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7439)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7441
                     (letrec*
                      ((x-cnd7442
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7442
                        g7270
                        (begin
                          (write '(blame g7268 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7441)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x-cnd7444
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7445 #t)) g7445)) g7273))))
                      (if x-cnd7444
                        g7273
                        (begin
                          (write '(blame g7271 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7443)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7448 #t)) g7448)) g7276))))
                      (if x-cnd7447
                        g7276
                        (begin
                          (write '(blame g7274 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7446)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7450
                        g7279
                        (begin
                          (write '(blame g7277 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7449)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7452
                        g7282
                        (begin
                          (write '(blame g7280 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7451)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7454
                        g7285
                        (begin
                          (write '(blame g7283 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7453)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7456
                        g7288
                        (begin
                          (write '(blame g7286 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7455)))
               (string?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7291))))
                      (if x-cnd7458
                        g7291
                        (begin
                          (write '(blame g7289 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7457)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7459
                     (lambda (k j v)
                       (letrec*
                        ((g7460
                          (letrec*
                           ((x-cnd7461
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7461
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7460))))
                   g7459)))
               (list-of
                (lambda (contract)
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
                               (null? v))))
                           (if x-cnd7464
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7468
                                (letrec*
                                 ((x7469
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7469))))
                               (x7465
                                (letrec*
                                 ((x7467
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7466
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7467 k j x7466)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7468 x7465)))))))
                        g7463))))
                   g7462)))
               (any? (lambda (v) (letrec* ((g7470 #t)) g7470)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x7472
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7472)))))
                   g7471)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x-cnd7474
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7475
                                (letrec*
                                 ((x7476
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7476)))))
                              g7475))
                           g7294))))
                      (if x-cnd7474
                        g7294
                        (begin
                          (write '(blame g7292 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7473)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7477
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7478
                          (letrec*
                           ((x-cnd7479
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7480
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7480))
                                g7297))))
                           (if x-cnd7479
                             g7297
                             (begin
                               (write '(blame g7295 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7478))))
                   g7477)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7481
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7482
                          (letrec*
                           ((x-cnd7483
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7484
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7484))
                                g7300))))
                           (if x-cnd7483
                             g7300
                             (begin
                               (write '(blame g7298 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7482))))
                   g7481)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7485
                     (lambda (g7301 g7302 g7303)
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
                                       (orig-< v n))))
                                   g7488))
                                g7303))))
                           (if x-cnd7487
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7486))))
                   g7485)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7489
                     (lambda (g7304 g7305 g7306)
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
                                       (orig-<= v n))))
                                   g7492))
                                g7306))))
                           (if x-cnd7491
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7490))))
                   g7489)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7493
                     (lambda (g7307 g7308 g7309)
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
                                       (orig-= v n))))
                                   g7496))
                                g7309))))
                           (if x-cnd7495
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7494))))
                   g7493)))
               (meta (lambda (v) (letrec* ((g7497 v)) g7497)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7498
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7500
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7501
                                 (letrec*
                                  ((x7502
                                    (letrec*
                                     ((x7504
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7503
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7316 x7504 x7503)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7502)))))
                               g7501))))
                          g7500))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7499
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7499))))))
                  g7498)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7505
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7507
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7508
                                 (letrec*
                                  ((x7509
                                    (letrec*
                                     ((x7511
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7510
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7323 x7511 x7510)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7509)))))
                               g7508))))
                          g7507))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7506
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7506))))))
                  g7505)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7512
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7514
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7515
                                 (letrec*
                                  ((x7516
                                    (letrec*
                                     ((x7518
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7517
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7330 x7518 x7517)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7516)))))
                               g7515))))
                          g7514))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7513
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7513))))))
                  g7512)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7519
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7521
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7522
                                 (letrec*
                                  ((x7523
                                    (letrec*
                                     ((x7525
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7524
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7337 x7525 x7524)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7523)))))
                               g7522))))
                          g7521))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7520
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7520))))))
                  g7519)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7526
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7528
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7529
                                 (letrec*
                                  ((x7530
                                    (letrec*
                                     ((x7532
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7531
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7344 x7532 x7531)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7530)))))
                               g7529))))
                          g7528))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7527
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7527))))))
                  g7526)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7533
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7535
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7536
                                 (letrec*
                                  ((x7537
                                    (letrec*
                                     ((x7539
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7538
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7351 x7539 x7538)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7537)))))
                               g7536))))
                          g7535))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7534
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7534))))))
                  g7533)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7540
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7542
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7543
                                 (letrec*
                                  ((x7544
                                    (letrec*
                                     ((x7546
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7545
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7358 x7546 x7545)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7544)))))
                               g7543))))
                          g7542))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7541
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7541))))))
                  g7540)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7547
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7549
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7550
                                 (letrec*
                                  ((x7551
                                    (letrec*
                                     ((x7553
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7552
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7365 x7553 x7552)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7551)))))
                               g7550))))
                          g7549))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7548
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7548))))))
                  g7547)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7554
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7556
                            (lambda (g7368)
                              (letrec*
                               ((g7557
                                 (letrec*
                                  ((x7558
                                    (letrec*
                                     ((x7559
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7371 x7559)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7558)))))
                               g7557))))
                          g7556))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7555
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7555))))))
                  g7554)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7560
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7562
                            (lambda (g7374)
                              (letrec*
                               ((g7563
                                 (letrec*
                                  ((x7564
                                    (letrec*
                                     ((x7565
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7377 x7565)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7564)))))
                               g7563))))
                          g7562))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7561
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7561))))))
                  g7560)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7566
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7568
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7569
                                 (letrec*
                                  ((x7570
                                    (letrec*
                                     ((x7572
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7571
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7384 x7572 x7571)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7570)))))
                               g7569))))
                          g7568))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7567
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7567))))))
                  g7566)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7573
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7575
                            (lambda (g7387)
                              (letrec*
                               ((g7576
                                 (letrec*
                                  ((x7577
                                    (letrec*
                                     ((x7578
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7390 x7578)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7577)))))
                               g7576))))
                          g7575))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7574
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7574))))))
                  g7573)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7579
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7581
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7582
                                 (letrec*
                                  ((x7583
                                    (letrec*
                                     ((x7585
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7584
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7397 x7585 x7584)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7583)))))
                               g7582))))
                          g7581))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7580
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7580))))))
                  g7579)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7586
                     (letrec*
                      ((x7587
                        (letrec*
                         ((x7588
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7588)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7587)))))
                   g7586)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7589
                     (letrec*
                      ((x7592
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7592))))
                    (g7590
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7593))))
                    (g7591
                     (letrec*
                      ((x-cnd7594
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7594
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7597
                           (letrec*
                            ((x7598
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7598))))
                          (x7595
                           (letrec*
                            ((x7596
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7596)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7597 x7595)))))))
                   g7591)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7600)))))
                   g7599)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7602
                        (letrec*
                         ((x7603
                           (letrec*
                            ((x7604
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7604)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7603)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7602)))))
                   g7601)))
               (cdadar
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
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7608)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7607)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7606)))))
                   g7605)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7612))))
                    (g7610
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7613))))
                    (g7611
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
                       ((g7614
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7615 res))
                       g7615))))
                   g7611)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7618)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7617)))))
                   g7616)))
               (cdaadr
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
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7622)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7621)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7620)))))
                   g7619)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7625))))
                    (g7624
                     (letrec*
                      ((x-cnd7626
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7626
                        #f
                        (letrec*
                         ((x-cnd7627
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7628 k)))))
                         (if x-cnd7627
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7629
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7629)))))))))
                   g7624)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7631)))))
                   g7630)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7634))))
                    (g7633
                     (letrec*
                      ((x-cnd7635
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7635
                        ""
                        (letrec*
                         ((x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7639))))
                          (x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7637)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7638 x7636)))))))
                   g7633)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7643))))
                    (g7641
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7644))))
                    (g7642
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7645
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7645))))
                   g7642)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7647
                        (letrec*
                         ((x7648
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7649)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7648)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7647)))))
                   g7646)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7653))))
                    (g7651
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7654))))
                    (g7652
                     (letrec*
                      ((x-cnd7655
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7655
                        x
                        (letrec*
                         ((x7657
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7656
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7657 x7656)))))))
                   g7652)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7658
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7658)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x-cnd7660
                        (letrec*
                         ((x7661 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7661)))))
                      (if x-cnd7660
                        (letrec*
                         ((x7662 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7662)))
                        #f))))
                   g7659)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x7664
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7664 9)))))
                      (letrec*
                       ((g7665
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x7666
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7666 10)))))
                            (letrec*
                             ((g7667
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x7668
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7668 32))))))
                             g7667)))))
                       g7665))))
                   g7663)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7670
                        (letrec*
                         ((x7671
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7671)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7670)))))
                   g7669)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((x7674
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7674))))
                    (g7673
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7673)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7675 #f)) g7675)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((x7677
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7677)))))
                   g7676)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((x7680
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7680))))
                    (g7679
                     (letrec*
                      ((x-cnd7681
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7681
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7679)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7682
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7683
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd7684
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7684
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7685
                               (if val7252
                                 val7252
                                 (letrec*
                                  ((val7253
                                    (letrec*
                                     ((x-cnd7686
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7686
                                       (letrec*
                                        ((x-cnd7687
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7687
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7688
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd7689
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7689
                                             (letrec*
                                              ((x-cnd7690
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7690
                                                (letrec*
                                                 ((x-cnd7691
                                                   (letrec*
                                                    ((x7693
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7692
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7693 x7692)))))
                                                 (if x-cnd7691
                                                   (letrec*
                                                    ((x7695
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7694
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7695 x7694)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7696
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd7697
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7697
                                                (letrec*
                                                 ((x-cnd7698
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7698
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7699
                                                       (letrec*
                                                        ((x-cnd7700
                                                          (letrec*
                                                           ((x7701
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
                                                             (= x7701 n)))))
                                                        (if x-cnd7700
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7702
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
                                                                    ((g7703
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd7704
                                                                           (letrec*
                                                                            ((x7706
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
                                                                             (x7705
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
                                                                               x7706
                                                                               x7705)))))
                                                                         (if x-cnd7704
                                                                           (letrec*
                                                                            ((x7707
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
                                                                               x7707)))
                                                                           #f)))))
                                                                    g7703))))
                                                                g7702))))
                                                           (letrec*
                                                            ((g7708
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7708))
                                                          #f))))
                                                     g7699))
                                                   #f))
                                                #f)))))
                                         g7696)))))
                                   g7688)))))
                             g7685)))))
                       g7683))))
                   g7682)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7709
                     (letrec*
                      ((x7710
                        (letrec*
                         ((x7711
                           (letrec*
                            ((x7712
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7712)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7711)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7710)))))
                   g7709)))
               (caaddr
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
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7716)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7715)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7714)))))
                   g7713)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7717
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7717)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7718
                     (letrec*
                      ((x7721
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7721))))
                    (g7719
                     (letrec*
                      ((x7722
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7722))))
                    (g7720
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
                       ((g7723
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7724 res))
                       g7724))))
                   g7720)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7725
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7725)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x7729
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7729))))
                    (g7727
                     (letrec*
                      ((x7730
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7730))))
                    (g7728
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7731
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7731))))
                   g7728)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7732
                     (letrec*
                      ((x7733
                        (letrec*
                         ((x7734
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7734)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7733)))))
                   g7732)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7736
                        (letrec*
                         ((x7737
                           (letrec*
                            ((x7738
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7738)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7737)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7736)))))
                   g7735)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7740
                        (letrec*
                         ((x7741
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7741)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7740)))))
                   g7739)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (letrec*
                         ((x7744
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7744)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7743)))))
                   g7742)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7748))))
                    (g7746
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7749))))
                    (g7747
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7750)))))
                   g7747)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7752
                        (letrec*
                         ((x7753
                           (letrec*
                            ((x7754
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7754)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7753)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7752)))))
                   g7751)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7757))))
                    (g7756
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7756)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7758
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7758)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7761)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7760)))))
                   g7759)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7762
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7762)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7765))))
                    (g7764
                     (letrec*
                      ((x-cnd7766
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7766
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7770))))
                          (x7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7768)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7769 x7767)))))))
                   g7764)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7771
                     (letrec*
                      ((x7772
                        (letrec*
                         ((x7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7774)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7773)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7772)))))
                   g7771)))
               (cddadr
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
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7778)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7777)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7776)))))
                   g7775)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7781))))
                    (g7780
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7782)))))
                   g7780)))
               (caadar
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
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7786)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7785)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7784)))))
                   g7783)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7790))))
                    (g7788
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7791))))
                    (g7789
                     (letrec*
                      ((x-cnd7792
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7792
                        (letrec*
                         ((g7793
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7793)
                        (letrec*
                         ((x-cnd7794
                           (letrec*
                            ((x7795
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7795)))))
                         (if x-cnd7794
                           (letrec*
                            ((g7796
                              (letrec*
                               ((x7797
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7797)))))
                            g7796)
                           (letrec*
                            ((x-cnd7798
                              (letrec*
                               ((x7799
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7799)))))
                            (if x-cnd7798
                              (letrec*
                               ((g7800
                                 (letrec*
                                  ((x7802
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7801
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7802 x7801)))))
                               g7800)
                              (letrec*
                               ((x-cnd7803
                                 (letrec*
                                  ((x7804
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7804)))))
                               (if x-cnd7803
                                 (letrec*
                                  ((g7805
                                    (letrec*
                                     ((x7808
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7807
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7806
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7808 x7807 x7806)))))
                                  g7805)
                                 (letrec*
                                  ((x-cnd7809
                                    (letrec*
                                     ((x7810
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7810)))))
                                  (if x-cnd7809
                                    (letrec*
                                     ((g7811
                                       (letrec*
                                        ((x7815
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7814
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7813
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7812
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7815 x7814 x7813 x7812)))))
                                     g7811)
                                    (letrec*
                                     ((x-cnd7816
                                       (letrec*
                                        ((x7817
                                          (letrec*
                                           ((x7818
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7818)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7817)))))
                                     (if x-cnd7816
                                       (letrec*
                                        ((g7819
                                          (letrec*
                                           ((x7825
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7824
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7823
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7822
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7820
                                             (letrec*
                                              ((x7821
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7821)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7825
                                              x7824
                                              x7823
                                              x7822
                                              x7820)))))
                                        g7819)
                                       (letrec*
                                        ((x-cnd7826
                                          (letrec*
                                           ((x7827
                                             (letrec*
                                              ((x7828
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7828)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7827)))))
                                        (if x-cnd7826
                                          (letrec*
                                           ((g7829
                                             (letrec*
                                              ((x7837
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7836
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7835
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7834
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7832
                                                (letrec*
                                                 ((x7833
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7833))))
                                               (x7830
                                                (letrec*
                                                 ((x7831
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7831)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7837
                                                 x7836
                                                 x7835
                                                 x7834
                                                 x7832
                                                 x7830)))))
                                           g7829)
                                          (letrec*
                                           ((x-cnd7838
                                             (letrec*
                                              ((x7839
                                                (letrec*
                                                 ((x7840
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7840)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7839)))))
                                           (if x-cnd7838
                                             (letrec*
                                              ((g7841
                                                (letrec*
                                                 ((x7851
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7850
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7849
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7848
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7846
                                                   (letrec*
                                                    ((x7847
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7847))))
                                                  (x7844
                                                   (letrec*
                                                    ((x7845
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7845))))
                                                  (x7842
                                                   (letrec*
                                                    ((x7843
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7843)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7851
                                                    x7850
                                                    x7849
                                                    x7848
                                                    x7846
                                                    x7844
                                                    x7842)))))
                                              g7841)
                                             (letrec*
                                              ((g7852
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7852)))))))))))))))))))
                   g7789)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7855))))
                    (g7854
                     (letrec*
                      ((x-cnd7856
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7856
                        #f
                        (letrec*
                         ((x-cnd7857
                           (letrec*
                            ((x7858
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7858 e)))))
                         (if x-cnd7857
                           l
                           (letrec*
                            ((x7859
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7859)))))))))
                   g7854)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x7861
                        (letrec*
                         ((x7862
                           (letrec*
                            ((x7863
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7863)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7862)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7861)))))
                   g7860)))
               (cadddr
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
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7867)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7866)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7865)))))
                   g7864)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7868
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7868)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7871
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7871))))
                    (g7870
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7870)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7873
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7873))))
                   g7872)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x7875
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7875)))))
                   g7874)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd7877
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7877
                           (letrec*
                            ((x7878
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7878)))
                           #f))))
                      (letrec*
                       ((g7879
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7879))))
                   g7876)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7881
                        (letrec*
                         ((x7882
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7883)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7882)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7881)))))
                   g7880)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x-cnd7885
                        (letrec*
                         ((x7886 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7886 c)))))
                      (if x-cnd7885
                        (letrec*
                         ((x7887 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7887)))
                        #f))))
                   g7884)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7890
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7890))))
                    (g7889
                     (letrec*
                      ((x-cnd7891
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7891
                        #f
                        (letrec*
                         ((x-cnd7892
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7893 k)))))
                         (if x-cnd7892
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7894)))))))))
                   g7889)))
               (not (lambda (x) (letrec* ((g7895 (if x #f #t))) g7895)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7896
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7896)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7897
                     (letrec*
                      ((x7899
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7899))))
                    (g7898
                     (letrec*
                      ((x-cnd7900
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7900
                        #f
                        (letrec*
                         ((x-cnd7901
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7902 e)))))
                         (if x-cnd7901
                           l
                           (letrec*
                            ((x7903
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7903)))))))))
                   g7898)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7905
                        (letrec*
                         ((x7906
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7907)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7906)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7905)))))
                   g7904)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7910))))
                    (g7909
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7911
                             (letrec*
                              ((x-cnd7912
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7912
                                0
                                (letrec*
                                 ((x7913
                                   (letrec*
                                    ((x7914
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7914)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7913)))))))
                           g7911))))
                      (letrec*
                       ((g7915
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7915))))
                   g7909)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7919))))
                    (g7917
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7920))))
                    (g7918
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7921
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7921))))
                   g7918)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7923
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7923)))))
                   g7922)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7924
                     (letrec*
                      ((x7925
                        (letrec*
                         ((x7926
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7926)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7925)))))
                   g7924)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7929
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7929))))
                    (g7928
                     (letrec*
                      ((x-cnd7930
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7930
                        #f
                        (letrec*
                         ((x-cnd7931
                           (letrec*
                            ((x7932
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7932 k)))))
                         (if x-cnd7931
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7933
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7933)))))))))
                   g7928)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7935)))))
                   g7934)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7936
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7939))))
                    (g7937
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7940))))
                    (g7938
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7941)))))
                   g7938)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7943
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7943))))
                   g7942)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7944
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7947))))
                    (g7945
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7948))))
                    (g7946
                     (letrec*
                      ((x-cnd7949
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7949
                        #t
                        (letrec*
                         ((x-cnd7950
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7950
                           (letrec*
                            ((g7951
                              (letrec*
                               ((x7953
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7953))))
                             (g7952
                              (letrec*
                               ((x7954
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7954)))))
                            g7952)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7946)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7957
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7957))))
                    (g7956
                     (letrec*
                      ((x-cnd7958
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7958
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7956)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7962))))
                    (g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7963))))
                    (g7961
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7964
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7964))))
                   g7961)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7965
                     (letrec*
                      ((x7966
                        (letrec*
                         ((x7967
                           (letrec*
                            ((x7968
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7968)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7967)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7966)))))
                   g7965)))
               (newline (lambda () (letrec* ((g7969 #f)) g7969)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7972
                        (letrec*
                         ((x7973
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7973))))
                       (x7971
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7972 x7971)))))
                   g7970)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7978))))
                    (g7975
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7979))))
                    (g7976
                     (letrec*
                      ((x7980
                        (letrec*
                         ((x7981
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7981)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7980))))
                    (g7977
                     (letrec*
                      ((x-cnd7982
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7982
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7984
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7983
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7984 x7983)))))))
                   g7977)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x-cnd7986
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7986
                        a
                        (letrec*
                         ((x7987
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7987)))))))
                   g7985)))
               (append
                (lambda (xs ys)
                  (letrec*
                   ((g7988
                     (letrec*
                      ((x-cnd7989
                        (begin
                          (write '(funapp 1665 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7989
                        ys
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1669 34))
                             (display "\n")
                             (car xs)))
                          (x7990
                           (letrec*
                            ((x7991
                              (begin
                                (write '(funapp 1671 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1671 56))
                              (display "\n")
                              (append x7991 ys)))))
                         (begin
                           (write '(funapp 1672 26))
                           (display "\n")
                           (cons x7992 x7990)))))))
                   g7988))))
              (letrec*
               ((g7993
                 (begin
                   (write '(funapp 1676 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1677 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x7996
                          (letrec*
                           ((xj7398
                             (begin
                               (write '(funapp 1681 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1681 37))
                                  (display "\n")
                                  'module))))
                            (xk7399
                             (begin
                               (write '(funapp 1681 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1681 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g7997
                              (begin
                                (write '(funapp 1684 27))
                                (display "\n")
                                ((lambda (j7402 k7403 f7404)
                                   (letrec*
                                    ((g7998
                                      (lambda (g7400 g7401)
                                        (letrec*
                                         ((g7999
                                           (letrec*
                                            ((x8005
                                              (begin
                                                (write '(funapp 1691 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8000
                                              (letrec*
                                               ((x8003
                                                 (letrec*
                                                  ((x8004
                                                    (begin
                                                      (write '(funapp 1696 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1697 45))
                                                    (display "\n")
                                                    (x8004
                                                     j7402
                                                     k7403
                                                     g7400))))
                                                (x8001
                                                 (letrec*
                                                  ((x8002
                                                    (begin
                                                      (write '(funapp 1700 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1701 45))
                                                    (display "\n")
                                                    (x8002
                                                     j7402
                                                     k7403
                                                     g7401)))))
                                               (begin
                                                 (write '(funapp 1702 42))
                                                 (display "\n")
                                                 (f7404 x8003 x8001)))))
                                            (begin
                                              (write '(funapp 1703 39))
                                              (display "\n")
                                              (x8005 j7402 k7403 x8000)))))
                                         g7999))))
                                    g7998))
                                 xj7398
                                 xk7399
                                 append))))
                            g7997)))
                         (x7995 (input))
                         (x7994 (input)))
                        (begin
                          (write '(funapp 1712 21))
                          (display "\n")
                          (x7996 x7995 x7994)))))))))
               g7993))))
           g7433))))
       g7416)))
    g7415)))
