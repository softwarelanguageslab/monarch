(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7398 #t)) g7398)))
    (meta (lambda (v) (letrec* ((g7399 v)) g7399)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7400
          (letrec*
           ((g7401
             (letrec*
              ((x-e7402 lst))
              (letrec*
               ((v1742 x-e7402))
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
                   ((x-cnd7403
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7403
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
           g7401)))
        g7400)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7404 (lambda (v) (letrec* ((g7405 v)) g7405)))) g7404)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7406
          (letrec*
           ((x7407 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7407)))))
        g7406))))
   (letrec*
    ((g7408
      (letrec*
       ((g7409
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7410
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7410)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7411
                 (letrec*
                  ((x7413
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7413))))
                (g7412
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7414
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7415 (if val7245 val7245 #f))) g7415)))))
                   g7414))))
               g7412)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7416
                 (letrec*
                  ((x7418
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7418))))
                (g7417
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7419
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7420 (if val7247 val7247 #f))) g7420)))))
                   g7419))))
               g7417)))
           (>
            (lambda (x y)
              (letrec*
               ((g7421
                 (letrec*
                  ((x7423
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7423))))
                (g7422
                 (letrec*
                  ((x7424
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7424)))))
               g7422)))
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
           ((g7425 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7426
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7427
                     (lambda (k j lst)
                       (letrec*
                        ((g7428
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7429
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7429))
                             lst))))
                        g7428))))
                   g7427)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7430
                     (letrec*
                      ((x-cnd7431
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7431
                        g7264
                        (begin
                          (write '(blame g7262 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7430)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7432
                     (letrec*
                      ((x-cnd7433
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7433
                        g7267
                        (begin
                          (write '(blame g7265 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7432)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7434
                     (letrec*
                      ((x-cnd7435
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7435
                        g7270
                        (begin
                          (write '(blame g7268 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7434)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7436
                     (letrec*
                      ((x-cnd7437
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7438 #t)) g7438)) g7273))))
                      (if x-cnd7437
                        g7273
                        (begin
                          (write '(blame g7271 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7436)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x-cnd7440
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7441 #t)) g7441)) g7276))))
                      (if x-cnd7440
                        g7276
                        (begin
                          (write '(blame g7274 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7439)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7443
                        g7279
                        (begin
                          (write '(blame g7277 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7442)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7445
                        g7282
                        (begin
                          (write '(blame g7280 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7444)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7447
                        g7285
                        (begin
                          (write '(blame g7283 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7446)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7449
                        g7288
                        (begin
                          (write '(blame g7286 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7448)))
               (string?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7291))))
                      (if x-cnd7451
                        g7291
                        (begin
                          (write '(blame g7289 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7450)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7452
                     (lambda (k j v)
                       (letrec*
                        ((g7453
                          (letrec*
                           ((x-cnd7454
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7454
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7453))))
                   g7452)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7455
                     (lambda (k j v)
                       (letrec*
                        ((g7456
                          (letrec*
                           ((x-cnd7457
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7457
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7461
                                (letrec*
                                 ((x7462
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7462))))
                               (x7458
                                (letrec*
                                 ((x7460
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7459
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7460 k j x7459)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7461 x7458)))))))
                        g7456))))
                   g7455)))
               (any? (lambda (v) (letrec* ((g7463 #t)) g7463)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x7465
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7465)))))
                   g7464)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x-cnd7467
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7468
                                (letrec*
                                 ((x7469
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7469)))))
                              g7468))
                           g7294))))
                      (if x-cnd7467
                        g7294
                        (begin
                          (write '(blame g7292 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7466)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7470
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7471
                          (letrec*
                           ((x-cnd7472
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7473
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7473))
                                g7297))))
                           (if x-cnd7472
                             g7297
                             (begin
                               (write '(blame g7295 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7471))))
                   g7470)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7474
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7475
                          (letrec*
                           ((x-cnd7476
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7477
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7477))
                                g7300))))
                           (if x-cnd7476
                             g7300
                             (begin
                               (write '(blame g7298 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7475))))
                   g7474)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7478
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7479
                          (letrec*
                           ((x-cnd7480
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7481
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7481))
                                g7303))))
                           (if x-cnd7480
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7479))))
                   g7478)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7482
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7483
                          (letrec*
                           ((x-cnd7484
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7485
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7485))
                                g7306))))
                           (if x-cnd7484
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7483))))
                   g7482)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7486
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7487
                          (letrec*
                           ((x-cnd7488
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7489
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7489))
                                g7309))))
                           (if x-cnd7488
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7487))))
                   g7486)))
               (meta (lambda (v) (letrec* ((g7490 v)) g7490)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7491
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7493
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7494
                                 (letrec*
                                  ((x7495
                                    (letrec*
                                     ((x7497
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7496
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7316 x7497 x7496)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7495)))))
                               g7494))))
                          g7493))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7492
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7492))))))
                  g7491)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7498
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7500
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7501
                                 (letrec*
                                  ((x7502
                                    (letrec*
                                     ((x7504
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7503
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7323 x7504 x7503)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7502)))))
                               g7501))))
                          g7500))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7499
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7499))))))
                  g7498)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7505
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7507
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7508
                                 (letrec*
                                  ((x7509
                                    (letrec*
                                     ((x7511
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7510
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7330 x7511 x7510)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7509)))))
                               g7508))))
                          g7507))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7506
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7506))))))
                  g7505)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7512
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7514
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7515
                                 (letrec*
                                  ((x7516
                                    (letrec*
                                     ((x7518
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7517
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7337 x7518 x7517)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7516)))))
                               g7515))))
                          g7514))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7513
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7513))))))
                  g7512)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7519
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7521
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7522
                                 (letrec*
                                  ((x7523
                                    (letrec*
                                     ((x7525
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7524
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7344 x7525 x7524)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7523)))))
                               g7522))))
                          g7521))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7520
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7520))))))
                  g7519)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7526
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7528
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7529
                                 (letrec*
                                  ((x7530
                                    (letrec*
                                     ((x7532
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7531
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7351 x7532 x7531)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7530)))))
                               g7529))))
                          g7528))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7527
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7527))))))
                  g7526)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7533
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7535
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7536
                                 (letrec*
                                  ((x7537
                                    (letrec*
                                     ((x7539
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7538
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7358 x7539 x7538)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7537)))))
                               g7536))))
                          g7535))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7534
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7534))))))
                  g7533)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7540
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7542
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7543
                                 (letrec*
                                  ((x7544
                                    (letrec*
                                     ((x7546
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7545
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7365 x7546 x7545)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7544)))))
                               g7543))))
                          g7542))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7541
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7541))))))
                  g7540)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7547
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7549
                            (lambda (g7368)
                              (letrec*
                               ((g7550
                                 (letrec*
                                  ((x7551
                                    (letrec*
                                     ((x7552
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7371 x7552)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7551)))))
                               g7550))))
                          g7549))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7548
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7548))))))
                  g7547)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7553
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7555
                            (lambda (g7374)
                              (letrec*
                               ((g7556
                                 (letrec*
                                  ((x7557
                                    (letrec*
                                     ((x7558
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7377 x7558)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7557)))))
                               g7556))))
                          g7555))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7554
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7554))))))
                  g7553)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7559
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7561
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7562
                                 (letrec*
                                  ((x7563
                                    (letrec*
                                     ((x7565
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7564
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7384 x7565 x7564)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7563)))))
                               g7562))))
                          g7561))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7560
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7560))))))
                  g7559)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7566
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7568
                            (lambda (g7387)
                              (letrec*
                               ((g7569
                                 (letrec*
                                  ((x7570
                                    (letrec*
                                     ((x7571
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7390 x7571)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7570)))))
                               g7569))))
                          g7568))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7567
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7567))))))
                  g7566)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7572
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7574
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7575
                                 (letrec*
                                  ((x7576
                                    (letrec*
                                     ((x7578
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7577
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7397 x7578 x7577)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7576)))))
                               g7575))))
                          g7574))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7573
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7573))))))
                  g7572)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7579
                     (letrec*
                      ((x7580
                        (letrec*
                         ((x7581
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7581)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7580)))))
                   g7579)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7582
                     (letrec*
                      ((x7585
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7585))))
                    (g7583
                     (letrec*
                      ((x7586
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7586))))
                    (g7584
                     (letrec*
                      ((x-cnd7587
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7587
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7590
                           (letrec*
                            ((x7591
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7591))))
                          (x7588
                           (letrec*
                            ((x7589
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7589)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7590 x7588)))))))
                   g7584)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7592
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7593)))))
                   g7592)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7595
                        (letrec*
                         ((x7596
                           (letrec*
                            ((x7597
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7597)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7596)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7595)))))
                   g7594)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7599
                        (letrec*
                         ((x7600
                           (letrec*
                            ((x7601
                              (begin
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7601)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7600)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7599)))))
                   g7598)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7605
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7605))))
                    (g7603
                     (letrec*
                      ((x7606
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7606))))
                    (g7604
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
                       ((g7607
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7608 res))
                       g7608))))
                   g7604)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7611)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7610)))))
                   g7609)))
               (cdaadr
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
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7615)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7614)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7613)))))
                   g7612)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7618))))
                    (g7617
                     (letrec*
                      ((x-cnd7619
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7619
                        #f
                        (letrec*
                         ((x-cnd7620
                           (letrec*
                            ((x7621
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7621 k)))))
                         (if x-cnd7620
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7622
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7622)))))))))
                   g7617)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7624)))))
                   g7623)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7627))))
                    (g7626
                     (letrec*
                      ((x-cnd7628
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7628
                        ""
                        (letrec*
                         ((x7631
                           (letrec*
                            ((x7632
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7632))))
                          (x7629
                           (letrec*
                            ((x7630
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7630)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7631 x7629)))))))
                   g7626)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7636))))
                    (g7634
                     (letrec*
                      ((x7637
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7637))))
                    (g7635
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7638
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7638))))
                   g7635)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7640
                        (letrec*
                         ((x7641
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7642)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7641)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7640)))))
                   g7639)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7646))))
                    (g7644
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7647))))
                    (g7645
                     (letrec*
                      ((x-cnd7648
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7648
                        x
                        (letrec*
                         ((x7650
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7649
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7650 x7649)))))))
                   g7645)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7651
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7651)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x-cnd7653
                        (letrec*
                         ((x7654 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7654)))))
                      (if x-cnd7653
                        (letrec*
                         ((x7655 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7655)))
                        #f))))
                   g7652)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x7657
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7657 9)))))
                      (letrec*
                       ((g7658
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x7659
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7659 10)))))
                            (letrec*
                             ((g7660
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x7661
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7661 32))))))
                             g7660)))))
                       g7658))))
                   g7656)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7662
                     (letrec*
                      ((x7663
                        (letrec*
                         ((x7664
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7664)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7663)))))
                   g7662)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7667))))
                    (g7666
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7666)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7668 #f)) g7668)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7670)))))
                   g7669)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7673))))
                    (g7672
                     (letrec*
                      ((x-cnd7674
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7674
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7672)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7675
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7676
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd7677
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7677
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7678
                               (if val7252
                                 val7252
                                 (letrec*
                                  ((val7253
                                    (letrec*
                                     ((x-cnd7679
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7679
                                       (letrec*
                                        ((x-cnd7680
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7680
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7681
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd7682
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7682
                                             (letrec*
                                              ((x-cnd7683
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7683
                                                (letrec*
                                                 ((x-cnd7684
                                                   (letrec*
                                                    ((x7686
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7685
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7686 x7685)))))
                                                 (if x-cnd7684
                                                   (letrec*
                                                    ((x7688
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7687
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7688 x7687)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7689
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd7690
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7690
                                                (letrec*
                                                 ((x-cnd7691
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7691
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7692
                                                       (letrec*
                                                        ((x-cnd7693
                                                          (letrec*
                                                           ((x7694
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
                                                             (= x7694 n)))))
                                                        (if x-cnd7693
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7695
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
                                                                    ((g7696
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd7697
                                                                           (letrec*
                                                                            ((x7699
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
                                                                             (x7698
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
                                                                               x7699
                                                                               x7698)))))
                                                                         (if x-cnd7697
                                                                           (letrec*
                                                                            ((x7700
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
                                                                               x7700)))
                                                                           #f)))))
                                                                    g7696))))
                                                                g7695))))
                                                           (letrec*
                                                            ((g7701
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7701))
                                                          #f))))
                                                     g7692))
                                                   #f))
                                                #f)))))
                                         g7689)))))
                                   g7681)))))
                             g7678)))))
                       g7676))))
                   g7675)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7702
                     (letrec*
                      ((x7703
                        (letrec*
                         ((x7704
                           (letrec*
                            ((x7705
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7705)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7704)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7703)))))
                   g7702)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7706
                     (letrec*
                      ((x7707
                        (letrec*
                         ((x7708
                           (letrec*
                            ((x7709
                              (begin
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7709)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7708)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7707)))))
                   g7706)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7710
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7710)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7711
                     (letrec*
                      ((x7714
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7714))))
                    (g7712
                     (letrec*
                      ((x7715
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7715))))
                    (g7713
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
                       ((g7716
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7717 res))
                       g7717))))
                   g7713)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7718
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7718)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7719
                     (letrec*
                      ((x7722
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7722))))
                    (g7720
                     (letrec*
                      ((x7723
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7723))))
                    (g7721
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7724
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7724))))
                   g7721)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7725
                     (letrec*
                      ((x7726
                        (letrec*
                         ((x7727
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7727)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7726)))))
                   g7725)))
               (cdaddr
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
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7731)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7730)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7729)))))
                   g7728)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7732
                     (letrec*
                      ((x7733
                        (letrec*
                         ((x7734
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7734)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7733)))))
                   g7732)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7736
                        (letrec*
                         ((x7737
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7737)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7736)))))
                   g7735)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7741
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7741))))
                    (g7739
                     (letrec*
                      ((x7742
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7742))))
                    (g7740
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7743)))))
                   g7740)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (letrec*
                         ((x7746
                           (letrec*
                            ((x7747
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7747)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7746)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7745)))))
                   g7744)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7750))))
                    (g7749
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7749)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7751
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7751)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7753
                        (letrec*
                         ((x7754
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7754)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7753)))))
                   g7752)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7755
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7755)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7758))))
                    (g7757
                     (letrec*
                      ((x-cnd7759
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7759
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7763))))
                          (x7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7761)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7762 x7760)))))))
                   g7757)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7767)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7766)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7765)))))
                   g7764)))
               (cddadr
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
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7771)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7770)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7769)))))
                   g7768)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7774))))
                    (g7773
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7775)))))
                   g7773)))
               (caadar
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
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7779)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7778)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7783))))
                    (g7781
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7784))))
                    (g7782
                     (letrec*
                      ((x-cnd7785
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7785
                        (letrec*
                         ((g7786
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7786)
                        (letrec*
                         ((x-cnd7787
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7788)))))
                         (if x-cnd7787
                           (letrec*
                            ((g7789
                              (letrec*
                               ((x7790
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7790)))))
                            g7789)
                           (letrec*
                            ((x-cnd7791
                              (letrec*
                               ((x7792
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7792)))))
                            (if x-cnd7791
                              (letrec*
                               ((g7793
                                 (letrec*
                                  ((x7795
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7794
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7795 x7794)))))
                               g7793)
                              (letrec*
                               ((x-cnd7796
                                 (letrec*
                                  ((x7797
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7797)))))
                               (if x-cnd7796
                                 (letrec*
                                  ((g7798
                                    (letrec*
                                     ((x7801
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7800
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7799
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7801 x7800 x7799)))))
                                  g7798)
                                 (letrec*
                                  ((x-cnd7802
                                    (letrec*
                                     ((x7803
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7803)))))
                                  (if x-cnd7802
                                    (letrec*
                                     ((g7804
                                       (letrec*
                                        ((x7808
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7807
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7806
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7805
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7808 x7807 x7806 x7805)))))
                                     g7804)
                                    (letrec*
                                     ((x-cnd7809
                                       (letrec*
                                        ((x7810
                                          (letrec*
                                           ((x7811
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7811)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7810)))))
                                     (if x-cnd7809
                                       (letrec*
                                        ((g7812
                                          (letrec*
                                           ((x7818
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7817
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7816
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7815
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7813
                                             (letrec*
                                              ((x7814
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7814)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7818
                                              x7817
                                              x7816
                                              x7815
                                              x7813)))))
                                        g7812)
                                       (letrec*
                                        ((x-cnd7819
                                          (letrec*
                                           ((x7820
                                             (letrec*
                                              ((x7821
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7821)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7820)))))
                                        (if x-cnd7819
                                          (letrec*
                                           ((g7822
                                             (letrec*
                                              ((x7830
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7829
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7828
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7827
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7825
                                                (letrec*
                                                 ((x7826
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7826))))
                                               (x7823
                                                (letrec*
                                                 ((x7824
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7824)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7830
                                                 x7829
                                                 x7828
                                                 x7827
                                                 x7825
                                                 x7823)))))
                                           g7822)
                                          (letrec*
                                           ((x-cnd7831
                                             (letrec*
                                              ((x7832
                                                (letrec*
                                                 ((x7833
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7833)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7832)))))
                                           (if x-cnd7831
                                             (letrec*
                                              ((g7834
                                                (letrec*
                                                 ((x7844
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7843
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7842
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7841
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7839
                                                   (letrec*
                                                    ((x7840
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7840))))
                                                  (x7837
                                                   (letrec*
                                                    ((x7838
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7838))))
                                                  (x7835
                                                   (letrec*
                                                    ((x7836
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7836)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7844
                                                    x7843
                                                    x7842
                                                    x7841
                                                    x7839
                                                    x7837
                                                    x7835)))))
                                              g7834)
                                             (letrec*
                                              ((g7845
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7845)))))))))))))))))))
                   g7782)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7848))))
                    (g7847
                     (letrec*
                      ((x-cnd7849
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7849
                        #f
                        (letrec*
                         ((x-cnd7850
                           (letrec*
                            ((x7851
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7851 e)))))
                         (if x-cnd7850
                           l
                           (letrec*
                            ((x7852
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7852)))))))))
                   g7847)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7854
                        (letrec*
                         ((x7855
                           (letrec*
                            ((x7856
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7856)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7855)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7854)))))
                   g7853)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7858
                        (letrec*
                         ((x7859
                           (letrec*
                            ((x7860
                              (begin
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7860)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7859)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7858)))))
                   g7857)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7861
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7861)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((x7864
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7864))))
                    (g7863
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7863)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7866
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7866))))
                   g7865)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x7868
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7868)))))
                   g7867)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd7870
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7870
                           (letrec*
                            ((x7871
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7871)))
                           #f))))
                      (letrec*
                       ((g7872
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7872))))
                   g7869)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7874
                        (letrec*
                         ((x7875
                           (letrec*
                            ((x7876
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7876)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7875)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7874)))))
                   g7873)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x-cnd7878
                        (letrec*
                         ((x7879 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7879 c)))))
                      (if x-cnd7878
                        (letrec*
                         ((x7880 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7880)))
                        #f))))
                   g7877)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x7883
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7883))))
                    (g7882
                     (letrec*
                      ((x-cnd7884
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7884
                        #f
                        (letrec*
                         ((x-cnd7885
                           (letrec*
                            ((x7886
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7886 k)))))
                         (if x-cnd7885
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7887
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7887)))))))))
                   g7882)))
               (not (lambda (x) (letrec* ((g7888 (if x #f #t))) g7888)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7889
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7889)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7890
                     (letrec*
                      ((x7892
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7892))))
                    (g7891
                     (letrec*
                      ((x-cnd7893
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7893
                        #f
                        (letrec*
                         ((x-cnd7894
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7895 e)))))
                         (if x-cnd7894
                           l
                           (letrec*
                            ((x7896
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7896)))))))))
                   g7891)))
               (cadaar
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
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7900)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7899)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7898)))))
                   g7897)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7901
                     (letrec*
                      ((x7903
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7903))))
                    (g7902
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7904
                             (letrec*
                              ((x-cnd7905
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7905
                                0
                                (letrec*
                                 ((x7906
                                   (letrec*
                                    ((x7907
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7907)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7906)))))))
                           g7904))))
                      (letrec*
                       ((g7908
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7908))))
                   g7902)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7912
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7912))))
                    (g7910
                     (letrec*
                      ((x7913
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7913))))
                    (g7911
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7914
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7914))))
                   g7911)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7916
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7916)))))
                   g7915)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7918
                        (letrec*
                         ((x7919
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7919)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7918)))))
                   g7917)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7922))))
                    (g7921
                     (letrec*
                      ((x-cnd7923
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7923
                        #f
                        (letrec*
                         ((x-cnd7924
                           (letrec*
                            ((x7925
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7925 k)))))
                         (if x-cnd7924
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7926
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7926)))))))))
                   g7921)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7928)))))
                   g7927)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7932
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7932))))
                    (g7930
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7933))))
                    (g7931
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7934)))))
                   g7931)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7936
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7936))))
                   g7935)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7940))))
                    (g7938
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7941))))
                    (g7939
                     (letrec*
                      ((x-cnd7942
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7942
                        #t
                        (letrec*
                         ((x-cnd7943
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7943
                           (letrec*
                            ((g7944
                              (letrec*
                               ((x7946
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7946))))
                             (g7945
                              (letrec*
                               ((x7947
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7947)))))
                            g7945)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7939)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7948
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7950))))
                    (g7949
                     (letrec*
                      ((x-cnd7951
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7951
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7949)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7955))))
                    (g7953
                     (letrec*
                      ((x7956
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7956))))
                    (g7954
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7957
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7957))))
                   g7954)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7958
                     (letrec*
                      ((x7959
                        (letrec*
                         ((x7960
                           (letrec*
                            ((x7961
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7961)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7960)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7959)))))
                   g7958)))
               (newline (lambda () (letrec* ((g7962 #f)) g7962)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7965
                        (letrec*
                         ((x7966
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7966))))
                       (x7964
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7965 x7964)))))
                   g7963)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7967
                     (letrec*
                      ((x7971
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7971))))
                    (g7968
                     (letrec*
                      ((x7972
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7972))))
                    (g7969
                     (letrec*
                      ((x7973
                        (letrec*
                         ((x7974
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7974)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7973))))
                    (g7970
                     (letrec*
                      ((x-cnd7975
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7975
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7977
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7976
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7977 x7976)))))))
                   g7970)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7978
                     (letrec*
                      ((x-cnd7979
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7979
                        a
                        (letrec*
                         ((x7980
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7980)))))))
                   g7978)))
               (do-something (lambda () (letrec* ((g7981 10)) g7981)))
               (id
                (lambda (y)
                  (letrec*
                   ((g7982
                     (begin
                       (write '(funapp 1663 36))
                       (display "\n")
                       (do-something)))
                    (g7983 y))
                   g7983))))
              (letrec*
               ((g7984
                 (letrec*
                  ((x7986
                    (begin
                      (write '(funapp 1667 27))
                      (display "\n")
                      (id (lambda (a) (letrec* ((g7987 a)) g7987))))))
                  (begin (write '(funapp 1668 19)) (display "\n") (x7986 #t))))
                (g7985
                 (letrec*
                  ((x7988
                    (begin
                      (write '(funapp 1671 27))
                      (display "\n")
                      (id (lambda (b) (letrec* ((g7989 b)) g7989))))))
                  (begin
                    (write '(funapp 1672 19))
                    (display "\n")
                    (x7988 #f)))))
               g7985))))
           g7426))))
       g7409)))
    g7408)))
