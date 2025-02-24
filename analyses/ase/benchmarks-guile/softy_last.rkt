(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7404 #t)) g7404)))
    (meta (lambda (v) (letrec* ((g7405 v)) g7405)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7406
          (letrec*
           ((g7407
             (letrec*
              ((x-e7408 lst))
              (letrec*
               ((v1742 x-e7408))
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
                   ((x-cnd7409
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7409
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
           g7407)))
        g7406)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7410 (lambda (v) (letrec* ((g7411 v)) g7411)))) g7410)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7412
          (letrec*
           ((x7413 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7413)))))
        g7412))))
   (letrec*
    ((g7414
      (letrec*
       ((g7415
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7416
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7416)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7417
                 (letrec*
                  ((x7419
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7419))))
                (g7418
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7420
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7421 (if val7245 val7245 #f))) g7421)))))
                   g7420))))
               g7418)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7422
                 (letrec*
                  ((x7424
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7424))))
                (g7423
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7425
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7426 (if val7247 val7247 #f))) g7426)))))
                   g7425))))
               g7423)))
           (>
            (lambda (x y)
              (letrec*
               ((g7427
                 (letrec*
                  ((x7429
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7429))))
                (g7428
                 (letrec*
                  ((x7430
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7430)))))
               g7428)))
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
           ((g7431 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7432
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7433
                     (lambda (k j lst)
                       (letrec*
                        ((g7434
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7435
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7435))
                             lst))))
                        g7434))))
                   g7433)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7436
                     (letrec*
                      ((x-cnd7437
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7437
                        g7264
                        (begin
                          (write '(blame g7262 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7436)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7438
                     (letrec*
                      ((x-cnd7439
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7439
                        g7267
                        (begin
                          (write '(blame g7265 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7438)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x-cnd7441
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7441
                        g7270
                        (begin
                          (write '(blame g7268 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7440)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7444 #t)) g7444)) g7273))))
                      (if x-cnd7443
                        g7273
                        (begin
                          (write '(blame g7271 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7442)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x-cnd7446
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7447 #t)) g7447)) g7276))))
                      (if x-cnd7446
                        g7276
                        (begin
                          (write '(blame g7274 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7445)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7449
                        g7279
                        (begin
                          (write '(blame g7277 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7448)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7451
                        g7282
                        (begin
                          (write '(blame g7280 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7450)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7453
                        g7285
                        (begin
                          (write '(blame g7283 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7452)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7455
                        g7288
                        (begin
                          (write '(blame g7286 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7454)))
               (string?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7291))))
                      (if x-cnd7457
                        g7291
                        (begin
                          (write '(blame g7289 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7456)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7458
                     (lambda (k j v)
                       (letrec*
                        ((g7459
                          (letrec*
                           ((x-cnd7460
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7460
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7459))))
                   g7458)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7461
                     (lambda (k j v)
                       (letrec*
                        ((g7462
                          (letrec*
                           ((x-cnd7463
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7463
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7467
                                (letrec*
                                 ((x7468
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7468))))
                               (x7464
                                (letrec*
                                 ((x7466
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7465
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7466 k j x7465)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7467 x7464)))))))
                        g7462))))
                   g7461)))
               (any? (lambda (v) (letrec* ((g7469 #t)) g7469)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x7471
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7471)))))
                   g7470)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x-cnd7473
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7474
                                (letrec*
                                 ((x7475
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7475)))))
                              g7474))
                           g7294))))
                      (if x-cnd7473
                        g7294
                        (begin
                          (write '(blame g7292 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7472)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7476
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7477
                          (letrec*
                           ((x-cnd7478
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7479
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7479))
                                g7297))))
                           (if x-cnd7478
                             g7297
                             (begin
                               (write '(blame g7295 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7477))))
                   g7476)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7480
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7481
                          (letrec*
                           ((x-cnd7482
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7483
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7483))
                                g7300))))
                           (if x-cnd7482
                             g7300
                             (begin
                               (write '(blame g7298 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7481))))
                   g7480)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7484
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7485
                          (letrec*
                           ((x-cnd7486
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7487
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7487))
                                g7303))))
                           (if x-cnd7486
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7485))))
                   g7484)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7488
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7489
                          (letrec*
                           ((x-cnd7490
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7491
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7491))
                                g7306))))
                           (if x-cnd7490
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7489))))
                   g7488)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7492
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7493
                          (letrec*
                           ((x-cnd7494
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7495
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7495))
                                g7309))))
                           (if x-cnd7494
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7493))))
                   g7492)))
               (meta (lambda (v) (letrec* ((g7496 v)) g7496)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7497
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7499
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7500
                                 (letrec*
                                  ((x7501
                                    (letrec*
                                     ((x7503
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7502
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7316 x7503 x7502)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7501)))))
                               g7500))))
                          g7499))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7498
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7498))))))
                  g7497)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7504
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7506
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7507
                                 (letrec*
                                  ((x7508
                                    (letrec*
                                     ((x7510
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7509
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7323 x7510 x7509)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7508)))))
                               g7507))))
                          g7506))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7505
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7505))))))
                  g7504)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7511
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7513
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7514
                                 (letrec*
                                  ((x7515
                                    (letrec*
                                     ((x7517
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7516
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7330 x7517 x7516)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7515)))))
                               g7514))))
                          g7513))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7512
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7512))))))
                  g7511)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7518
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7520
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7521
                                 (letrec*
                                  ((x7522
                                    (letrec*
                                     ((x7524
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7523
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7337 x7524 x7523)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7522)))))
                               g7521))))
                          g7520))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7519
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7519))))))
                  g7518)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7525
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7527
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7528
                                 (letrec*
                                  ((x7529
                                    (letrec*
                                     ((x7531
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7530
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7344 x7531 x7530)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7529)))))
                               g7528))))
                          g7527))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7526
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7526))))))
                  g7525)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7532
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7534
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7535
                                 (letrec*
                                  ((x7536
                                    (letrec*
                                     ((x7538
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7537
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7351 x7538 x7537)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7536)))))
                               g7535))))
                          g7534))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7533
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7533))))))
                  g7532)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7539
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7541
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7542
                                 (letrec*
                                  ((x7543
                                    (letrec*
                                     ((x7545
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7544
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7358 x7545 x7544)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7543)))))
                               g7542))))
                          g7541))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7540
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7540))))))
                  g7539)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7546
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7548
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7549
                                 (letrec*
                                  ((x7550
                                    (letrec*
                                     ((x7552
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7551
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7365 x7552 x7551)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7550)))))
                               g7549))))
                          g7548))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7547
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7547))))))
                  g7546)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7553
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7555
                            (lambda (g7368)
                              (letrec*
                               ((g7556
                                 (letrec*
                                  ((x7557
                                    (letrec*
                                     ((x7558
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7371 x7558)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7557)))))
                               g7556))))
                          g7555))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7554
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7554))))))
                  g7553)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7559
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7561
                            (lambda (g7374)
                              (letrec*
                               ((g7562
                                 (letrec*
                                  ((x7563
                                    (letrec*
                                     ((x7564
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7377 x7564)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7563)))))
                               g7562))))
                          g7561))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7560
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7560))))))
                  g7559)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7565
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7567
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7568
                                 (letrec*
                                  ((x7569
                                    (letrec*
                                     ((x7571
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7570
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7384 x7571 x7570)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7569)))))
                               g7568))))
                          g7567))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7566
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7566))))))
                  g7565)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7572
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7574
                            (lambda (g7387)
                              (letrec*
                               ((g7575
                                 (letrec*
                                  ((x7576
                                    (letrec*
                                     ((x7577
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7390 x7577)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7576)))))
                               g7575))))
                          g7574))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7573
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7573))))))
                  g7572)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7578
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7580
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7581
                                 (letrec*
                                  ((x7582
                                    (letrec*
                                     ((x7584
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7583
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7397 x7584 x7583)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7582)))))
                               g7581))))
                          g7580))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7579
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7579))))))
                  g7578)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7585
                     (letrec*
                      ((x7586
                        (letrec*
                         ((x7587
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7587)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7586)))))
                   g7585)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7588
                     (letrec*
                      ((x7591
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7591))))
                    (g7589
                     (letrec*
                      ((x7592
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7592))))
                    (g7590
                     (letrec*
                      ((x-cnd7593
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7593
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7596
                           (letrec*
                            ((x7597
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7597))))
                          (x7594
                           (letrec*
                            ((x7595
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7595)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7596 x7594)))))))
                   g7590)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7599)))))
                   g7598)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7601
                        (letrec*
                         ((x7602
                           (letrec*
                            ((x7603
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7603)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7602)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7601)))))
                   g7600)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7605
                        (letrec*
                         ((x7606
                           (letrec*
                            ((x7607
                              (begin
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7607)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7606)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7605)))))
                   g7604)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7611))))
                    (g7609
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7612))))
                    (g7610
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
                       ((g7613
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7614 res))
                       g7614))))
                   g7610)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (letrec*
                         ((x7617
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7617)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7616)))))
                   g7615)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7619
                        (letrec*
                         ((x7620
                           (letrec*
                            ((x7621
                              (begin
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7621)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7620)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7619)))))
                   g7618)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7624))))
                    (g7623
                     (letrec*
                      ((x-cnd7625
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7625
                        #f
                        (letrec*
                         ((x-cnd7626
                           (letrec*
                            ((x7627
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7627 k)))))
                         (if x-cnd7626
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7628)))))))))
                   g7623)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7630)))))
                   g7629)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7633))))
                    (g7632
                     (letrec*
                      ((x-cnd7634
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7634
                        ""
                        (letrec*
                         ((x7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7638))))
                          (x7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7636)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7637 x7635)))))))
                   g7632)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7642))))
                    (g7640
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7643))))
                    (g7641
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7644
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7644))))
                   g7641)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7646
                        (letrec*
                         ((x7647
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7648)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7647)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7646)))))
                   g7645)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7652))))
                    (g7650
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7653))))
                    (g7651
                     (letrec*
                      ((x-cnd7654
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7654
                        x
                        (letrec*
                         ((x7656
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7655
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7656 x7655)))))))
                   g7651)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7657
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7657)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x-cnd7659
                        (letrec*
                         ((x7660 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7660)))))
                      (if x-cnd7659
                        (letrec*
                         ((x7661 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7661)))
                        #f))))
                   g7658)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x7663
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7663 9)))))
                      (letrec*
                       ((g7664
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x7665
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7665 10)))))
                            (letrec*
                             ((g7666
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x7667
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7667 32))))))
                             g7666)))))
                       g7664))))
                   g7662)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x7669
                        (letrec*
                         ((x7670
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7670)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7669)))))
                   g7668)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7673))))
                    (g7672
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7672)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7674 #f)) g7674)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7676)))))
                   g7675)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7679))))
                    (g7678
                     (letrec*
                      ((x-cnd7680
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7680
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7678)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7682
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd7683
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7683
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7684
                               (if val7252
                                 val7252
                                 (letrec*
                                  ((val7253
                                    (letrec*
                                     ((x-cnd7685
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7685
                                       (letrec*
                                        ((x-cnd7686
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7686
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7687
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd7688
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7688
                                             (letrec*
                                              ((x-cnd7689
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7689
                                                (letrec*
                                                 ((x-cnd7690
                                                   (letrec*
                                                    ((x7692
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7691
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7692 x7691)))))
                                                 (if x-cnd7690
                                                   (letrec*
                                                    ((x7694
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7693
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7694 x7693)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7695
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd7696
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7696
                                                (letrec*
                                                 ((x-cnd7697
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7697
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7698
                                                       (letrec*
                                                        ((x-cnd7699
                                                          (letrec*
                                                           ((x7700
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
                                                             (= x7700 n)))))
                                                        (if x-cnd7699
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7701
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
                                                                    ((g7702
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd7703
                                                                           (letrec*
                                                                            ((x7705
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
                                                                             (x7704
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
                                                                               x7705
                                                                               x7704)))))
                                                                         (if x-cnd7703
                                                                           (letrec*
                                                                            ((x7706
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
                                                                               x7706)))
                                                                           #f)))))
                                                                    g7702))))
                                                                g7701))))
                                                           (letrec*
                                                            ((g7707
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7707))
                                                          #f))))
                                                     g7698))
                                                   #f))
                                                #f)))))
                                         g7695)))))
                                   g7687)))))
                             g7684)))))
                       g7682))))
                   g7681)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7708
                     (letrec*
                      ((x7709
                        (letrec*
                         ((x7710
                           (letrec*
                            ((x7711
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7711)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7710)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7709)))))
                   g7708)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7712
                     (letrec*
                      ((x7713
                        (letrec*
                         ((x7714
                           (letrec*
                            ((x7715
                              (begin
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7715)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7714)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7713)))))
                   g7712)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7716
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7716)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7717
                     (letrec*
                      ((x7720
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7720))))
                    (g7718
                     (letrec*
                      ((x7721
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7721))))
                    (g7719
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
                       ((g7722
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7723 res))
                       g7723))))
                   g7719)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7724
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7724)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7725
                     (letrec*
                      ((x7728
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7728))))
                    (g7726
                     (letrec*
                      ((x7729
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7729))))
                    (g7727
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7730
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7730))))
                   g7727)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7732
                        (letrec*
                         ((x7733
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7733)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7732)))))
                   g7731)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7735
                        (letrec*
                         ((x7736
                           (letrec*
                            ((x7737
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7737)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7736)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7735)))))
                   g7734)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7739
                        (letrec*
                         ((x7740
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7740)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7739)))))
                   g7738)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7742
                        (letrec*
                         ((x7743
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7743)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7742)))))
                   g7741)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7747))))
                    (g7745
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7748))))
                    (g7746
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7749)))))
                   g7746)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7753)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7752)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7751)))))
                   g7750)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7756))))
                    (g7755
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7755)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7757
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7757)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7760)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7759)))))
                   g7758)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7761
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7761)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7764))))
                    (g7763
                     (letrec*
                      ((x-cnd7765
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7765
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7769))))
                          (x7766
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7767)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7768 x7766)))))))
                   g7763)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7773)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7772)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7775
                        (letrec*
                         ((x7776
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7777)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7776)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7775)))))
                   g7774)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7780))))
                    (g7779
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7781)))))
                   g7779)))
               (caadar
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
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7785)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7784)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7783)))))
                   g7782)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7789))))
                    (g7787
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7790))))
                    (g7788
                     (letrec*
                      ((x-cnd7791
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7791
                        (letrec*
                         ((g7792
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7792)
                        (letrec*
                         ((x-cnd7793
                           (letrec*
                            ((x7794
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7794)))))
                         (if x-cnd7793
                           (letrec*
                            ((g7795
                              (letrec*
                               ((x7796
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7796)))))
                            g7795)
                           (letrec*
                            ((x-cnd7797
                              (letrec*
                               ((x7798
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7798)))))
                            (if x-cnd7797
                              (letrec*
                               ((g7799
                                 (letrec*
                                  ((x7801
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7800
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7801 x7800)))))
                               g7799)
                              (letrec*
                               ((x-cnd7802
                                 (letrec*
                                  ((x7803
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7803)))))
                               (if x-cnd7802
                                 (letrec*
                                  ((g7804
                                    (letrec*
                                     ((x7807
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7806
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7805
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7807 x7806 x7805)))))
                                  g7804)
                                 (letrec*
                                  ((x-cnd7808
                                    (letrec*
                                     ((x7809
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7809)))))
                                  (if x-cnd7808
                                    (letrec*
                                     ((g7810
                                       (letrec*
                                        ((x7814
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7813
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7812
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7811
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7814 x7813 x7812 x7811)))))
                                     g7810)
                                    (letrec*
                                     ((x-cnd7815
                                       (letrec*
                                        ((x7816
                                          (letrec*
                                           ((x7817
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7817)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7816)))))
                                     (if x-cnd7815
                                       (letrec*
                                        ((g7818
                                          (letrec*
                                           ((x7824
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7823
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7822
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7821
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7819
                                             (letrec*
                                              ((x7820
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7820)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7824
                                              x7823
                                              x7822
                                              x7821
                                              x7819)))))
                                        g7818)
                                       (letrec*
                                        ((x-cnd7825
                                          (letrec*
                                           ((x7826
                                             (letrec*
                                              ((x7827
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7827)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7826)))))
                                        (if x-cnd7825
                                          (letrec*
                                           ((g7828
                                             (letrec*
                                              ((x7836
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7835
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7834
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7833
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7831
                                                (letrec*
                                                 ((x7832
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7832))))
                                               (x7829
                                                (letrec*
                                                 ((x7830
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7830)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7836
                                                 x7835
                                                 x7834
                                                 x7833
                                                 x7831
                                                 x7829)))))
                                           g7828)
                                          (letrec*
                                           ((x-cnd7837
                                             (letrec*
                                              ((x7838
                                                (letrec*
                                                 ((x7839
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7839)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7838)))))
                                           (if x-cnd7837
                                             (letrec*
                                              ((g7840
                                                (letrec*
                                                 ((x7850
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7849
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7848
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7847
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7845
                                                   (letrec*
                                                    ((x7846
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7846))))
                                                  (x7843
                                                   (letrec*
                                                    ((x7844
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7844))))
                                                  (x7841
                                                   (letrec*
                                                    ((x7842
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7842)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7850
                                                    x7849
                                                    x7848
                                                    x7847
                                                    x7845
                                                    x7843
                                                    x7841)))))
                                              g7840)
                                             (letrec*
                                              ((g7851
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7851)))))))))))))))))))
                   g7788)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7854))))
                    (g7853
                     (letrec*
                      ((x-cnd7855
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7855
                        #f
                        (letrec*
                         ((x-cnd7856
                           (letrec*
                            ((x7857
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7857 e)))))
                         (if x-cnd7856
                           l
                           (letrec*
                            ((x7858
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7858)))))))))
                   g7853)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((x7860
                        (letrec*
                         ((x7861
                           (letrec*
                            ((x7862
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7862)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7861)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7860)))))
                   g7859)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((x7864
                        (letrec*
                         ((x7865
                           (letrec*
                            ((x7866
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7866)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7865)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7864)))))
                   g7863)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7867
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7867)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7870
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7870))))
                    (g7869
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7869)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7872
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7872))))
                   g7871)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7874
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7874)))))
                   g7873)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd7876
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7876
                           (letrec*
                            ((x7877
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7877)))
                           #f))))
                      (letrec*
                       ((g7878
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7878))))
                   g7875)))
               (cddaar
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
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7882)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7881)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7880)))))
                   g7879)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((x-cnd7884
                        (letrec*
                         ((x7885 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7885 c)))))
                      (if x-cnd7884
                        (letrec*
                         ((x7886 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7886)))
                        #f))))
                   g7883)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x7889
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7889))))
                    (g7888
                     (letrec*
                      ((x-cnd7890
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7890
                        #f
                        (letrec*
                         ((x-cnd7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7892 k)))))
                         (if x-cnd7891
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7893
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7893)))))))))
                   g7888)))
               (not (lambda (x) (letrec* ((g7894 (if x #f #t))) g7894)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7895
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7895)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7896
                     (letrec*
                      ((x7898
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7898))))
                    (g7897
                     (letrec*
                      ((x-cnd7899
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7899
                        #f
                        (letrec*
                         ((x-cnd7900
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7901 e)))))
                         (if x-cnd7900
                           l
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7902)))))))))
                   g7897)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7904
                        (letrec*
                         ((x7905
                           (letrec*
                            ((x7906
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7906)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7905)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7904)))))
                   g7903)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7909
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7909))))
                    (g7908
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7910
                             (letrec*
                              ((x-cnd7911
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7911
                                0
                                (letrec*
                                 ((x7912
                                   (letrec*
                                    ((x7913
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7913)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7912)))))))
                           g7910))))
                      (letrec*
                       ((g7914
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7914))))
                   g7908)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7918))))
                    (g7916
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7919))))
                    (g7917
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7920
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7920))))
                   g7917)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7922)))))
                   g7921)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7924
                        (letrec*
                         ((x7925
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7925)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7924)))))
                   g7923)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7926
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7928))))
                    (g7927
                     (letrec*
                      ((x-cnd7929
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7929
                        #f
                        (letrec*
                         ((x-cnd7930
                           (letrec*
                            ((x7931
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7931 k)))))
                         (if x-cnd7930
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7932
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7932)))))))))
                   g7927)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7934)))))
                   g7933)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7938))))
                    (g7936
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7939))))
                    (g7937
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7940)))))
                   g7937)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7942
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7942))))
                   g7941)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7946))))
                    (g7944
                     (letrec*
                      ((x7947
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7947))))
                    (g7945
                     (letrec*
                      ((x-cnd7948
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7948
                        #t
                        (letrec*
                         ((x-cnd7949
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7949
                           (letrec*
                            ((g7950
                              (letrec*
                               ((x7952
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7952))))
                             (g7951
                              (letrec*
                               ((x7953
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7953)))))
                            g7951)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7945)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7954
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7956))))
                    (g7955
                     (letrec*
                      ((x-cnd7957
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7957
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7955)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7962))))
                    (g7960
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7963
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7963))))
                   g7960)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7965
                        (letrec*
                         ((x7966
                           (letrec*
                            ((x7967
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7967)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7966)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7965)))))
                   g7964)))
               (newline (lambda () (letrec* ((g7968 #f)) g7968)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7969
                     (letrec*
                      ((x7971
                        (letrec*
                         ((x7972
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7972))))
                       (x7970
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7971 x7970)))))
                   g7969)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7973
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7977))))
                    (g7974
                     (letrec*
                      ((x7978
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7978))))
                    (g7975
                     (letrec*
                      ((x7979
                        (letrec*
                         ((x7980
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7980)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7979))))
                    (g7976
                     (letrec*
                      ((x-cnd7981
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7981
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7983
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7982
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7983 x7982)))))))
                   g7976)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x-cnd7985
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7985
                        a
                        (letrec*
                         ((x7986
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7986)))))))
                   g7984)))
               (Y
                (lambda (f)
                  (letrec*
                   ((g7987
                     (lambda (y)
                       (letrec*
                        ((g7988
                          (letrec*
                           ((x7989
                             (begin
                               (write '(funapp 1669 30))
                               (display "\n")
                               ((lambda (x)
                                  (letrec*
                                   ((g7993
                                     (begin
                                       (write '(funapp 1672 36))
                                       (display "\n")
                                       (f
                                        (lambda (z)
                                          (letrec*
                                           ((g7994
                                             (letrec*
                                              ((x7995
                                                (begin
                                                  (write '(funapp 1676 59))
                                                  (display "\n")
                                                  (x x))))
                                              (begin
                                                (write '(funapp 1676 67))
                                                (display "\n")
                                                (x7995 z)))))
                                           g7994))))))
                                   g7993))
                                (lambda (x)
                                  (letrec*
                                   ((g7990
                                     (begin
                                       (write '(funapp 1682 36))
                                       (display "\n")
                                       (f
                                        (lambda (z)
                                          (letrec*
                                           ((g7991
                                             (letrec*
                                              ((x7992
                                                (begin
                                                  (write '(funapp 1686 59))
                                                  (display "\n")
                                                  (x x))))
                                              (begin
                                                (write '(funapp 1686 67))
                                                (display "\n")
                                                (x7992 z)))))
                                           g7991))))))
                                   g7990))))))
                           (begin
                             (write '(funapp 1689 28))
                             (display "\n")
                             (x7989 y)))))
                        g7988))))
                   g7987)))
               (last
                (lambda (l)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x7997
                        (begin
                          (write '(funapp 1698 25))
                          (display "\n")
                          (Y
                           (lambda (f)
                             (letrec*
                              ((g7998
                                (lambda (x)
                                  (letrec*
                                   ((g7999
                                     (letrec*
                                      ((x-cnd8000
                                        (letrec*
                                         ((x8001
                                           (begin
                                             (write '(funapp 1708 48))
                                             (display "\n")
                                             (cdr x))))
                                         (begin
                                           (write '(funapp 1709 40))
                                           (display "\n")
                                           (empty? x8001)))))
                                      (if x-cnd8000
                                        (begin
                                          (write '(funapp 1711 39))
                                          (display "\n")
                                          (car x))
                                        (letrec*
                                         ((x8002
                                           (begin
                                             (write '(funapp 1712 56))
                                             (display "\n")
                                             (cdr x))))
                                         (begin
                                           (write '(funapp 1712 66))
                                           (display "\n")
                                           (f x8002)))))))
                                   g7999))))
                              g7998))))))
                      (begin
                        (write '(funapp 1715 23))
                        (display "\n")
                        (x7997 l)))))
                   g7996))))
              (letrec*
               ((g8003
                 (begin
                   (write '(funapp 1719 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1720 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8005
                          (letrec*
                           ((xj7398
                             (begin
                               (write '(funapp 1724 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1724 37))
                                  (display "\n")
                                  'module))))
                            (xk7399
                             (begin
                               (write '(funapp 1724 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1724 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8006
                              (begin
                                (write '(funapp 1727 27))
                                (display "\n")
                                ((lambda (j7401 k7402 f7403)
                                   (letrec*
                                    ((g8007
                                      (lambda (g7400)
                                        (letrec*
                                         ((g8008
                                           (letrec*
                                            ((x8009
                                              (letrec*
                                               ((x8010
                                                 (letrec*
                                                  ((x8011
                                                    (letrec*
                                                     ((x8012
                                                       (begin
                                                         (write
                                                          '(funapp 1740 56))
                                                         (display "\n")
                                                         (listof any/c))))
                                                     (begin
                                                       (write
                                                        '(funapp 1741 48))
                                                       (display "\n")
                                                       (cons/c any/c x8012)))))
                                                  (begin
                                                    (write '(funapp 1742 45))
                                                    (display "\n")
                                                    (x8011
                                                     j7401
                                                     k7402
                                                     g7400)))))
                                               (begin
                                                 (write '(funapp 1743 42))
                                                 (display "\n")
                                                 (f7403 x8010)))))
                                            (begin
                                              (write '(funapp 1744 39))
                                              (display "\n")
                                              (any/c j7401 k7402 x8009)))))
                                         g8008))))
                                    g8007))
                                 xj7398
                                 xk7399
                                 last))))
                            g8006)))
                         (x8004 (input)))
                        (begin
                          (write '(funapp 1752 21))
                          (display "\n")
                          (x8005 x8004)))))))))
               g8003))))
           g7432))))
       g7415)))
    g7414)))
