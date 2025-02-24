(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7420 #t)) g7420)))
    (meta (lambda (v) (letrec* ((g7421 v)) g7421)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7422
          (letrec*
           ((g7423
             (letrec*
              ((x-e7424 lst))
              (letrec*
               ((v1742 x-e7424))
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
                   ((x-cnd7425
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7425
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
           g7423)))
        g7422)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7426 (lambda (v) (letrec* ((g7427 v)) g7427)))) g7426)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7428
          (letrec*
           ((x7429 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7429)))))
        g7428))))
   (letrec*
    ((g7430
      (letrec*
       ((g7431
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7432
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7432)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7433
                 (letrec*
                  ((x7435
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7435))))
                (g7434
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7436
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7437 (if val7245 val7245 #f))) g7437)))))
                   g7436))))
               g7434)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7438
                 (letrec*
                  ((x7440
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7440))))
                (g7439
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7441
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7442 (if val7247 val7247 #f))) g7442)))))
                   g7441))))
               g7439)))
           (>
            (lambda (x y)
              (letrec*
               ((g7443
                 (letrec*
                  ((x7445
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7445))))
                (g7444
                 (letrec*
                  ((x7446
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7446)))))
               g7444)))
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
           ((g7447 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7448
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7449
                     (lambda (k j lst)
                       (letrec*
                        ((g7450
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7451
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7451))
                             lst))))
                        g7450))))
                   g7449)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7453
                        g7264
                        (begin
                          (write '(blame g7262 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7452)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7455
                        g7267
                        (begin
                          (write '(blame g7265 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7454)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7457
                        g7270
                        (begin
                          (write '(blame g7268 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7456)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7460 #t)) g7460)) g7273))))
                      (if x-cnd7459
                        g7273
                        (begin
                          (write '(blame g7271 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7458)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x-cnd7462
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7463 #t)) g7463)) g7276))))
                      (if x-cnd7462
                        g7276
                        (begin
                          (write '(blame g7274 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7461)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x-cnd7465
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7465
                        g7279
                        (begin
                          (write '(blame g7277 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7464)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x-cnd7467
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7467
                        g7282
                        (begin
                          (write '(blame g7280 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7466)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x-cnd7469
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7469
                        g7285
                        (begin
                          (write '(blame g7283 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7468)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x-cnd7471
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7471
                        g7288
                        (begin
                          (write '(blame g7286 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7470)))
               (string?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x-cnd7473
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7291))))
                      (if x-cnd7473
                        g7291
                        (begin
                          (write '(blame g7289 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7472)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7474
                     (lambda (k j v)
                       (letrec*
                        ((g7475
                          (letrec*
                           ((x-cnd7476
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7476
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7475))))
                   g7474)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7477
                     (lambda (k j v)
                       (letrec*
                        ((g7478
                          (letrec*
                           ((x-cnd7479
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7479
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7483
                                (letrec*
                                 ((x7484
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7484))))
                               (x7480
                                (letrec*
                                 ((x7482
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7481
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7482 k j x7481)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7483 x7480)))))))
                        g7478))))
                   g7477)))
               (any? (lambda (v) (letrec* ((g7485 #t)) g7485)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x7487
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7487)))))
                   g7486)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7488
                     (letrec*
                      ((x-cnd7489
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7490
                                (letrec*
                                 ((x7491
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7491)))))
                              g7490))
                           g7294))))
                      (if x-cnd7489
                        g7294
                        (begin
                          (write '(blame g7292 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7488)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7492
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7493
                          (letrec*
                           ((x-cnd7494
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7495
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7495))
                                g7297))))
                           (if x-cnd7494
                             g7297
                             (begin
                               (write '(blame g7295 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7493))))
                   g7492)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7496
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7497
                          (letrec*
                           ((x-cnd7498
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7499
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7499))
                                g7300))))
                           (if x-cnd7498
                             g7300
                             (begin
                               (write '(blame g7298 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7497))))
                   g7496)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7500
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7501
                          (letrec*
                           ((x-cnd7502
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7503
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7503))
                                g7303))))
                           (if x-cnd7502
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7501))))
                   g7500)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7504
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7505
                          (letrec*
                           ((x-cnd7506
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7507
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7507))
                                g7306))))
                           (if x-cnd7506
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7505))))
                   g7504)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7508
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7509
                          (letrec*
                           ((x-cnd7510
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7511
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7511))
                                g7309))))
                           (if x-cnd7510
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7509))))
                   g7508)))
               (meta (lambda (v) (letrec* ((g7512 v)) g7512)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7513
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7515
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7516
                                 (letrec*
                                  ((x7517
                                    (letrec*
                                     ((x7519
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7518
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7316 x7519 x7518)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7517)))))
                               g7516))))
                          g7515))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7514
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7514))))))
                  g7513)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7520
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7522
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7523
                                 (letrec*
                                  ((x7524
                                    (letrec*
                                     ((x7526
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7525
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7323 x7526 x7525)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7524)))))
                               g7523))))
                          g7522))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7521
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7521))))))
                  g7520)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7527
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7529
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7530
                                 (letrec*
                                  ((x7531
                                    (letrec*
                                     ((x7533
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7532
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7330 x7533 x7532)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7531)))))
                               g7530))))
                          g7529))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7528
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7528))))))
                  g7527)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7534
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7536
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7537
                                 (letrec*
                                  ((x7538
                                    (letrec*
                                     ((x7540
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7539
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7337 x7540 x7539)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7538)))))
                               g7537))))
                          g7536))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7535
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7535))))))
                  g7534)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7541
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7543
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7544
                                 (letrec*
                                  ((x7545
                                    (letrec*
                                     ((x7547
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7546
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7344 x7547 x7546)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7545)))))
                               g7544))))
                          g7543))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7542
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7542))))))
                  g7541)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7548
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7550
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7551
                                 (letrec*
                                  ((x7552
                                    (letrec*
                                     ((x7554
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7553
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7351 x7554 x7553)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7552)))))
                               g7551))))
                          g7550))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7549
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7549))))))
                  g7548)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7555
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7557
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7558
                                 (letrec*
                                  ((x7559
                                    (letrec*
                                     ((x7561
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7560
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7358 x7561 x7560)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7559)))))
                               g7558))))
                          g7557))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7556
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7556))))))
                  g7555)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7562
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7564
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7565
                                 (letrec*
                                  ((x7566
                                    (letrec*
                                     ((x7568
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7567
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7365 x7568 x7567)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7566)))))
                               g7565))))
                          g7564))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7563
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7563))))))
                  g7562)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7569
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7571
                            (lambda (g7368)
                              (letrec*
                               ((g7572
                                 (letrec*
                                  ((x7573
                                    (letrec*
                                     ((x7574
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7371 x7574)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7573)))))
                               g7572))))
                          g7571))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7570
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7570))))))
                  g7569)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7575
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7577
                            (lambda (g7374)
                              (letrec*
                               ((g7578
                                 (letrec*
                                  ((x7579
                                    (letrec*
                                     ((x7580
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7377 x7580)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7579)))))
                               g7578))))
                          g7577))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7576
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7576))))))
                  g7575)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7581
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7583
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7584
                                 (letrec*
                                  ((x7585
                                    (letrec*
                                     ((x7587
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7586
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7384 x7587 x7586)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7585)))))
                               g7584))))
                          g7583))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7582
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7582))))))
                  g7581)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7588
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7590
                            (lambda (g7387)
                              (letrec*
                               ((g7591
                                 (letrec*
                                  ((x7592
                                    (letrec*
                                     ((x7593
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7390 x7593)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7592)))))
                               g7591))))
                          g7590))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7589
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7589))))))
                  g7588)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7594
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7596
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7597
                                 (letrec*
                                  ((x7598
                                    (letrec*
                                     ((x7600
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7599
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7397 x7600 x7599)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7598)))))
                               g7597))))
                          g7596))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7595
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7595))))))
                  g7594)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7602
                        (letrec*
                         ((x7603
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7603)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7602)))))
                   g7601)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7607))))
                    (g7605
                     (letrec*
                      ((x7608
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7608))))
                    (g7606
                     (letrec*
                      ((x-cnd7609
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7609
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7612
                           (letrec*
                            ((x7613
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7613))))
                          (x7610
                           (letrec*
                            ((x7611
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7611)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7612 x7610)))))))
                   g7606)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7615)))))
                   g7614)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7619)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7618)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7617)))))
                   g7616)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7621
                        (letrec*
                         ((x7622
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7623)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7622)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7621)))))
                   g7620)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7627))))
                    (g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7628))))
                    (g7626
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
                       ((g7629
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7630 res))
                       g7630))))
                   g7626)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7632
                        (letrec*
                         ((x7633
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7633)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7632)))))
                   g7631)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7635
                        (letrec*
                         ((x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7637)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7636)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7635)))))
                   g7634)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7640))))
                    (g7639
                     (letrec*
                      ((x-cnd7641
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7641
                        #f
                        (letrec*
                         ((x-cnd7642
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7643 k)))))
                         (if x-cnd7642
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7644)))))))))
                   g7639)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7646)))))
                   g7645)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7649))))
                    (g7648
                     (letrec*
                      ((x-cnd7650
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7650
                        ""
                        (letrec*
                         ((x7653
                           (letrec*
                            ((x7654
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7654))))
                          (x7651
                           (letrec*
                            ((x7652
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7652)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7653 x7651)))))))
                   g7648)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7658))))
                    (g7656
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7660
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7660))))
                   g7657)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7662
                        (letrec*
                         ((x7663
                           (letrec*
                            ((x7664
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7664)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7663)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7662)))))
                   g7661)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7668))))
                    (g7666
                     (letrec*
                      ((x7669
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7669))))
                    (g7667
                     (letrec*
                      ((x-cnd7670
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7670
                        x
                        (letrec*
                         ((x7672
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7671
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7672 x7671)))))))
                   g7667)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7673
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7673)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x-cnd7675
                        (letrec*
                         ((x7676 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7676)))))
                      (if x-cnd7675
                        (letrec*
                         ((x7677 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7677)))
                        #f))))
                   g7674)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x7679
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7679 9)))))
                      (letrec*
                       ((g7680
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x7681
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7681 10)))))
                            (letrec*
                             ((g7682
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x7683
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7683 32))))))
                             g7682)))))
                       g7680))))
                   g7678)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7684
                     (letrec*
                      ((x7685
                        (letrec*
                         ((x7686
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7686)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7685)))))
                   g7684)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x7689
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7689))))
                    (g7688
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7688)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7690 #f)) g7690)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7691
                     (letrec*
                      ((x7692
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7692)))))
                   g7691)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((x7695
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7695))))
                    (g7694
                     (letrec*
                      ((x-cnd7696
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7696
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7694)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7697
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7698
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd7699
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7699
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7700
                               (if val7252
                                 val7252
                                 (letrec*
                                  ((val7253
                                    (letrec*
                                     ((x-cnd7701
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7701
                                       (letrec*
                                        ((x-cnd7702
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7702
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7703
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd7704
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7704
                                             (letrec*
                                              ((x-cnd7705
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7705
                                                (letrec*
                                                 ((x-cnd7706
                                                   (letrec*
                                                    ((x7708
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7707
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7708 x7707)))))
                                                 (if x-cnd7706
                                                   (letrec*
                                                    ((x7710
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7709
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7710 x7709)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7711
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd7712
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7712
                                                (letrec*
                                                 ((x-cnd7713
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7713
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7714
                                                       (letrec*
                                                        ((x-cnd7715
                                                          (letrec*
                                                           ((x7716
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
                                                             (= x7716 n)))))
                                                        (if x-cnd7715
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7717
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
                                                                    ((g7718
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd7719
                                                                           (letrec*
                                                                            ((x7721
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
                                                                             (x7720
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
                                                                               x7721
                                                                               x7720)))))
                                                                         (if x-cnd7719
                                                                           (letrec*
                                                                            ((x7722
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
                                                                               x7722)))
                                                                           #f)))))
                                                                    g7718))))
                                                                g7717))))
                                                           (letrec*
                                                            ((g7723
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7723))
                                                          #f))))
                                                     g7714))
                                                   #f))
                                                #f)))))
                                         g7711)))))
                                   g7703)))))
                             g7700)))))
                       g7698))))
                   g7697)))
               (cdaaar
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
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7727)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7726)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7725)))))
                   g7724)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7729
                        (letrec*
                         ((x7730
                           (letrec*
                            ((x7731
                              (begin
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7731)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7730)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7729)))))
                   g7728)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7732
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7732)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7736
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7736))))
                    (g7734
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7737))))
                    (g7735
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
                       ((g7738
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7739 res))
                       g7739))))
                   g7735)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7740
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7740)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7744))))
                    (g7742
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7745))))
                    (g7743
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7746
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7746))))
                   g7743)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (letrec*
                         ((x7749
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7749)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7748)))))
                   g7747)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7751
                        (letrec*
                         ((x7752
                           (letrec*
                            ((x7753
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7753)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7752)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7751)))))
                   g7750)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7755
                        (letrec*
                         ((x7756
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7756)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7755)))))
                   g7754)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7758
                        (letrec*
                         ((x7759
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7759)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7758)))))
                   g7757)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7763))))
                    (g7761
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7764))))
                    (g7762
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7765)))))
                   g7762)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7767
                        (letrec*
                         ((x7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7769)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7768)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7767)))))
                   g7766)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7772))))
                    (g7771
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7771)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7773
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7773)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7775
                        (letrec*
                         ((x7776
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7776)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7775)))))
                   g7774)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7777
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7777)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7780))))
                    (g7779
                     (letrec*
                      ((x-cnd7781
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7781
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7785))))
                          (x7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7783)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7784 x7782)))))))
                   g7779)))
               (caaadr
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
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7789)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7788)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7787)))))
                   g7786)))
               (cddadr
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
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7793)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7792)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7791)))))
                   g7790)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7796))))
                    (g7795
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7797)))))
                   g7795)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7799
                        (letrec*
                         ((x7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7801)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7800)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7799)))))
                   g7798)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7805))))
                    (g7803
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7806))))
                    (g7804
                     (letrec*
                      ((x-cnd7807
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7807
                        (letrec*
                         ((g7808
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7808)
                        (letrec*
                         ((x-cnd7809
                           (letrec*
                            ((x7810
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7810)))))
                         (if x-cnd7809
                           (letrec*
                            ((g7811
                              (letrec*
                               ((x7812
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7812)))))
                            g7811)
                           (letrec*
                            ((x-cnd7813
                              (letrec*
                               ((x7814
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7814)))))
                            (if x-cnd7813
                              (letrec*
                               ((g7815
                                 (letrec*
                                  ((x7817
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7816
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7817 x7816)))))
                               g7815)
                              (letrec*
                               ((x-cnd7818
                                 (letrec*
                                  ((x7819
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7819)))))
                               (if x-cnd7818
                                 (letrec*
                                  ((g7820
                                    (letrec*
                                     ((x7823
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7822
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7821
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7823 x7822 x7821)))))
                                  g7820)
                                 (letrec*
                                  ((x-cnd7824
                                    (letrec*
                                     ((x7825
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7825)))))
                                  (if x-cnd7824
                                    (letrec*
                                     ((g7826
                                       (letrec*
                                        ((x7830
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7829
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7828
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7827
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7830 x7829 x7828 x7827)))))
                                     g7826)
                                    (letrec*
                                     ((x-cnd7831
                                       (letrec*
                                        ((x7832
                                          (letrec*
                                           ((x7833
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7833)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7832)))))
                                     (if x-cnd7831
                                       (letrec*
                                        ((g7834
                                          (letrec*
                                           ((x7840
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7839
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7838
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7837
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7835
                                             (letrec*
                                              ((x7836
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7836)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7840
                                              x7839
                                              x7838
                                              x7837
                                              x7835)))))
                                        g7834)
                                       (letrec*
                                        ((x-cnd7841
                                          (letrec*
                                           ((x7842
                                             (letrec*
                                              ((x7843
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7843)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7842)))))
                                        (if x-cnd7841
                                          (letrec*
                                           ((g7844
                                             (letrec*
                                              ((x7852
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7851
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7850
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7849
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7847
                                                (letrec*
                                                 ((x7848
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7848))))
                                               (x7845
                                                (letrec*
                                                 ((x7846
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7846)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7852
                                                 x7851
                                                 x7850
                                                 x7849
                                                 x7847
                                                 x7845)))))
                                           g7844)
                                          (letrec*
                                           ((x-cnd7853
                                             (letrec*
                                              ((x7854
                                                (letrec*
                                                 ((x7855
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7855)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7854)))))
                                           (if x-cnd7853
                                             (letrec*
                                              ((g7856
                                                (letrec*
                                                 ((x7866
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7865
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7864
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7863
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7861
                                                   (letrec*
                                                    ((x7862
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7862))))
                                                  (x7859
                                                   (letrec*
                                                    ((x7860
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7860))))
                                                  (x7857
                                                   (letrec*
                                                    ((x7858
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7858)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7866
                                                    x7865
                                                    x7864
                                                    x7863
                                                    x7861
                                                    x7859
                                                    x7857)))))
                                              g7856)
                                             (letrec*
                                              ((g7867
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7867)))))))))))))))))))
                   g7804)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7870
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7870))))
                    (g7869
                     (letrec*
                      ((x-cnd7871
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7871
                        #f
                        (letrec*
                         ((x-cnd7872
                           (letrec*
                            ((x7873
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7873 e)))))
                         (if x-cnd7872
                           l
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7874)))))))))
                   g7869)))
               (cddddr
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
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7878)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7877)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7876)))))
                   g7875)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7880
                        (letrec*
                         ((x7881
                           (letrec*
                            ((x7882
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7882)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7881)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7880)))))
                   g7879)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7883
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7883)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7886))))
                    (g7885
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7885)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7888
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7888))))
                   g7887)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7890
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7890)))))
                   g7889)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd7892
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7892
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7893)))
                           #f))))
                      (letrec*
                       ((g7894
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7894))))
                   g7891)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7896
                        (letrec*
                         ((x7897
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7898)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7897)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7896)))))
                   g7895)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x-cnd7900
                        (letrec*
                         ((x7901 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7901 c)))))
                      (if x-cnd7900
                        (letrec*
                         ((x7902 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7902)))
                        #f))))
                   g7899)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7905
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7905))))
                    (g7904
                     (letrec*
                      ((x-cnd7906
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7906
                        #f
                        (letrec*
                         ((x-cnd7907
                           (letrec*
                            ((x7908
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7908 k)))))
                         (if x-cnd7907
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7909
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7909)))))))))
                   g7904)))
               (not (lambda (x) (letrec* ((g7910 (if x #f #t))) g7910)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7911
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7911)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7914))))
                    (g7913
                     (letrec*
                      ((x-cnd7915
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7915
                        #f
                        (letrec*
                         ((x-cnd7916
                           (letrec*
                            ((x7917
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7917 e)))))
                         (if x-cnd7916
                           l
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7918)))))))))
                   g7913)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7920
                        (letrec*
                         ((x7921
                           (letrec*
                            ((x7922
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7922)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7921)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7920)))))
                   g7919)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7925))))
                    (g7924
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7926
                             (letrec*
                              ((x-cnd7927
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7927
                                0
                                (letrec*
                                 ((x7928
                                   (letrec*
                                    ((x7929
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7929)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7928)))))))
                           g7926))))
                      (letrec*
                       ((g7930
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7930))))
                   g7924)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7934))))
                    (g7932
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7935))))
                    (g7933
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7936
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7936))))
                   g7933)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7938)))))
                   g7937)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7940
                        (letrec*
                         ((x7941
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7941)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7940)))))
                   g7939)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7944))))
                    (g7943
                     (letrec*
                      ((x-cnd7945
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7945
                        #f
                        (letrec*
                         ((x-cnd7946
                           (letrec*
                            ((x7947
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7947 k)))))
                         (if x-cnd7946
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7948
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7948)))))))))
                   g7943)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7950)))))
                   g7949)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7954
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7954))))
                    (g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7956)))))
                   g7953)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7958
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7958))))
                   g7957)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7959
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7962))))
                    (g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7963))))
                    (g7961
                     (letrec*
                      ((x-cnd7964
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7964
                        #t
                        (letrec*
                         ((x-cnd7965
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7965
                           (letrec*
                            ((g7966
                              (letrec*
                               ((x7968
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7968))))
                             (g7967
                              (letrec*
                               ((x7969
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7969)))))
                            g7967)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7961)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7972))))
                    (g7971
                     (letrec*
                      ((x-cnd7973
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7973
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7971)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7974
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7977))))
                    (g7975
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7978))))
                    (g7976
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7979
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7979))))
                   g7976)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7980
                     (letrec*
                      ((x7981
                        (letrec*
                         ((x7982
                           (letrec*
                            ((x7983
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7983)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7982)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7981)))))
                   g7980)))
               (newline (lambda () (letrec* ((g7984 #f)) g7984)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x7987
                        (letrec*
                         ((x7988
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7988))))
                       (x7986
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7987 x7986)))))
                   g7985)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x7993
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7993))))
                    (g7990
                     (letrec*
                      ((x7994
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7994))))
                    (g7991
                     (letrec*
                      ((x7995
                        (letrec*
                         ((x7996
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7996)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7995))))
                    (g7992
                     (letrec*
                      ((x-cnd7997
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7997
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7999
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7998
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7999 x7998)))))))
                   g7992)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((x-cnd8001
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8001
                        a
                        (letrec*
                         ((x8002
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x8002)))))))
                   g8000)))
               (f
                (lambda (g)
                  (letrec*
                   ((g8003
                     (lambda (x y)
                       (letrec*
                        ((g8004
                          (letrec*
                           ((x8006
                             (begin
                               (write '(funapp 1668 36))
                               (display "\n")
                               (+ x 1)))
                            (x8005
                             (begin
                               (write '(funapp 1668 52))
                               (display "\n")
                               (+ y 1))))
                           (begin
                             (write '(funapp 1669 28))
                             (display "\n")
                             (g x8006 x8005)))))
                        g8004))))
                   g8003)))
               (unzip
                (lambda (x k)
                  (letrec*
                   ((g8007
                     (letrec*
                      ((x-cnd8008
                        (begin
                          (write '(funapp 1677 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd8008
                        (begin
                          (write '(funapp 1679 25))
                          (display "\n")
                          (k 0 0))
                        (letrec*
                         ((x8010
                           (begin
                             (write '(funapp 1681 34))
                             (display "\n")
                             (- x 1)))
                          (x8009
                           (begin
                             (write '(funapp 1681 50))
                             (display "\n")
                             (f k))))
                         (begin
                           (write '(funapp 1682 26))
                           (display "\n")
                           (unzip x8010 x8009)))))))
                   g8007)))
               (zip
                (lambda (x y)
                  (letrec*
                   ((g8011
                     (letrec*
                      ((x-cnd8012
                        (begin
                          (write '(funapp 1689 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd8012
                        (letrec*
                         ((x-cnd8013
                           (begin
                             (write '(funapp 1691 46))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd8013
                           0
                           (begin
                             (write '(funapp 1691 71))
                             (display "\n")
                             'fail)))
                        (letrec*
                         ((x-cnd8014
                           (begin
                             (write '(funapp 1693 38))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd8014
                           (begin
                             (write '(funapp 1695 27))
                             (display "\n")
                             'fail)
                           (letrec*
                            ((x8015
                              (letrec*
                               ((x8017
                                 (begin
                                   (write '(funapp 1699 40))
                                   (display "\n")
                                   (- x 1)))
                                (x8016
                                 (begin
                                   (write '(funapp 1699 56))
                                   (display "\n")
                                   (- y 1))))
                               (begin
                                 (write '(funapp 1700 32))
                                 (display "\n")
                                 (zip x8017 x8016)))))
                            (begin
                              (write '(funapp 1701 29))
                              (display "\n")
                              (+ 1 x8015)))))))))
                   g8011)))
               (main
                (lambda (n)
                  (letrec*
                   ((g8018
                     (begin
                       (write '(funapp 1703 51))
                       (display "\n")
                       (unzip n zip))))
                   g8018))))
              (letrec*
               ((g8019
                 (begin
                   (write '(funapp 1706 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1707 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8021
                          (letrec*
                           ((xj7398
                             (begin
                               (write '(funapp 1711 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1711 37))
                                  (display "\n")
                                  'module))))
                            (xk7399
                             (begin
                               (write '(funapp 1711 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1711 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8022
                              (begin
                                (write '(funapp 1714 27))
                                (display "\n")
                                ((lambda (j7401 k7402 f7403)
                                   (letrec*
                                    ((g8023
                                      (lambda (g7400)
                                        (letrec*
                                         ((g8024
                                           (letrec*
                                            ((x8025
                                              (letrec*
                                               ((x8026
                                                 (begin
                                                   (write '(funapp 1724 44))
                                                   (display "\n")
                                                   ((lambda (j7411 k7412 f7413)
                                                      (letrec*
                                                       ((g8027
                                                         (lambda (g7409 g7410)
                                                           (letrec*
                                                            ((g8028
                                                              (letrec*
                                                               ((x8029
                                                                 (letrec*
                                                                  ((x8031
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1734
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (integer?/c
                                                                       j7411
                                                                       k7412
                                                                       g7409)))
                                                                   (x8030
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1739
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (integer?/c
                                                                       j7411
                                                                       k7412
                                                                       g7410))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1743
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7413
                                                                     x8031
                                                                     x8030)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1746
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7411
                                                                  k7412
                                                                  x8029)))))
                                                            g8028))))
                                                       g8027))
                                                    j7401
                                                    k7402
                                                    g7400))))
                                               (begin
                                                 (write '(funapp 1755 42))
                                                 (display "\n")
                                                 (f7403 x8026)))))
                                            (begin
                                              (write '(funapp 1756 39))
                                              (display "\n")
                                              ((lambda (j7406 k7407 f7408)
                                                 (letrec*
                                                  ((g8032
                                                    (lambda (g7404 g7405)
                                                      (letrec*
                                                       ((g8033
                                                         (letrec*
                                                          ((x8034
                                                            (letrec*
                                                             ((x8036
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1766
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7406
                                                                  k7407
                                                                  g7404)))
                                                              (x8035
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1771
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7406
                                                                  k7407
                                                                  g7405))))
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1775
                                                                  54))
                                                               (display "\n")
                                                               (f7408
                                                                x8036
                                                                x8035)))))
                                                          (begin
                                                            (write
                                                             '(funapp 1776 51))
                                                            (display "\n")
                                                            (integer?/c
                                                             j7406
                                                             k7407
                                                             x8034)))))
                                                       g8033))))
                                                  g8032))
                                               j7401
                                               k7402
                                               x8025)))))
                                         g8024))))
                                    g8023))
                                 xj7398
                                 xk7399
                                 f))))
                            g8022)))
                         (x8020 (input)))
                        (begin
                          (write '(funapp 1792 21))
                          (display "\n")
                          (x8021 x8020)))
                       (letrec*
                        ((x8038
                          (letrec*
                           ((xj7414
                             (begin
                               (write '(funapp 1796 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1796 37))
                                  (display "\n")
                                  'module))))
                            (xk7415
                             (begin
                               (write '(funapp 1796 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1796 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8039
                              (begin
                                (write '(funapp 1799 27))
                                (display "\n")
                                ((lambda (j7417 k7418 f7419)
                                   (letrec*
                                    ((g8040
                                      (lambda (g7416)
                                        (letrec*
                                         ((g8041
                                           (letrec*
                                            ((x8042
                                              (letrec*
                                               ((x8043
                                                 (begin
                                                   (write '(funapp 1809 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7417
                                                    k7418
                                                    g7416))))
                                               (begin
                                                 (write '(funapp 1810 42))
                                                 (display "\n")
                                                 (f7419 x8043)))))
                                            (begin
                                              (write '(funapp 1811 39))
                                              (display "\n")
                                              (integer?/c
                                               j7417
                                               k7418
                                               x8042)))))
                                         g8041))))
                                    g8040))
                                 xj7414
                                 xk7415
                                 main))))
                            g8039)))
                         (x8037 (input)))
                        (begin
                          (write '(funapp 1819 21))
                          (display "\n")
                          (x8038 x8037)))))))))
               g8019))))
           g7448))))
       g7431)))
    g7430)))
