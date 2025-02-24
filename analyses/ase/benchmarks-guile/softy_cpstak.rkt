(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7406 #t)) g7406)))
    (meta (lambda (v) (letrec* ((g7407 v)) g7407)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7408
          (letrec*
           ((g7409
             (letrec*
              ((x-e7410 lst))
              (letrec*
               ((v1742 x-e7410))
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
                   ((x-cnd7411
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7411
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
           g7409)))
        g7408)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7412 (lambda (v) (letrec* ((g7413 v)) g7413)))) g7412)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7414
          (letrec*
           ((x7415 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7415)))))
        g7414))))
   (letrec*
    ((g7416
      (letrec*
       ((g7417
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7418
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7418)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7419
                 (letrec*
                  ((x7421
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7421))))
                (g7420
                 (letrec*
                  ((val7244
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7422
                     (if val7244
                       val7244
                       (letrec*
                        ((val7245
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7423 (if val7245 val7245 #f))) g7423)))))
                   g7422))))
               g7420)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7424
                 (letrec*
                  ((x7426
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7426))))
                (g7425
                 (letrec*
                  ((val7246
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7427
                     (if val7246
                       val7246
                       (letrec*
                        ((val7247
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7428 (if val7247 val7247 #f))) g7428)))))
                   g7427))))
               g7425)))
           (>
            (lambda (x y)
              (letrec*
               ((g7429
                 (letrec*
                  ((x7431
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7431))))
                (g7430
                 (letrec*
                  ((x7432
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7432)))))
               g7430)))
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
           ((g7433 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7434
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7435
                     (lambda (k j lst)
                       (letrec*
                        ((g7436
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7437
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7437))
                             lst))))
                        g7436))))
                   g7435)))
               (real?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7438
                     (letrec*
                      ((x-cnd7439
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7264))))
                      (if x-cnd7439
                        g7264
                        (begin
                          (write '(blame g7262 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7438)))
               (boolean?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x-cnd7441
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7267))))
                      (if x-cnd7441
                        g7267
                        (begin
                          (write '(blame g7265 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7440)))
               (number?/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7270))))
                      (if x-cnd7443
                        g7270
                        (begin
                          (write '(blame g7268 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7442)))
               (any/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7446 #t)) g7446)) g7273))))
                      (if x-cnd7445
                        g7273
                        (begin
                          (write '(blame g7271 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7444)))
               (any?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7449 #t)) g7449)) g7276))))
                      (if x-cnd7448
                        g7276
                        (begin
                          (write '(blame g7274 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7447)))
               (cons?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7451
                        g7279
                        (begin
                          (write '(blame g7277 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7450)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7282))))
                      (if x-cnd7453
                        g7282
                        (begin
                          (write '(blame g7280 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7452)))
               (integer?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7285))))
                      (if x-cnd7455
                        g7285
                        (begin
                          (write '(blame g7283 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7454)))
               (symbol?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x-cnd7457
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7288))))
                      (if x-cnd7457
                        g7288
                        (begin
                          (write '(blame g7286 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7456)))
               (string?/c
                (lambda (g7289 g7290 g7291)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7291))))
                      (if x-cnd7459
                        g7291
                        (begin
                          (write '(blame g7289 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7289)))))))
                   g7458)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7460
                     (lambda (k j v)
                       (letrec*
                        ((g7461
                          (letrec*
                           ((x-cnd7462
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7462
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7461))))
                   g7460)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7463
                     (lambda (k j v)
                       (letrec*
                        ((g7464
                          (letrec*
                           ((x-cnd7465
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7465
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7469
                                (letrec*
                                 ((x7470
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7470))))
                               (x7466
                                (letrec*
                                 ((x7468
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7467
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7468 k j x7467)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7469 x7466)))))))
                        g7464))))
                   g7463)))
               (any? (lambda (v) (letrec* ((g7471 #t)) g7471)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x7473
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7473)))))
                   g7472)))
               (nonzero?/c
                (lambda (g7292 g7293 g7294)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x-cnd7475
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7476
                                (letrec*
                                 ((x7477
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7477)))))
                              g7476))
                           g7294))))
                      (if x-cnd7475
                        g7294
                        (begin
                          (write '(blame g7292 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7292)))))))
                   g7474)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7478
                     (lambda (g7295 g7296 g7297)
                       (letrec*
                        ((g7479
                          (letrec*
                           ((x-cnd7480
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7481
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7481))
                                g7297))))
                           (if x-cnd7480
                             g7297
                             (begin
                               (write '(blame g7295 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7295)))))))
                        g7479))))
                   g7478)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7482
                     (lambda (g7298 g7299 g7300)
                       (letrec*
                        ((g7483
                          (letrec*
                           ((x-cnd7484
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7485
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7485))
                                g7300))))
                           (if x-cnd7484
                             g7300
                             (begin
                               (write '(blame g7298 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7298)))))))
                        g7483))))
                   g7482)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7486
                     (lambda (g7301 g7302 g7303)
                       (letrec*
                        ((g7487
                          (letrec*
                           ((x-cnd7488
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7489
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7489))
                                g7303))))
                           (if x-cnd7488
                             g7303
                             (begin
                               (write '(blame g7301 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7301)))))))
                        g7487))))
                   g7486)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7490
                     (lambda (g7304 g7305 g7306)
                       (letrec*
                        ((g7491
                          (letrec*
                           ((x-cnd7492
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7493
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7493))
                                g7306))))
                           (if x-cnd7492
                             g7306
                             (begin
                               (write '(blame g7304 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7304)))))))
                        g7491))))
                   g7490)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7494
                     (lambda (g7307 g7308 g7309)
                       (letrec*
                        ((g7495
                          (letrec*
                           ((x-cnd7496
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7497
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7497))
                                g7309))))
                           (if x-cnd7496
                             g7309
                             (begin
                               (write '(blame g7307 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7307)))))))
                        g7495))))
                   g7494)))
               (meta (lambda (v) (letrec* ((g7498 v)) g7498)))
               (+
                (letrec*
                 ((xj7310
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7311
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7499
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7314 k7315 f7316)
                         (letrec*
                          ((g7501
                            (lambda (g7312 g7313)
                              (letrec*
                               ((g7502
                                 (letrec*
                                  ((x7503
                                    (letrec*
                                     ((x7505
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7312)))
                                      (x7504
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7314 k7315 g7313))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7316 x7505 x7504)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7314 k7315 x7503)))))
                               g7502))))
                          g7501))
                       xj7310
                       xk7311
                       (lambda (a b)
                         (letrec*
                          ((g7500
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7500))))))
                  g7499)))
               (-
                (letrec*
                 ((xj7317
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7318
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7506
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7321 k7322 f7323)
                         (letrec*
                          ((g7508
                            (lambda (g7319 g7320)
                              (letrec*
                               ((g7509
                                 (letrec*
                                  ((x7510
                                    (letrec*
                                     ((x7512
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7319)))
                                      (x7511
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7321 k7322 g7320))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7323 x7512 x7511)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7321 k7322 x7510)))))
                               g7509))))
                          g7508))
                       xj7317
                       xk7318
                       (lambda (a b)
                         (letrec*
                          ((g7507
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7507))))))
                  g7506)))
               (*
                (letrec*
                 ((xj7324
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7325
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7513
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7515
                            (lambda (g7326 g7327)
                              (letrec*
                               ((g7516
                                 (letrec*
                                  ((x7517
                                    (letrec*
                                     ((x7519
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7326)))
                                      (x7518
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7330 x7519 x7518)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7328 k7329 x7517)))))
                               g7516))))
                          g7515))
                       xj7324
                       xk7325
                       (lambda (a b)
                         (letrec*
                          ((g7514
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7514))))))
                  g7513)))
               (<
                (letrec*
                 ((xj7331
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7332
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7520
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7335 k7336 f7337)
                         (letrec*
                          ((g7522
                            (lambda (g7333 g7334)
                              (letrec*
                               ((g7523
                                 (letrec*
                                  ((x7524
                                    (letrec*
                                     ((x7526
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7333)))
                                      (x7525
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7335 k7336 g7334))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7337 x7526 x7525)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7335 k7336 x7524)))))
                               g7523))))
                          g7522))
                       xj7331
                       xk7332
                       (lambda (a b)
                         (letrec*
                          ((g7521
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7521))))))
                  g7520)))
               (>
                (letrec*
                 ((xj7338
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7339
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7527
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7529
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7530
                                 (letrec*
                                  ((x7531
                                    (letrec*
                                     ((x7533
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7340)))
                                      (x7532
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7344 x7533 x7532)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7531)))))
                               g7530))))
                          g7529))
                       xj7338
                       xk7339
                       (lambda (a b)
                         (letrec*
                          ((g7528
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7528))))))
                  g7527)))
               (<=
                (letrec*
                 ((xj7345
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7346
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7534
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7349 k7350 f7351)
                         (letrec*
                          ((g7536
                            (lambda (g7347 g7348)
                              (letrec*
                               ((g7537
                                 (letrec*
                                  ((x7538
                                    (letrec*
                                     ((x7540
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7347)))
                                      (x7539
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7349 k7350 g7348))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7351 x7540 x7539)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7349 k7350 x7538)))))
                               g7537))))
                          g7536))
                       xj7345
                       xk7346
                       (lambda (a b)
                         (letrec*
                          ((g7535
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7535))))))
                  g7534)))
               (>=
                (letrec*
                 ((xj7352
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7353
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7541
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g7543
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g7544
                                 (letrec*
                                  ((x7545
                                    (letrec*
                                     ((x7547
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7354)))
                                      (x7546
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7358 x7547 x7546)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x7545)))))
                               g7544))))
                          g7543))
                       xj7352
                       xk7353
                       (lambda (a b)
                         (letrec*
                          ((g7542
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7542))))))
                  g7541)))
               (/
                (letrec*
                 ((xj7359
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7360
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7548
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7363 k7364 f7365)
                         (letrec*
                          ((g7550
                            (lambda (g7361 g7362)
                              (letrec*
                               ((g7551
                                 (letrec*
                                  ((x7552
                                    (letrec*
                                     ((x7554
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7361)))
                                      (x7553
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7363 k7364 g7362))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7365 x7554 x7553)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7363 k7364 x7552)))))
                               g7551))))
                          g7550))
                       xj7359
                       xk7360
                       (lambda (a b)
                         (letrec*
                          ((g7549
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7549))))))
                  g7548)))
               (car
                (letrec*
                 ((xj7366
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7367
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7555
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g7557
                            (lambda (g7368)
                              (letrec*
                               ((g7558
                                 (letrec*
                                  ((x7559
                                    (letrec*
                                     ((x7560
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7371 x7560)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7369 k7370 x7559)))))
                               g7558))))
                          g7557))
                       xj7366
                       xk7367
                       (lambda (p)
                         (letrec*
                          ((g7556
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7556))))))
                  g7555)))
               (cdr
                (letrec*
                 ((xj7372
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7373
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7561
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7375 k7376 f7377)
                         (letrec*
                          ((g7563
                            (lambda (g7374)
                              (letrec*
                               ((g7564
                                 (letrec*
                                  ((x7565
                                    (letrec*
                                     ((x7566
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7375 k7376 g7374))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7377 x7566)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7375 k7376 x7565)))))
                               g7564))))
                          g7563))
                       xj7372
                       xk7373
                       (lambda (p)
                         (letrec*
                          ((g7562
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7562))))))
                  g7561)))
               (cons
                (letrec*
                 ((xj7378
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7379
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7567
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g7569
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g7570
                                 (letrec*
                                  ((x7571
                                    (letrec*
                                     ((x7573
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7380)))
                                      (x7572
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7384 x7573 x7572)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7382 k7383 x7571)))))
                               g7570))))
                          g7569))
                       xj7378
                       xk7379
                       (lambda (a b)
                         (letrec*
                          ((g7568
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7568))))))
                  g7567)))
               (vector-ref
                (letrec*
                 ((xj7385
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7386
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7574
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7388 k7389 f7390)
                         (letrec*
                          ((g7576
                            (lambda (g7387)
                              (letrec*
                               ((g7577
                                 (letrec*
                                  ((x7578
                                    (letrec*
                                     ((x7579
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7388 k7389 g7387))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7390 x7579)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7388 k7389 x7578)))))
                               g7577))))
                          g7576))
                       xj7385
                       xk7386
                       (lambda (v i)
                         (letrec*
                          ((g7575
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7575))))))
                  g7574)))
               (vector-set!
                (letrec*
                 ((xj7391
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7392
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7580
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g7582
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g7583
                                 (letrec*
                                  ((x7584
                                    (letrec*
                                     ((x7586
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7395 k7396 g7393)))
                                      (x7585
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7397 x7586 x7585)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7395 k7396 x7584)))))
                               g7583))))
                          g7582))
                       xj7391
                       xk7392
                       (lambda (vec i v)
                         (letrec*
                          ((g7581
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7581))))))
                  g7580)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7587
                     (letrec*
                      ((x7588
                        (letrec*
                         ((x7589
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7589)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7588)))))
                   g7587)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7590
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7593))))
                    (g7591
                     (letrec*
                      ((x7594
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7594))))
                    (g7592
                     (letrec*
                      ((x-cnd7595
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7595
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7598
                           (letrec*
                            ((x7599
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7599))))
                          (x7596
                           (letrec*
                            ((x7597
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7597)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7598 x7596)))))))
                   g7592)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7601
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7601)))))
                   g7600)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7603
                        (letrec*
                         ((x7604
                           (letrec*
                            ((x7605
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7605)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7604)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7603)))))
                   g7602)))
               (cdadar
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
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7609)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7608)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7607)))))
                   g7606)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7613))))
                    (g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7614))))
                    (g7612
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
                       ((g7615
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7616 res))
                       g7616))))
                   g7612)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7618
                        (letrec*
                         ((x7619
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7619)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7618)))))
                   g7617)))
               (cdaadr
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
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7623)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7622)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7621)))))
                   g7620)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7626))))
                    (g7625
                     (letrec*
                      ((x-cnd7627
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7627
                        #f
                        (letrec*
                         ((x-cnd7628
                           (letrec*
                            ((x7629
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7629 k)))))
                         (if x-cnd7628
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7630
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7630)))))))))
                   g7625)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7632)))))
                   g7631)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7635))))
                    (g7634
                     (letrec*
                      ((x-cnd7636
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7636
                        ""
                        (letrec*
                         ((x7639
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7640))))
                          (x7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7638)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7639 x7637)))))))
                   g7634)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7644
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7644))))
                    (g7642
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7645))))
                    (g7643
                     (letrec*
                      ((val7248
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7646
                         (if val7248
                           val7248
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7646))))
                   g7643)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7648
                        (letrec*
                         ((x7649
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7650)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7649)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7648)))))
                   g7647)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7654))))
                    (g7652
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7655))))
                    (g7653
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7656
                        x
                        (letrec*
                         ((x7658
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7657
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7658 x7657)))))))
                   g7653)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7659
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7659)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x-cnd7661
                        (letrec*
                         ((x7662 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7662)))))
                      (if x-cnd7661
                        (letrec*
                         ((x7663 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7663)))
                        #f))))
                   g7660)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((val7249
                        (letrec*
                         ((x7665
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7665 9)))))
                      (letrec*
                       ((g7666
                         (if val7249
                           val7249
                           (letrec*
                            ((val7250
                              (letrec*
                               ((x7667
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7667 10)))))
                            (letrec*
                             ((g7668
                               (if val7250
                                 val7250
                                 (letrec*
                                  ((x7669
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7669 32))))))
                             g7668)))))
                       g7666))))
                   g7664)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x7671
                        (letrec*
                         ((x7672
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7672)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7671)))))
                   g7670)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7673
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7675))))
                    (g7674
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7674)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7676 #f)) g7676)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7678
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7678)))))
                   g7677)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7679
                     (letrec*
                      ((x7681
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7681))))
                    (g7680
                     (letrec*
                      ((x-cnd7682
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7682
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7680)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7684
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (letrec*
                               ((x-cnd7685
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7685
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7686
                               (if val7252
                                 val7252
                                 (letrec*
                                  ((val7253
                                    (letrec*
                                     ((x-cnd7687
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7687
                                       (letrec*
                                        ((x-cnd7688
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7688
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7689
                                     (if val7253
                                       val7253
                                       (letrec*
                                        ((val7254
                                          (letrec*
                                           ((x-cnd7690
                                             (begin
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7690
                                             (letrec*
                                              ((x-cnd7691
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7691
                                                (letrec*
                                                 ((x-cnd7692
                                                   (letrec*
                                                    ((x7694
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7693
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7694 x7693)))))
                                                 (if x-cnd7692
                                                   (letrec*
                                                    ((x7696
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7695
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7696 x7695)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7697
                                           (if val7254
                                             val7254
                                             (letrec*
                                              ((x-cnd7698
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7698
                                                (letrec*
                                                 ((x-cnd7699
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7699
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7700
                                                       (letrec*
                                                        ((x-cnd7701
                                                          (letrec*
                                                           ((x7702
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
                                                             (= x7702 n)))))
                                                        (if x-cnd7701
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7703
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
                                                                    ((g7704
                                                                      (if val7255
                                                                        val7255
                                                                        (letrec*
                                                                         ((x-cnd7705
                                                                           (letrec*
                                                                            ((x7707
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
                                                                             (x7706
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
                                                                               x7707
                                                                               x7706)))))
                                                                         (if x-cnd7705
                                                                           (letrec*
                                                                            ((x7708
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
                                                                               x7708)))
                                                                           #f)))))
                                                                    g7704))))
                                                                g7703))))
                                                           (letrec*
                                                            ((g7709
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7709))
                                                          #f))))
                                                     g7700))
                                                   #f))
                                                #f)))))
                                         g7697)))))
                                   g7689)))))
                             g7686)))))
                       g7684))))
                   g7683)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7710
                     (letrec*
                      ((x7711
                        (letrec*
                         ((x7712
                           (letrec*
                            ((x7713
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7713)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7712)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7711)))))
                   g7710)))
               (caaddr
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
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7717)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7716)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7715)))))
                   g7714)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7718
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7718)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7719
                     (letrec*
                      ((x7722
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7722))))
                    (g7720
                     (letrec*
                      ((x7723
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7723))))
                    (g7721
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
                       ((g7724
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7725 res))
                       g7725))))
                   g7721)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7726
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7726)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((x7730
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7730))))
                    (g7728
                     (letrec*
                      ((x7731
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7731))))
                    (g7729
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7732
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7732))))
                   g7729)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7734
                        (letrec*
                         ((x7735
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7735)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7734)))))
                   g7733)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7737
                        (letrec*
                         ((x7738
                           (letrec*
                            ((x7739
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7739)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7738)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7737)))))
                   g7736)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (letrec*
                         ((x7742
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7742)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7741)))))
                   g7740)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7745)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7744)))))
                   g7743)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7749))))
                    (g7747
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7750))))
                    (g7748
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7751)))))
                   g7748)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7755)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7754)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7753)))))
                   g7752)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7758))))
                    (g7757
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7757)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7759
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7759)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7761
                        (letrec*
                         ((x7762
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7762)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7761)))))
                   g7760)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7763
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7763)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7766))))
                    (g7765
                     (letrec*
                      ((x-cnd7767
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7767
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7771))))
                          (x7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7769)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7770 x7768)))))))
                   g7765)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7773
                        (letrec*
                         ((x7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7775)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7774)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7773)))))
                   g7772)))
               (cddadr
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
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7779)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7778)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7777)))))
                   g7776)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7782))))
                    (g7781
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7783)))))
                   g7781)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7785
                        (letrec*
                         ((x7786
                           (letrec*
                            ((x7787
                              (begin
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7787)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7786)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7785)))))
                   g7784)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7791))))
                    (g7789
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7792))))
                    (g7790
                     (letrec*
                      ((x-cnd7793
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7793
                        (letrec*
                         ((g7794
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7794)
                        (letrec*
                         ((x-cnd7795
                           (letrec*
                            ((x7796
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7796)))))
                         (if x-cnd7795
                           (letrec*
                            ((g7797
                              (letrec*
                               ((x7798
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7798)))))
                            g7797)
                           (letrec*
                            ((x-cnd7799
                              (letrec*
                               ((x7800
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7800)))))
                            (if x-cnd7799
                              (letrec*
                               ((g7801
                                 (letrec*
                                  ((x7803
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7802
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7803 x7802)))))
                               g7801)
                              (letrec*
                               ((x-cnd7804
                                 (letrec*
                                  ((x7805
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7805)))))
                               (if x-cnd7804
                                 (letrec*
                                  ((g7806
                                    (letrec*
                                     ((x7809
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7808
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7807
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7809 x7808 x7807)))))
                                  g7806)
                                 (letrec*
                                  ((x-cnd7810
                                    (letrec*
                                     ((x7811
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7811)))))
                                  (if x-cnd7810
                                    (letrec*
                                     ((g7812
                                       (letrec*
                                        ((x7816
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7815
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7814
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7813
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7816 x7815 x7814 x7813)))))
                                     g7812)
                                    (letrec*
                                     ((x-cnd7817
                                       (letrec*
                                        ((x7818
                                          (letrec*
                                           ((x7819
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7819)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7818)))))
                                     (if x-cnd7817
                                       (letrec*
                                        ((g7820
                                          (letrec*
                                           ((x7826
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7825
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7824
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7823
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7821
                                             (letrec*
                                              ((x7822
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7822)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7826
                                              x7825
                                              x7824
                                              x7823
                                              x7821)))))
                                        g7820)
                                       (letrec*
                                        ((x-cnd7827
                                          (letrec*
                                           ((x7828
                                             (letrec*
                                              ((x7829
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7829)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7828)))))
                                        (if x-cnd7827
                                          (letrec*
                                           ((g7830
                                             (letrec*
                                              ((x7838
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7837
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7836
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7835
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7833
                                                (letrec*
                                                 ((x7834
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7834))))
                                               (x7831
                                                (letrec*
                                                 ((x7832
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7832)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7838
                                                 x7837
                                                 x7836
                                                 x7835
                                                 x7833
                                                 x7831)))))
                                           g7830)
                                          (letrec*
                                           ((x-cnd7839
                                             (letrec*
                                              ((x7840
                                                (letrec*
                                                 ((x7841
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7841)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7840)))))
                                           (if x-cnd7839
                                             (letrec*
                                              ((g7842
                                                (letrec*
                                                 ((x7852
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7851
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7850
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7849
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7847
                                                   (letrec*
                                                    ((x7848
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7848))))
                                                  (x7845
                                                   (letrec*
                                                    ((x7846
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7846))))
                                                  (x7843
                                                   (letrec*
                                                    ((x7844
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7844)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7852
                                                    x7851
                                                    x7850
                                                    x7849
                                                    x7847
                                                    x7845
                                                    x7843)))))
                                              g7842)
                                             (letrec*
                                              ((g7853
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7853)))))))))))))))))))
                   g7790)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7856))))
                    (g7855
                     (letrec*
                      ((x-cnd7857
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7857
                        #f
                        (letrec*
                         ((x-cnd7858
                           (letrec*
                            ((x7859
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7859 e)))))
                         (if x-cnd7858
                           l
                           (letrec*
                            ((x7860
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7860)))))))))
                   g7855)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7862
                        (letrec*
                         ((x7863
                           (letrec*
                            ((x7864
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7864)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7863)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7862)))))
                   g7861)))
               (cadddr
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
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7868)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7867)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7866)))))
                   g7865)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7869
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7869)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x7872
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7872))))
                    (g7871
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7871)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7874
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7874))))
                   g7873)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7876
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7876)))))
                   g7875)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((val7258
                        (letrec*
                         ((x-cnd7878
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7878
                           (letrec*
                            ((x7879
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7879)))
                           #f))))
                      (letrec*
                       ((g7880
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7880))))
                   g7877)))
               (cddaar
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
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7884)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7883)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7882)))))
                   g7881)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x-cnd7886
                        (letrec*
                         ((x7887 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7887 c)))))
                      (if x-cnd7886
                        (letrec*
                         ((x7888 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7888)))
                        #f))))
                   g7885)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x7891
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7891))))
                    (g7890
                     (letrec*
                      ((x-cnd7892
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7892
                        #f
                        (letrec*
                         ((x-cnd7893
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7894 k)))))
                         (if x-cnd7893
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7895
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7895)))))))))
                   g7890)))
               (not (lambda (x) (letrec* ((g7896 (if x #f #t))) g7896)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7897
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7897)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7898
                     (letrec*
                      ((x7900
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7900))))
                    (g7899
                     (letrec*
                      ((x-cnd7901
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7901
                        #f
                        (letrec*
                         ((x-cnd7902
                           (letrec*
                            ((x7903
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7903 e)))))
                         (if x-cnd7902
                           l
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7904)))))))))
                   g7899)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7905
                     (letrec*
                      ((x7906
                        (letrec*
                         ((x7907
                           (letrec*
                            ((x7908
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7908)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7907)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7906)))))
                   g7905)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7911
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7911))))
                    (g7910
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7912
                             (letrec*
                              ((x-cnd7913
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7913
                                0
                                (letrec*
                                 ((x7914
                                   (letrec*
                                    ((x7915
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7915)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7914)))))))
                           g7912))))
                      (letrec*
                       ((g7916
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7916))))
                   g7910)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7917
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7920))))
                    (g7918
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7921))))
                    (g7919
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7922
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7922))))
                   g7919)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7924)))))
                   g7923)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7926
                        (letrec*
                         ((x7927
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7927)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7926)))))
                   g7925)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7928
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7930))))
                    (g7929
                     (letrec*
                      ((x-cnd7931
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7931
                        #f
                        (letrec*
                         ((x-cnd7932
                           (letrec*
                            ((x7933
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7933 k)))))
                         (if x-cnd7932
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7934
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7934)))))))))
                   g7929)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7936)))))
                   g7935)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7937
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7940))))
                    (g7938
                     (letrec*
                      ((x7941
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7941))))
                    (g7939
                     (letrec*
                      ((x7942
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7942)))))
                   g7939)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7943
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7944
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7944))))
                   g7943)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7948
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7948))))
                    (g7946
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7949))))
                    (g7947
                     (letrec*
                      ((x-cnd7950
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7950
                        #t
                        (letrec*
                         ((x-cnd7951
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7951
                           (letrec*
                            ((g7952
                              (letrec*
                               ((x7954
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7954))))
                             (g7953
                              (letrec*
                               ((x7955
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7955)))))
                            g7953)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7947)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7956
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7958))))
                    (g7957
                     (letrec*
                      ((x-cnd7959
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7959
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7957)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7963
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7963))))
                    (g7961
                     (letrec*
                      ((x7964
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7964))))
                    (g7962
                     (letrec*
                      ((val7261
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7965
                         (if val7261
                           val7261
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7965))))
                   g7962)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7967
                        (letrec*
                         ((x7968
                           (letrec*
                            ((x7969
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7969)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7968)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7967)))))
                   g7966)))
               (newline (lambda () (letrec* ((g7970 #f)) g7970)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7971
                     (letrec*
                      ((x7973
                        (letrec*
                         ((x7974
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7974))))
                       (x7972
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7973 x7972)))))
                   g7971)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7979))))
                    (g7976
                     (letrec*
                      ((x7980
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7980))))
                    (g7977
                     (letrec*
                      ((x7981
                        (letrec*
                         ((x7982
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7982)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7981))))
                    (g7978
                     (letrec*
                      ((x-cnd7983
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7983
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7985
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7984
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7985 x7984)))))))
                   g7978)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((x-cnd7987
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7987
                        a
                        (letrec*
                         ((x7988
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7988)))))))
                   g7986)))
               (tak
                (lambda (x y z k)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x-cnd7990
                        (letrec*
                         ((x7991
                           (begin
                             (write '(funapp 1665 52))
                             (display "\n")
                             (< y x))))
                         (begin
                           (write '(funapp 1665 62))
                           (display "\n")
                           (not x7991)))))
                      (if x-cnd7990
                        (begin (write '(funapp 1667 25)) (display "\n") (k z))
                        (letrec*
                         ((x7997
                           (begin
                             (write '(funapp 1669 34))
                             (display "\n")
                             (- x 1))))
                         (begin
                           (write '(funapp 1670 26))
                           (display "\n")
                           (tak
                            x7997
                            y
                            z
                            (lambda (v1)
                              (letrec*
                               ((g7992
                                 (letrec*
                                  ((x7996
                                    (begin
                                      (write '(funapp 1678 41))
                                      (display "\n")
                                      (- y 1))))
                                  (begin
                                    (write '(funapp 1679 33))
                                    (display "\n")
                                    (tak
                                     x7996
                                     z
                                     x
                                     (lambda (v2)
                                       (letrec*
                                        ((g7993
                                          (letrec*
                                           ((x7995
                                             (begin
                                               (write '(funapp 1687 48))
                                               (display "\n")
                                               (- z 1))))
                                           (begin
                                             (write '(funapp 1688 40))
                                             (display "\n")
                                             (tak
                                              x7995
                                              x
                                              y
                                              (lambda (v3)
                                                (letrec*
                                                 ((g7994
                                                   (begin
                                                     (write '(funapp 1694 52))
                                                     (display "\n")
                                                     (tak v1 v2 v3 k))))
                                                 g7994)))))))
                                        g7993)))))))
                               g7992)))))))))
                   g7989)))
               (tak-main
                (lambda (x y z)
                  (letrec*
                   ((g7998
                     (begin
                       (write '(funapp 1703 22))
                       (display "\n")
                       (tak x y z (lambda (x) (letrec* ((g7999 x)) g7999))))))
                   g7998))))
              (letrec*
               ((g8000
                 (begin
                   (write '(funapp 1707 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1708 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8004
                          (letrec*
                           ((xj7398
                             (begin
                               (write '(funapp 1712 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1712 37))
                                  (display "\n")
                                  'module))))
                            (xk7399
                             (begin
                               (write '(funapp 1712 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1712 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8005
                              (begin
                                (write '(funapp 1715 27))
                                (display "\n")
                                ((lambda (j7403 k7404 f7405)
                                   (letrec*
                                    ((g8006
                                      (lambda (g7400 g7401 g7402)
                                        (letrec*
                                         ((g8007
                                           (letrec*
                                            ((x8008
                                              (letrec*
                                               ((x8011
                                                 (begin
                                                   (write '(funapp 1725 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7403
                                                    k7404
                                                    g7400)))
                                                (x8010
                                                 (begin
                                                   (write '(funapp 1727 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7403
                                                    k7404
                                                    g7401)))
                                                (x8009
                                                 (begin
                                                   (write '(funapp 1729 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7403
                                                    k7404
                                                    g7402))))
                                               (begin
                                                 (write '(funapp 1730 42))
                                                 (display "\n")
                                                 (f7405 x8011 x8010 x8009)))))
                                            (begin
                                              (write '(funapp 1731 39))
                                              (display "\n")
                                              (integer?/c
                                               j7403
                                               k7404
                                               x8008)))))
                                         g8007))))
                                    g8006))
                                 xj7398
                                 xk7399
                                 tak-main))))
                            g8005)))
                         (x8003 (input))
                         (x8002 (input))
                         (x8001 (input)))
                        (begin
                          (write '(funapp 1741 21))
                          (display "\n")
                          (x8004 x8003 x8002 x8001)))))))))
               g8000))))
           g7434))))
       g7417)))
    g7416)))
