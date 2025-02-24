(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7403 #t)) g7403)))
    (meta (lambda (v) (letrec* ((g7404 v)) g7404)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7405
          (letrec*
           ((g7406
             (letrec*
              ((x-e7407 lst))
              (letrec*
               ((v1742 x-e7407))
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
                   ((x-cnd7408
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7408
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
           g7406)))
        g7405)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7409 (lambda (v) (letrec* ((g7410 v)) g7410)))) g7409)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7411
          (letrec*
           ((x7412 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7412)))))
        g7411))))
   (letrec*
    ((g7413
      (letrec*
       ((g7414
         (letrec*
          ((assert
            (lambda (cnd)
              (letrec*
               ((g7415
                 (if cnd
                   (begin (write '(funapp 47 31)) (display "\n") '())
                   (begin
                     (write '(funapp 47 36))
                     (display "\n")
                     (error "assertion failed")))))
               g7415)))
           (>=
            (lambda (x y)
              (letrec*
               ((g7416
                 (letrec*
                  ((x7418
                    (begin
                      (write '(funapp 52 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 52 55))
                    (display "\n")
                    (assert x7418))))
                (g7417
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 55 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7419
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 61 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7420 (if val7244 val7244 #f))) g7420)))))
                   g7419))))
               g7417)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7421
                 (letrec*
                  ((x7423
                    (begin
                      (write '(funapp 68 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 68 55))
                    (display "\n")
                    (assert x7423))))
                (g7422
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 71 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7424
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 77 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7425 (if val7246 val7246 #f))) g7425)))))
                   g7424))))
               g7422)))
           (>
            (lambda (x y)
              (letrec*
               ((g7426
                 (letrec*
                  ((x7428
                    (begin
                      (write '(funapp 84 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 84 55))
                    (display "\n")
                    (assert x7428))))
                (g7427
                 (letrec*
                  ((x7429
                    (begin (write '(funapp 85 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 85 52)) (display "\n") (not x7429)))))
               g7427)))
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
           ((g7430 (begin (write '(funapp 101 19)) (display "\n") '()))
            (g7431
             (letrec*
              ((empty (begin (write '(funapp 104 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7432
                     (lambda (k j lst)
                       (letrec*
                        ((g7433
                          (begin
                            (write '(funapp 112 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7434
                                  (begin
                                    (write '(funapp 114 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7434))
                             lst))))
                        g7433))))
                   g7432)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7435
                     (letrec*
                      ((x-cnd7436
                        (begin
                          (write '(funapp 123 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7436
                        g7263
                        (begin
                          (write '(blame g7261 124 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7435)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7437
                     (letrec*
                      ((x-cnd7438
                        (begin
                          (write '(funapp 131 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7438
                        g7266
                        (begin
                          (write '(blame g7264 132 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7437)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x-cnd7440
                        (begin
                          (write '(funapp 139 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7440
                        g7269
                        (begin
                          (write '(blame g7267 140 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7439)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7441
                     (letrec*
                      ((x-cnd7442
                        (begin
                          (write '(funapp 148 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7443 #t)) g7443)) g7272))))
                      (if x-cnd7442
                        g7272
                        (begin
                          (write '(blame g7270 149 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7441)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 157 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7446 #t)) g7446)) g7275))))
                      (if x-cnd7445
                        g7275
                        (begin
                          (write '(blame g7273 158 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7444)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 165 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7448
                        g7278
                        (begin
                          (write '(blame g7276 166 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7447)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 174 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7450
                        g7281
                        (begin
                          (write '(blame g7279 175 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7449)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 182 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7452
                        g7284
                        (begin
                          (write '(blame g7282 183 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7451)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 190 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7454
                        g7287
                        (begin
                          (write '(blame g7285 191 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7453)))
               (string?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 198 35))
                          (display "\n")
                          (string? g7290))))
                      (if x-cnd7456
                        g7290
                        (begin
                          (write '(blame g7288 199 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7455)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7457
                     (lambda (k j v)
                       (letrec*
                        ((g7458
                          (letrec*
                           ((x-cnd7459
                             (begin
                               (write '(funapp 209 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7459
                             (begin
                               (write '(funapp 210 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7458))))
                   g7457)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7460
                     (lambda (k j v)
                       (letrec*
                        ((g7461
                          (letrec*
                           ((x-cnd7462
                             (begin
                               (write '(funapp 221 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7462
                             (begin
                               (write '(funapp 223 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7466
                                (letrec*
                                 ((x7467
                                   (begin
                                     (write '(funapp 227 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 228 34))
                                   (display "\n")
                                   (contract k j x7467))))
                               (x7463
                                (letrec*
                                 ((x7465
                                   (begin
                                     (write '(funapp 231 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7464
                                   (begin
                                     (write '(funapp 231 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 232 34))
                                   (display "\n")
                                   (x7465 k j x7464)))))
                              (begin
                                (write '(funapp 233 31))
                                (display "\n")
                                (orig-cons x7466 x7463)))))))
                        g7461))))
                   g7460)))
               (any? (lambda (v) (letrec* ((g7468 #t)) g7468)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x7470
                        (begin
                          (write '(funapp 240 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 240 55))
                        (display "\n")
                        (not x7470)))))
                   g7469)))
               (nonzero?/c
                (lambda (g7291 g7292 g7293)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x-cnd7472
                        (begin
                          (write '(funapp 248 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7473
                                (letrec*
                                 ((x7474
                                   (begin
                                     (write '(funapp 250 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 250 64))
                                   (display "\n")
                                   (not x7474)))))
                              g7473))
                           g7293))))
                      (if x-cnd7472
                        g7293
                        (begin
                          (write '(blame g7291 255 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7291)))))))
                   g7471)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7475
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7476
                          (letrec*
                           ((x-cnd7477
                             (begin
                               (write '(funapp 266 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7478
                                     (begin
                                       (write '(funapp 267 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7478))
                                g7296))))
                           (if x-cnd7477
                             g7296
                             (begin
                               (write '(blame g7294 271 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7476))))
                   g7475)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7479
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7480
                          (letrec*
                           ((x-cnd7481
                             (begin
                               (write '(funapp 283 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7482
                                     (begin
                                       (write '(funapp 284 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7482))
                                g7299))))
                           (if x-cnd7481
                             g7299
                             (begin
                               (write '(blame g7297 288 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7480))))
                   g7479)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7483
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7484
                          (letrec*
                           ((x-cnd7485
                             (begin
                               (write '(funapp 300 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7486
                                     (begin
                                       (write '(funapp 301 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7486))
                                g7302))))
                           (if x-cnd7485
                             g7302
                             (begin
                               (write '(blame g7300 305 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7484))))
                   g7483)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7487
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7488
                          (letrec*
                           ((x-cnd7489
                             (begin
                               (write '(funapp 317 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7490
                                     (begin
                                       (write '(funapp 318 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7490))
                                g7305))))
                           (if x-cnd7489
                             g7305
                             (begin
                               (write '(blame g7303 322 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7488))))
                   g7487)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7491
                     (lambda (g7306 g7307 g7308)
                       (letrec*
                        ((g7492
                          (letrec*
                           ((x-cnd7493
                             (begin
                               (write '(funapp 334 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7494
                                     (begin
                                       (write '(funapp 335 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7494))
                                g7308))))
                           (if x-cnd7493
                             g7308
                             (begin
                               (write '(blame g7306 339 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7306)))))))
                        g7492))))
                   g7491)))
               (meta (lambda (v) (letrec* ((g7495 v)) g7495)))
               (+
                (letrec*
                 ((xj7309
                   (begin (write '(funapp 345 26)) (display "\n") 'server))
                  (xk7310
                   (begin (write '(funapp 345 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7496
                    (begin
                      (write '(funapp 348 21))
                      (display "\n")
                      ((lambda (j7313 k7314 f7315)
                         (letrec*
                          ((g7498
                            (lambda (g7311 g7312)
                              (letrec*
                               ((g7499
                                 (letrec*
                                  ((x7500
                                    (letrec*
                                     ((x7502
                                       (begin
                                         (write '(funapp 357 44))
                                         (display "\n")
                                         (number?/c j7313 k7314 g7311)))
                                      (x7501
                                       (begin
                                         (write '(funapp 358 44))
                                         (display "\n")
                                         (number?/c j7313 k7314 g7312))))
                                     (begin
                                       (write '(funapp 359 36))
                                       (display "\n")
                                       (f7315 x7502 x7501)))))
                                  (begin
                                    (write '(funapp 360 33))
                                    (display "\n")
                                    (number?/c j7313 k7314 x7500)))))
                               g7499))))
                          g7498))
                       xj7309
                       xk7310
                       (lambda (a b)
                         (letrec*
                          ((g7497
                            (begin
                              (write '(funapp 365 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7497))))))
                  g7496)))
               (-
                (letrec*
                 ((xj7316
                   (begin (write '(funapp 369 26)) (display "\n") 'server))
                  (xk7317
                   (begin (write '(funapp 369 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7503
                    (begin
                      (write '(funapp 372 21))
                      (display "\n")
                      ((lambda (j7320 k7321 f7322)
                         (letrec*
                          ((g7505
                            (lambda (g7318 g7319)
                              (letrec*
                               ((g7506
                                 (letrec*
                                  ((x7507
                                    (letrec*
                                     ((x7509
                                       (begin
                                         (write '(funapp 381 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7318)))
                                      (x7508
                                       (begin
                                         (write '(funapp 382 44))
                                         (display "\n")
                                         (number?/c j7320 k7321 g7319))))
                                     (begin
                                       (write '(funapp 383 36))
                                       (display "\n")
                                       (f7322 x7509 x7508)))))
                                  (begin
                                    (write '(funapp 384 33))
                                    (display "\n")
                                    (number?/c j7320 k7321 x7507)))))
                               g7506))))
                          g7505))
                       xj7316
                       xk7317
                       (lambda (a b)
                         (letrec*
                          ((g7504
                            (begin
                              (write '(funapp 389 53))
                              (display "\n")
                              (orig-- a b))))
                          g7504))))))
                  g7503)))
               (*
                (letrec*
                 ((xj7323
                   (begin (write '(funapp 393 26)) (display "\n") 'server))
                  (xk7324
                   (begin (write '(funapp 393 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7510
                    (begin
                      (write '(funapp 396 21))
                      (display "\n")
                      ((lambda (j7327 k7328 f7329)
                         (letrec*
                          ((g7512
                            (lambda (g7325 g7326)
                              (letrec*
                               ((g7513
                                 (letrec*
                                  ((x7514
                                    (letrec*
                                     ((x7516
                                       (begin
                                         (write '(funapp 405 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7325)))
                                      (x7515
                                       (begin
                                         (write '(funapp 406 44))
                                         (display "\n")
                                         (number?/c j7327 k7328 g7326))))
                                     (begin
                                       (write '(funapp 407 36))
                                       (display "\n")
                                       (f7329 x7516 x7515)))))
                                  (begin
                                    (write '(funapp 408 33))
                                    (display "\n")
                                    (number?/c j7327 k7328 x7514)))))
                               g7513))))
                          g7512))
                       xj7323
                       xk7324
                       (lambda (a b)
                         (letrec*
                          ((g7511
                            (begin
                              (write '(funapp 413 53))
                              (display "\n")
                              (orig-* a b))))
                          g7511))))))
                  g7510)))
               (<
                (letrec*
                 ((xj7330
                   (begin (write '(funapp 417 26)) (display "\n") 'server))
                  (xk7331
                   (begin (write '(funapp 417 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7517
                    (begin
                      (write '(funapp 420 21))
                      (display "\n")
                      ((lambda (j7334 k7335 f7336)
                         (letrec*
                          ((g7519
                            (lambda (g7332 g7333)
                              (letrec*
                               ((g7520
                                 (letrec*
                                  ((x7521
                                    (letrec*
                                     ((x7523
                                       (begin
                                         (write '(funapp 429 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7332)))
                                      (x7522
                                       (begin
                                         (write '(funapp 430 44))
                                         (display "\n")
                                         (number?/c j7334 k7335 g7333))))
                                     (begin
                                       (write '(funapp 431 36))
                                       (display "\n")
                                       (f7336 x7523 x7522)))))
                                  (begin
                                    (write '(funapp 432 33))
                                    (display "\n")
                                    (boolean?/c j7334 k7335 x7521)))))
                               g7520))))
                          g7519))
                       xj7330
                       xk7331
                       (lambda (a b)
                         (letrec*
                          ((g7518
                            (begin
                              (write '(funapp 437 53))
                              (display "\n")
                              (orig-< a b))))
                          g7518))))))
                  g7517)))
               (>
                (letrec*
                 ((xj7337
                   (begin (write '(funapp 441 26)) (display "\n") 'server))
                  (xk7338
                   (begin (write '(funapp 441 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7524
                    (begin
                      (write '(funapp 444 21))
                      (display "\n")
                      ((lambda (j7341 k7342 f7343)
                         (letrec*
                          ((g7526
                            (lambda (g7339 g7340)
                              (letrec*
                               ((g7527
                                 (letrec*
                                  ((x7528
                                    (letrec*
                                     ((x7530
                                       (begin
                                         (write '(funapp 453 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7339)))
                                      (x7529
                                       (begin
                                         (write '(funapp 454 44))
                                         (display "\n")
                                         (number?/c j7341 k7342 g7340))))
                                     (begin
                                       (write '(funapp 455 36))
                                       (display "\n")
                                       (f7343 x7530 x7529)))))
                                  (begin
                                    (write '(funapp 456 33))
                                    (display "\n")
                                    (boolean?/c j7341 k7342 x7528)))))
                               g7527))))
                          g7526))
                       xj7337
                       xk7338
                       (lambda (a b)
                         (letrec*
                          ((g7525
                            (begin
                              (write '(funapp 461 53))
                              (display "\n")
                              (orig-> a b))))
                          g7525))))))
                  g7524)))
               (<=
                (letrec*
                 ((xj7344
                   (begin (write '(funapp 465 26)) (display "\n") 'server))
                  (xk7345
                   (begin (write '(funapp 465 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7531
                    (begin
                      (write '(funapp 468 21))
                      (display "\n")
                      ((lambda (j7348 k7349 f7350)
                         (letrec*
                          ((g7533
                            (lambda (g7346 g7347)
                              (letrec*
                               ((g7534
                                 (letrec*
                                  ((x7535
                                    (letrec*
                                     ((x7537
                                       (begin
                                         (write '(funapp 477 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7346)))
                                      (x7536
                                       (begin
                                         (write '(funapp 478 44))
                                         (display "\n")
                                         (number?/c j7348 k7349 g7347))))
                                     (begin
                                       (write '(funapp 479 36))
                                       (display "\n")
                                       (f7350 x7537 x7536)))))
                                  (begin
                                    (write '(funapp 480 33))
                                    (display "\n")
                                    (boolean?/c j7348 k7349 x7535)))))
                               g7534))))
                          g7533))
                       xj7344
                       xk7345
                       (lambda (a b)
                         (letrec*
                          ((g7532
                            (begin
                              (write '(funapp 485 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7532))))))
                  g7531)))
               (>=
                (letrec*
                 ((xj7351
                   (begin (write '(funapp 489 26)) (display "\n") 'server))
                  (xk7352
                   (begin (write '(funapp 489 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7538
                    (begin
                      (write '(funapp 492 21))
                      (display "\n")
                      ((lambda (j7355 k7356 f7357)
                         (letrec*
                          ((g7540
                            (lambda (g7353 g7354)
                              (letrec*
                               ((g7541
                                 (letrec*
                                  ((x7542
                                    (letrec*
                                     ((x7544
                                       (begin
                                         (write '(funapp 501 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7353)))
                                      (x7543
                                       (begin
                                         (write '(funapp 502 44))
                                         (display "\n")
                                         (number?/c j7355 k7356 g7354))))
                                     (begin
                                       (write '(funapp 503 36))
                                       (display "\n")
                                       (f7357 x7544 x7543)))))
                                  (begin
                                    (write '(funapp 504 33))
                                    (display "\n")
                                    (boolean?/c j7355 k7356 x7542)))))
                               g7541))))
                          g7540))
                       xj7351
                       xk7352
                       (lambda (a b)
                         (letrec*
                          ((g7539
                            (begin
                              (write '(funapp 509 53))
                              (display "\n")
                              (orig->= a b))))
                          g7539))))))
                  g7538)))
               (/
                (letrec*
                 ((xj7358
                   (begin (write '(funapp 513 26)) (display "\n") 'server))
                  (xk7359
                   (begin (write '(funapp 513 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7545
                    (begin
                      (write '(funapp 516 21))
                      (display "\n")
                      ((lambda (j7362 k7363 f7364)
                         (letrec*
                          ((g7547
                            (lambda (g7360 g7361)
                              (letrec*
                               ((g7548
                                 (letrec*
                                  ((x7549
                                    (letrec*
                                     ((x7551
                                       (begin
                                         (write '(funapp 525 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7360)))
                                      (x7550
                                       (begin
                                         (write '(funapp 526 44))
                                         (display "\n")
                                         (number?/c j7362 k7363 g7361))))
                                     (begin
                                       (write '(funapp 527 36))
                                       (display "\n")
                                       (f7364 x7551 x7550)))))
                                  (begin
                                    (write '(funapp 528 33))
                                    (display "\n")
                                    (number?/c j7362 k7363 x7549)))))
                               g7548))))
                          g7547))
                       xj7358
                       xk7359
                       (lambda (a b)
                         (letrec*
                          ((g7546
                            (begin
                              (write '(funapp 533 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7546))))))
                  g7545)))
               (car
                (letrec*
                 ((xj7365
                   (begin (write '(funapp 537 26)) (display "\n") 'server))
                  (xk7366
                   (begin (write '(funapp 537 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7552
                    (begin
                      (write '(funapp 540 21))
                      (display "\n")
                      ((lambda (j7368 k7369 f7370)
                         (letrec*
                          ((g7554
                            (lambda (g7367)
                              (letrec*
                               ((g7555
                                 (letrec*
                                  ((x7556
                                    (letrec*
                                     ((x7557
                                       (begin
                                         (write '(funapp 549 44))
                                         (display "\n")
                                         (pair?/c j7368 k7369 g7367))))
                                     (begin
                                       (write '(funapp 550 36))
                                       (display "\n")
                                       (f7370 x7557)))))
                                  (begin
                                    (write '(funapp 551 33))
                                    (display "\n")
                                    (any/c j7368 k7369 x7556)))))
                               g7555))))
                          g7554))
                       xj7365
                       xk7366
                       (lambda (p)
                         (letrec*
                          ((g7553
                            (begin
                              (write '(funapp 556 51))
                              (display "\n")
                              (orig-car p))))
                          g7553))))))
                  g7552)))
               (cdr
                (letrec*
                 ((xj7371
                   (begin (write '(funapp 560 26)) (display "\n") 'server))
                  (xk7372
                   (begin (write '(funapp 560 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7558
                    (begin
                      (write '(funapp 563 21))
                      (display "\n")
                      ((lambda (j7374 k7375 f7376)
                         (letrec*
                          ((g7560
                            (lambda (g7373)
                              (letrec*
                               ((g7561
                                 (letrec*
                                  ((x7562
                                    (letrec*
                                     ((x7563
                                       (begin
                                         (write '(funapp 572 44))
                                         (display "\n")
                                         (pair?/c j7374 k7375 g7373))))
                                     (begin
                                       (write '(funapp 573 36))
                                       (display "\n")
                                       (f7376 x7563)))))
                                  (begin
                                    (write '(funapp 574 33))
                                    (display "\n")
                                    (any/c j7374 k7375 x7562)))))
                               g7561))))
                          g7560))
                       xj7371
                       xk7372
                       (lambda (p)
                         (letrec*
                          ((g7559
                            (begin
                              (write '(funapp 579 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7559))))))
                  g7558)))
               (cons
                (letrec*
                 ((xj7377
                   (begin (write '(funapp 583 26)) (display "\n") 'server))
                  (xk7378
                   (begin (write '(funapp 583 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7564
                    (begin
                      (write '(funapp 586 21))
                      (display "\n")
                      ((lambda (j7381 k7382 f7383)
                         (letrec*
                          ((g7566
                            (lambda (g7379 g7380)
                              (letrec*
                               ((g7567
                                 (letrec*
                                  ((x7568
                                    (letrec*
                                     ((x7570
                                       (begin
                                         (write '(funapp 595 44))
                                         (display "\n")
                                         (any/c j7381 k7382 g7379)))
                                      (x7569
                                       (begin
                                         (write '(funapp 596 44))
                                         (display "\n")
                                         (any/c j7381 k7382 g7380))))
                                     (begin
                                       (write '(funapp 597 36))
                                       (display "\n")
                                       (f7383 x7570 x7569)))))
                                  (begin
                                    (write '(funapp 598 33))
                                    (display "\n")
                                    (pair?/c j7381 k7382 x7568)))))
                               g7567))))
                          g7566))
                       xj7377
                       xk7378
                       (lambda (a b)
                         (letrec*
                          ((g7565
                            (begin
                              (write '(funapp 604 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7565))))))
                  g7564)))
               (vector-ref
                (letrec*
                 ((xj7384
                   (begin (write '(funapp 608 26)) (display "\n") 'server))
                  (xk7385
                   (begin (write '(funapp 608 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7571
                    (begin
                      (write '(funapp 611 21))
                      (display "\n")
                      ((lambda (j7387 k7388 f7389)
                         (letrec*
                          ((g7573
                            (lambda (g7386)
                              (letrec*
                               ((g7574
                                 (letrec*
                                  ((x7575
                                    (letrec*
                                     ((x7576
                                       (begin
                                         (write '(funapp 620 44))
                                         (display "\n")
                                         (vector?/c j7387 k7388 g7386))))
                                     (begin
                                       (write '(funapp 621 36))
                                       (display "\n")
                                       (f7389 x7576)))))
                                  (begin
                                    (write '(funapp 622 33))
                                    (display "\n")
                                    (integer?/c j7387 k7388 x7575)))))
                               g7574))))
                          g7573))
                       xj7384
                       xk7385
                       (lambda (v i)
                         (letrec*
                          ((g7572
                            (begin
                              (write '(funapp 628 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7572))))))
                  g7571)))
               (vector-set!
                (letrec*
                 ((xj7390
                   (begin (write '(funapp 632 26)) (display "\n") 'server))
                  (xk7391
                   (begin (write '(funapp 632 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7577
                    (begin
                      (write '(funapp 635 21))
                      (display "\n")
                      ((lambda (j7394 k7395 f7396)
                         (letrec*
                          ((g7579
                            (lambda (g7392 g7393)
                              (letrec*
                               ((g7580
                                 (letrec*
                                  ((x7581
                                    (letrec*
                                     ((x7583
                                       (begin
                                         (write '(funapp 644 44))
                                         (display "\n")
                                         (vector?/c j7394 k7395 g7392)))
                                      (x7582
                                       (begin
                                         (write '(funapp 645 44))
                                         (display "\n")
                                         (integer?/c j7394 k7395 g7393))))
                                     (begin
                                       (write '(funapp 646 36))
                                       (display "\n")
                                       (f7396 x7583 x7582)))))
                                  (begin
                                    (write '(funapp 647 33))
                                    (display "\n")
                                    (any/c j7394 k7395 x7581)))))
                               g7580))))
                          g7579))
                       xj7390
                       xk7391
                       (lambda (vec i v)
                         (letrec*
                          ((g7578
                            (begin
                              (write '(funapp 653 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7578))))))
                  g7577)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7584
                     (letrec*
                      ((x7585
                        (letrec*
                         ((x7586
                           (begin
                             (write '(funapp 660 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 660 58))
                           (display "\n")
                           (cdr x7586)))))
                      (begin
                        (write '(funapp 661 23))
                        (display "\n")
                        (cdr x7585)))))
                   g7584)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7587
                     (letrec*
                      ((x7590
                        (begin
                          (write '(funapp 667 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 667 62))
                        (display "\n")
                        (assert x7590))))
                    (g7588
                     (letrec*
                      ((x7591
                        (begin
                          (write '(funapp 668 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 668 57))
                        (display "\n")
                        (assert x7591))))
                    (g7589
                     (letrec*
                      ((x-cnd7592
                        (begin
                          (write '(funapp 671 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7592
                        (begin (write '(funapp 673 24)) (display "\n") '())
                        (letrec*
                         ((x7595
                           (letrec*
                            ((x7596
                              (begin
                                (write '(funapp 675 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 675 61))
                              (display "\n")
                              (f x7596))))
                          (x7593
                           (letrec*
                            ((x7594
                              (begin
                                (write '(funapp 676 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 676 61))
                              (display "\n")
                              (map f x7594)))))
                         (begin
                           (write '(funapp 677 26))
                           (display "\n")
                           (cons x7595 x7593)))))))
                   g7589)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 682 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 682 55))
                        (display "\n")
                        (cdr x7598)))))
                   g7597)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7600
                        (letrec*
                         ((x7601
                           (letrec*
                            ((x7602
                              (begin
                                (write '(funapp 691 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 691 61))
                              (display "\n")
                              (car x7602)))))
                         (begin
                           (write '(funapp 692 26))
                           (display "\n")
                           (cdr x7601)))))
                      (begin
                        (write '(funapp 693 23))
                        (display "\n")
                        (car x7600)))))
                   g7599)))
               (cdadar
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
                                (write '(funapp 702 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 702 61))
                              (display "\n")
                              (cdr x7606)))))
                         (begin
                           (write '(funapp 703 26))
                           (display "\n")
                           (car x7605)))))
                      (begin
                        (write '(funapp 704 23))
                        (display "\n")
                        (cdr x7604)))))
                   g7603)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7610
                        (begin
                          (write '(funapp 710 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 710 60))
                        (display "\n")
                        (assert x7610))))
                    (g7608
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 712 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 712 59))
                        (display "\n")
                        (assert x7611))))
                    (g7609
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
                       ((g7612
                         (begin
                           (write '(funapp 718 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7613 res))
                       g7613))))
                   g7609)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (letrec*
                         ((x7616
                           (begin
                             (write '(funapp 726 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 726 58))
                           (display "\n")
                           (cdr x7616)))))
                      (begin
                        (write '(funapp 727 23))
                        (display "\n")
                        (car x7615)))))
                   g7614)))
               (cdaadr
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
                                (write '(funapp 736 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 736 61))
                              (display "\n")
                              (car x7620)))))
                         (begin
                           (write '(funapp 737 26))
                           (display "\n")
                           (car x7619)))))
                      (begin
                        (write '(funapp 738 23))
                        (display "\n")
                        (cdr x7618)))))
                   g7617)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 743 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 743 57))
                        (display "\n")
                        (assert x7623))))
                    (g7622
                     (letrec*
                      ((x-cnd7624
                        (begin
                          (write '(funapp 746 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7624
                        #f
                        (letrec*
                         ((x-cnd7625
                           (letrec*
                            ((x7626
                              (begin
                                (write '(funapp 751 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 751 56))
                              (display "\n")
                              (eq? x7626 k)))))
                         (if x-cnd7625
                           (begin
                             (write '(funapp 753 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7627
                              (begin
                                (write '(funapp 754 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 754 55))
                              (display "\n")
                              (assq k x7627)))))))))
                   g7622)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 759 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 759 60))
                        (display "\n")
                        (= 0 x7629)))))
                   g7628)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 764 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 764 57))
                        (display "\n")
                        (assert x7632))))
                    (g7631
                     (letrec*
                      ((x-cnd7633
                        (begin
                          (write '(funapp 767 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7633
                        ""
                        (letrec*
                         ((x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 772 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 772 55))
                              (display "\n")
                              (char->string x7637))))
                          (x7634
                           (letrec*
                            ((x7635
                              (begin
                                (write '(funapp 774 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 774 55))
                              (display "\n")
                              (list->string x7635)))))
                         (begin
                           (write '(funapp 775 26))
                           (display "\n")
                           (string-append x7636 x7634)))))))
                   g7631)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 780 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 780 58))
                        (display "\n")
                        (assert x7641))))
                    (g7639
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 781 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 781 58))
                        (display "\n")
                        (assert x7642))))
                    (g7640
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 784 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7643
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 786 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7643))))
                   g7640)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7645
                        (letrec*
                         ((x7646
                           (letrec*
                            ((x7647
                              (begin
                                (write '(funapp 796 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 796 61))
                              (display "\n")
                              (cdr x7647)))))
                         (begin
                           (write '(funapp 797 26))
                           (display "\n")
                           (cdr x7646)))))
                      (begin
                        (write '(funapp 798 23))
                        (display "\n")
                        (cdr x7645)))))
                   g7644)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 803 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 803 57))
                        (display "\n")
                        (assert x7651))))
                    (g7649
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 804 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 804 57))
                        (display "\n")
                        (assert x7652))))
                    (g7650
                     (letrec*
                      ((x-cnd7653
                        (begin
                          (write '(funapp 807 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7653
                        x
                        (letrec*
                         ((x7655
                           (begin
                             (write '(funapp 811 34))
                             (display "\n")
                             (cdr x)))
                          (x7654
                           (begin
                             (write '(funapp 811 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 812 26))
                           (display "\n")
                           (list-tail x7655 x7654)))))))
                   g7650)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7656
                     (begin (write '(funapp 814 49)) (display "\n") '())))
                   g7656)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x-cnd7658
                        (letrec*
                         ((x7659 #\a))
                         (begin
                           (write '(funapp 821 48))
                           (display "\n")
                           (char-ci>=? c x7659)))))
                      (if x-cnd7658
                        (letrec*
                         ((x7660 #\z))
                         (begin
                           (write '(funapp 823 48))
                           (display "\n")
                           (char-ci<=? c x7660)))
                        #f))))
                   g7657)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7662
                           (begin
                             (write '(funapp 832 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 832 62))
                           (display "\n")
                           (= x7662 9)))))
                      (letrec*
                       ((g7663
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7664
                                 (begin
                                   (write '(funapp 840 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 841 32))
                                 (display "\n")
                                 (= x7664 10)))))
                            (letrec*
                             ((g7665
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7666
                                    (begin
                                      (write '(funapp 847 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 848 35))
                                    (display "\n")
                                    (= x7666 32))))))
                             g7665)))))
                       g7663))))
                   g7661)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x7668
                        (letrec*
                         ((x7669
                           (begin
                             (write '(funapp 857 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 857 58))
                           (display "\n")
                           (cdr x7669)))))
                      (begin
                        (write '(funapp 858 23))
                        (display "\n")
                        (cdr x7668)))))
                   g7667)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x7672
                        (begin
                          (write '(funapp 863 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 863 59))
                        (display "\n")
                        (assert x7672))))
                    (g7671
                     (begin (write '(funapp 864 28)) (display "\n") (> x 0))))
                   g7671)))
               ($pc (begin (write '(funapp 866 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7673 #f)) g7673)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 872 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 872 55))
                        (display "\n")
                        (cdr x7675)))))
                   g7674)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7676
                     (letrec*
                      ((x7678
                        (begin
                          (write '(funapp 877 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 877 59))
                        (display "\n")
                        (assert x7678))))
                    (g7677
                     (letrec*
                      ((x-cnd7679
                        (begin
                          (write '(funapp 880 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7679
                        (begin
                          (write '(funapp 881 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 881 49))
                          (display "\n")
                          (floor x))))))
                   g7677)))
               ($cmp (begin (write '(funapp 883 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 889 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7681
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7682
                                 (begin
                                   (write '(funapp 897 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7682
                                 (begin
                                   (write '(funapp 898 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7683
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7684
                                       (begin
                                         (write '(funapp 906 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7684
                                       (letrec*
                                        ((x-cnd7685
                                          (begin
                                            (write '(funapp 909 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7685
                                          (begin
                                            (write '(funapp 910 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
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
                                               (write '(funapp 919 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7687
                                             (letrec*
                                              ((x-cnd7688
                                                (begin
                                                  (write '(funapp 922 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7688
                                                (letrec*
                                                 ((x-cnd7689
                                                   (letrec*
                                                    ((x7691
                                                      (begin
                                                        (write
                                                         '(funapp 927 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7690
                                                      (begin
                                                        (write
                                                         '(funapp 928 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 929 53))
                                                      (display "\n")
                                                      (equal? x7691 x7690)))))
                                                 (if x-cnd7689
                                                   (letrec*
                                                    ((x7693
                                                      (begin
                                                        (write
                                                         '(funapp 932 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7692
                                                      (begin
                                                        (write
                                                         '(funapp 933 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 934 53))
                                                      (display "\n")
                                                      (equal? x7693 x7692)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7694
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7695
                                                (begin
                                                  (write '(funapp 943 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7695
                                                (letrec*
                                                 ((x-cnd7696
                                                   (begin
                                                     (write '(funapp 946 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7696
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 949 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7697
                                                       (letrec*
                                                        ((x-cnd7698
                                                          (letrec*
                                                           ((x7699
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
                                                             (= x7699 n)))))
                                                        (if x-cnd7698
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7700
                                                                  (letrec*
                                                                   ((val7254
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
                                                                    ((g7701
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7702
                                                                           (letrec*
                                                                            ((x7704
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
                                                                             (x7703
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
                                                                               x7704
                                                                               x7703)))))
                                                                         (if x-cnd7702
                                                                           (letrec*
                                                                            ((x7705
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
                                                                               x7705)))
                                                                           #f)))))
                                                                    g7701))))
                                                                g7700))))
                                                           (letrec*
                                                            ((g7706
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   998
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7706))
                                                          #f))))
                                                     g7697))
                                                   #f))
                                                #f)))))
                                         g7694)))))
                                   g7686)))))
                             g7683)))))
                       g7681))))
                   g7680)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7707
                     (letrec*
                      ((x7708
                        (letrec*
                         ((x7709
                           (letrec*
                            ((x7710
                              (begin
                                (write '(funapp 1016 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1016 61))
                              (display "\n")
                              (car x7710)))))
                         (begin
                           (write '(funapp 1017 26))
                           (display "\n")
                           (car x7709)))))
                      (begin
                        (write '(funapp 1018 23))
                        (display "\n")
                        (cdr x7708)))))
                   g7707)))
               (caaddr
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
                                (write '(funapp 1027 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1027 61))
                              (display "\n")
                              (cdr x7714)))))
                         (begin
                           (write '(funapp 1028 26))
                           (display "\n")
                           (car x7713)))))
                      (begin
                        (write '(funapp 1029 23))
                        (display "\n")
                        (car x7712)))))
                   g7711)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7715
                     (begin
                       (write '(funapp 1031 53))
                       (display "\n")
                       (eq? x y))))
                   g7715)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7716
                     (letrec*
                      ((x7719
                        (begin
                          (write '(funapp 1036 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1036 60))
                        (display "\n")
                        (assert x7719))))
                    (g7717
                     (letrec*
                      ((x7720
                        (begin
                          (write '(funapp 1038 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1038 59))
                        (display "\n")
                        (assert x7720))))
                    (g7718
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
                       ((g7721
                         (begin
                           (write '(funapp 1044 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7722 res))
                       g7722))))
                   g7718)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7723
                     (begin
                       (write '(funapp 1047 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1047 57))
                          (display "\n")
                          '())))))
                   g7723)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7724
                     (letrec*
                      ((x7727
                        (begin
                          (write '(funapp 1051 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1051 58))
                        (display "\n")
                        (assert x7727))))
                    (g7725
                     (letrec*
                      ((x7728
                        (begin
                          (write '(funapp 1052 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1052 58))
                        (display "\n")
                        (assert x7728))))
                    (g7726
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1055 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7729
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1057 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7729))))
                   g7726)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7731
                        (letrec*
                         ((x7732
                           (begin
                             (write '(funapp 1065 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1065 58))
                           (display "\n")
                           (car x7732)))))
                      (begin
                        (write '(funapp 1066 23))
                        (display "\n")
                        (cdr x7731)))))
                   g7730)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7734
                        (letrec*
                         ((x7735
                           (letrec*
                            ((x7736
                              (begin
                                (write '(funapp 1075 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1075 61))
                              (display "\n")
                              (cdr x7736)))))
                         (begin
                           (write '(funapp 1076 26))
                           (display "\n")
                           (car x7735)))))
                      (begin
                        (write '(funapp 1077 23))
                        (display "\n")
                        (cdr x7734)))))
                   g7733)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7738
                        (letrec*
                         ((x7739
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (cdr x7739)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7738)))))
                   g7737)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (letrec*
                         ((x7742
                           (begin
                             (write '(funapp 1093 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1093 58))
                           (display "\n")
                           (car x7742)))))
                      (begin
                        (write '(funapp 1094 23))
                        (display "\n")
                        (car x7741)))))
                   g7740)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1099 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1099 58))
                        (display "\n")
                        (assert x7746))))
                    (g7744
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1100 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1100 58))
                        (display "\n")
                        (assert x7747))))
                    (g7745
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1101 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1101 66))
                        (display "\n")
                        (not x7748)))))
                   g7745)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (letrec*
                         ((x7751
                           (letrec*
                            ((x7752
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (car x7752)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (car x7751)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7750)))))
                   g7749)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1118 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1118 59))
                        (display "\n")
                        (assert x7755))))
                    (g7754
                     (begin (write '(funapp 1119 28)) (display "\n") (< x 0))))
                   g7754)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7756
                     (begin
                       (write '(funapp 1121 53))
                       (display "\n")
                       (memq e l))))
                   g7756)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7758
                        (letrec*
                         ((x7759
                           (begin
                             (write '(funapp 1127 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1127 58))
                           (display "\n")
                           (car x7759)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7758)))))
                   g7757)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7760
                     (begin (write '(funapp 1130 51)) (display "\n") '())))
                   g7760)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1134 57))
                        (display "\n")
                        (assert x7763))))
                    (g7762
                     (letrec*
                      ((x-cnd7764
                        (begin
                          (write '(funapp 1137 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7764
                        (begin (write '(funapp 1139 24)) (display "\n") '())
                        (letrec*
                         ((x7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1141 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1141 61))
                              (display "\n")
                              (reverse x7768))))
                          (x7765
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1142 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1142 61))
                              (display "\n")
                              (list x7766)))))
                         (begin
                           (write '(funapp 1143 26))
                           (display "\n")
                           (append x7767 x7765)))))))
                   g7762)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7770
                        (letrec*
                         ((x7771
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1152 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1152 61))
                              (display "\n")
                              (car x7772)))))
                         (begin
                           (write '(funapp 1153 26))
                           (display "\n")
                           (car x7771)))))
                      (begin
                        (write '(funapp 1154 23))
                        (display "\n")
                        (car x7770)))))
                   g7769)))
               (cddadr
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
                                (write '(funapp 1163 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1163 61))
                              (display "\n")
                              (car x7776)))))
                         (begin
                           (write '(funapp 1164 26))
                           (display "\n")
                           (cdr x7775)))))
                      (begin
                        (write '(funapp 1165 23))
                        (display "\n")
                        (cdr x7774)))))
                   g7773)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1170 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1170 59))
                        (display "\n")
                        (assert x7779))))
                    (g7778
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1171 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1171 60))
                        (display "\n")
                        (= 1 x7780)))))
                   g7778)))
               (caadar
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
                                (write '(funapp 1180 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1180 61))
                              (display "\n")
                              (cdr x7784)))))
                         (begin
                           (write '(funapp 1181 26))
                           (display "\n")
                           (car x7783)))))
                      (begin
                        (write '(funapp 1182 23))
                        (display "\n")
                        (car x7782)))))
                   g7781)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1188 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1188 59))
                        (display "\n")
                        (assert x7788))))
                    (g7786
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1189 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1189 60))
                        (display "\n")
                        (assert x7789))))
                    (g7787
                     (letrec*
                      ((x-cnd7790
                        (begin
                          (write '(funapp 1192 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7790
                        (letrec*
                         ((g7791
                           (begin
                             (write '(funapp 1194 42))
                             (display "\n")
                             (proc))))
                         g7791)
                        (letrec*
                         ((x-cnd7792
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 1197 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1197 58))
                              (display "\n")
                              (null? x7793)))))
                         (if x-cnd7792
                           (letrec*
                            ((g7794
                              (letrec*
                               ((x7795
                                 (begin
                                   (write '(funapp 1201 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1201 61))
                                 (display "\n")
                                 (proc x7795)))))
                            g7794)
                           (letrec*
                            ((x-cnd7796
                              (letrec*
                               ((x7797
                                 (begin
                                   (write '(funapp 1205 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1205 62))
                                 (display "\n")
                                 (null? x7797)))))
                            (if x-cnd7796
                              (letrec*
                               ((g7798
                                 (letrec*
                                  ((x7800
                                    (begin
                                      (write '(funapp 1210 43))
                                      (display "\n")
                                      (car args)))
                                   (x7799
                                    (begin
                                      (write '(funapp 1210 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1211 35))
                                    (display "\n")
                                    (proc x7800 x7799)))))
                               g7798)
                              (letrec*
                               ((x-cnd7801
                                 (letrec*
                                  ((x7802
                                    (begin
                                      (write '(funapp 1216 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1217 35))
                                    (display "\n")
                                    (null? x7802)))))
                               (if x-cnd7801
                                 (letrec*
                                  ((g7803
                                    (letrec*
                                     ((x7806
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (car args)))
                                      (x7805
                                       (begin
                                         (write '(funapp 1223 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7804
                                       (begin
                                         (write '(funapp 1224 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1225 38))
                                       (display "\n")
                                       (proc x7806 x7805 x7804)))))
                                  g7803)
                                 (letrec*
                                  ((x-cnd7807
                                    (letrec*
                                     ((x7808
                                       (begin
                                         (write '(funapp 1230 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1231 38))
                                       (display "\n")
                                       (null? x7808)))))
                                  (if x-cnd7807
                                    (letrec*
                                     ((g7809
                                       (letrec*
                                        ((x7813
                                          (begin
                                            (write '(funapp 1236 49))
                                            (display "\n")
                                            (car args)))
                                         (x7812
                                          (begin
                                            (write '(funapp 1237 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7811
                                          (begin
                                            (write '(funapp 1238 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7810
                                          (begin
                                            (write '(funapp 1239 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1240 41))
                                          (display "\n")
                                          (proc x7813 x7812 x7811 x7810)))))
                                     g7809)
                                    (letrec*
                                     ((x-cnd7814
                                       (letrec*
                                        ((x7815
                                          (letrec*
                                           ((x7816
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1248 44))
                                             (display "\n")
                                             (cdr x7816)))))
                                        (begin
                                          (write '(funapp 1249 41))
                                          (display "\n")
                                          (null? x7815)))))
                                     (if x-cnd7814
                                       (letrec*
                                        ((g7817
                                          (letrec*
                                           ((x7823
                                             (begin
                                               (write '(funapp 1254 52))
                                               (display "\n")
                                               (car args)))
                                            (x7822
                                             (begin
                                               (write '(funapp 1255 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7821
                                             (begin
                                               (write '(funapp 1256 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7820
                                             (begin
                                               (write '(funapp 1257 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7818
                                             (letrec*
                                              ((x7819
                                                (begin
                                                  (write '(funapp 1260 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1261 47))
                                                (display "\n")
                                                (car x7819)))))
                                           (begin
                                             (write '(funapp 1262 44))
                                             (display "\n")
                                             (proc
                                              x7823
                                              x7822
                                              x7821
                                              x7820
                                              x7818)))))
                                        g7817)
                                       (letrec*
                                        ((x-cnd7824
                                          (letrec*
                                           ((x7825
                                             (letrec*
                                              ((x7826
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1275 47))
                                                (display "\n")
                                                (cddr x7826)))))
                                           (begin
                                             (write '(funapp 1276 44))
                                             (display "\n")
                                             (null? x7825)))))
                                        (if x-cnd7824
                                          (letrec*
                                           ((g7827
                                             (letrec*
                                              ((x7835
                                                (begin
                                                  (write '(funapp 1281 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7834
                                                (begin
                                                  (write '(funapp 1282 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7833
                                                (begin
                                                  (write '(funapp 1283 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7832
                                                (begin
                                                  (write '(funapp 1284 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7830
                                                (letrec*
                                                 ((x7831
                                                   (begin
                                                     (write '(funapp 1287 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1288 50))
                                                   (display "\n")
                                                   (car x7831))))
                                               (x7828
                                                (letrec*
                                                 ((x7829
                                                   (begin
                                                     (write '(funapp 1291 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1292 50))
                                                   (display "\n")
                                                   (cadr x7829)))))
                                              (begin
                                                (write '(funapp 1293 47))
                                                (display "\n")
                                                (proc
                                                 x7835
                                                 x7834
                                                 x7833
                                                 x7832
                                                 x7830
                                                 x7828)))))
                                           g7827)
                                          (letrec*
                                           ((x-cnd7836
                                             (letrec*
                                              ((x7837
                                                (letrec*
                                                 ((x7838
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1307 50))
                                                   (display "\n")
                                                   (cdddr x7838)))))
                                              (begin
                                                (write '(funapp 1308 47))
                                                (display "\n")
                                                (null? x7837)))))
                                           (if x-cnd7836
                                             (letrec*
                                              ((g7839
                                                (letrec*
                                                 ((x7849
                                                   (begin
                                                     (write '(funapp 1313 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7848
                                                   (begin
                                                     (write '(funapp 1314 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7847
                                                   (begin
                                                     (write '(funapp 1315 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7846
                                                   (begin
                                                     (write '(funapp 1316 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7844
                                                   (letrec*
                                                    ((x7845
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (car x7845))))
                                                  (x7842
                                                   (letrec*
                                                    ((x7843
                                                      (begin
                                                        (write
                                                         '(funapp 1323 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1324 53))
                                                      (display "\n")
                                                      (cadr x7843))))
                                                  (x7840
                                                   (letrec*
                                                    ((x7841
                                                      (begin
                                                        (write
                                                         '(funapp 1327 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1328 53))
                                                      (display "\n")
                                                      (caddr x7841)))))
                                                 (begin
                                                   (write '(funapp 1329 50))
                                                   (display "\n")
                                                   (proc
                                                    x7849
                                                    x7848
                                                    x7847
                                                    x7846
                                                    x7844
                                                    x7842
                                                    x7840)))))
                                              g7839)
                                             (letrec*
                                              ((g7850
                                                (begin
                                                  (write '(funapp 1340 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7850)))))))))))))))))))
                   g7787)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7851
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1346 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1346 57))
                        (display "\n")
                        (assert x7853))))
                    (g7852
                     (letrec*
                      ((x-cnd7854
                        (begin
                          (write '(funapp 1349 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7854
                        #f
                        (letrec*
                         ((x-cnd7855
                           (letrec*
                            ((x7856
                              (begin
                                (write '(funapp 1354 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1354 55))
                              (display "\n")
                              (equal? x7856 e)))))
                         (if x-cnd7855
                           l
                           (letrec*
                            ((x7857
                              (begin
                                (write '(funapp 1357 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1357 55))
                              (display "\n")
                              (member e x7857)))))))))
                   g7852)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x7859
                        (letrec*
                         ((x7860
                           (letrec*
                            ((x7861
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7861)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7860)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (cdr x7859)))))
                   g7858)))
               (cadddr
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
                                (write '(funapp 1377 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1377 61))
                              (display "\n")
                              (cdr x7865)))))
                         (begin
                           (write '(funapp 1378 26))
                           (display "\n")
                           (cdr x7864)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (car x7863)))))
                   g7862)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7866
                     (begin
                       (write '(funapp 1381 53))
                       (display "\n")
                       (random 42))))
                   g7866)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x7869
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1385 59))
                        (display "\n")
                        (assert x7869))))
                    (g7868
                     (begin (write '(funapp 1386 28)) (display "\n") (= x 0))))
                   g7868)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1393 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7871
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1395 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7871))))
                   g7870)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 1401 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1401 55))
                        (display "\n")
                        (car x7873)))))
                   g7872)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7875
                           (begin
                             (write '(funapp 1411 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7875
                           (letrec*
                            ((x7876
                              (begin
                                (write '(funapp 1413 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1413 55))
                              (display "\n")
                              (list? x7876)))
                           #f))))
                      (letrec*
                       ((g7877
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1416 52))
                             (display "\n")
                             (null? l)))))
                       g7877))))
                   g7874)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x7879
                        (letrec*
                         ((x7880
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 1426 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1426 61))
                              (display "\n")
                              (car x7881)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (cdr x7880)))))
                      (begin
                        (write '(funapp 1428 23))
                        (display "\n")
                        (cdr x7879)))))
                   g7878)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x-cnd7883
                        (letrec*
                         ((x7884 #\0))
                         (begin
                           (write '(funapp 1435 58))
                           (display "\n")
                           (char<=? x7884 c)))))
                      (if x-cnd7883
                        (letrec*
                         ((x7885 #\9))
                         (begin
                           (write '(funapp 1437 48))
                           (display "\n")
                           (char<=? c x7885)))
                        #f))))
                   g7882)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7886
                     (letrec*
                      ((x7888
                        (begin
                          (write '(funapp 1444 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1444 57))
                        (display "\n")
                        (assert x7888))))
                    (g7887
                     (letrec*
                      ((x-cnd7889
                        (begin
                          (write '(funapp 1447 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7889
                        #f
                        (letrec*
                         ((x-cnd7890
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 1452 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1452 56))
                              (display "\n")
                              (eqv? x7891 k)))))
                         (if x-cnd7890
                           (begin
                             (write '(funapp 1454 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1455 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1455 55))
                              (display "\n")
                              (assq k x7892)))))))))
                   g7887)))
               (not (lambda (x) (letrec* ((g7893 (if x #f #t))) g7893)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7894
                     (begin
                       (write '(funapp 1459 50))
                       (display "\n")
                       (append l1 l2))))
                   g7894)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7897
                        (begin
                          (write '(funapp 1463 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1463 57))
                        (display "\n")
                        (assert x7897))))
                    (g7896
                     (letrec*
                      ((x-cnd7898
                        (begin
                          (write '(funapp 1466 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7898
                        #f
                        (letrec*
                         ((x-cnd7899
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 1471 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1471 55))
                              (display "\n")
                              (eq? x7900 e)))))
                         (if x-cnd7899
                           l
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1474 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1474 55))
                              (display "\n")
                              (memq e x7901)))))))))
                   g7896)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7903
                        (letrec*
                         ((x7904
                           (letrec*
                            ((x7905
                              (begin
                                (write '(funapp 1483 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1483 61))
                              (display "\n")
                              (car x7905)))))
                         (begin
                           (write '(funapp 1484 26))
                           (display "\n")
                           (cdr x7904)))))
                      (begin
                        (write '(funapp 1485 23))
                        (display "\n")
                        (car x7903)))))
                   g7902)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7906
                     (letrec*
                      ((x7908
                        (begin
                          (write '(funapp 1490 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1490 57))
                        (display "\n")
                        (assert x7908))))
                    (g7907
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7909
                             (letrec*
                              ((x-cnd7910
                                (begin
                                  (write '(funapp 1498 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7910
                                0
                                (letrec*
                                 ((x7911
                                   (letrec*
                                    ((x7912
                                      (begin
                                        (write '(funapp 1503 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1503 63))
                                      (display "\n")
                                      (rec x7912)))))
                                 (begin
                                   (write '(funapp 1504 34))
                                   (display "\n")
                                   (+ 1 x7911)))))))
                           g7909))))
                      (letrec*
                       ((g7913
                         (begin
                           (write '(funapp 1506 40))
                           (display "\n")
                           (rec l))))
                       g7913))))
                   g7907)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7917
                        (begin
                          (write '(funapp 1511 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1511 58))
                        (display "\n")
                        (assert x7917))))
                    (g7915
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 1512 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1512 58))
                        (display "\n")
                        (assert x7918))))
                    (g7916
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1515 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7919
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1517 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7919))))
                   g7916)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1523 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1523 65))
                        (display "\n")
                        (not x7921)))))
                   g7920)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7922
                     (letrec*
                      ((x7923
                        (letrec*
                         ((x7924
                           (begin
                             (write '(funapp 1530 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1530 58))
                           (display "\n")
                           (car x7924)))))
                      (begin
                        (write '(funapp 1531 23))
                        (display "\n")
                        (cdr x7923)))))
                   g7922)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7925
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1536 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1536 57))
                        (display "\n")
                        (assert x7927))))
                    (g7926
                     (letrec*
                      ((x-cnd7928
                        (begin
                          (write '(funapp 1539 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7928
                        #f
                        (letrec*
                         ((x-cnd7929
                           (letrec*
                            ((x7930
                              (begin
                                (write '(funapp 1544 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1544 56))
                              (display "\n")
                              (equal? x7930 k)))))
                         (if x-cnd7929
                           (begin
                             (write '(funapp 1546 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7931
                              (begin
                                (write '(funapp 1547 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1547 55))
                              (display "\n")
                              (assoc k x7931)))))))))
                   g7926)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7933
                        (begin
                          (write '(funapp 1552 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1552 55))
                        (display "\n")
                        (car x7933)))))
                   g7932)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7934
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1557 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1557 58))
                        (display "\n")
                        (assert x7937))))
                    (g7935
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1558 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1558 58))
                        (display "\n")
                        (assert x7938))))
                    (g7936
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1559 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1559 63))
                        (display "\n")
                        (not x7939)))))
                   g7936)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1566 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7941
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1568 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7941))))
                   g7940)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1574 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1574 62))
                        (display "\n")
                        (assert x7945))))
                    (g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1575 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1575 57))
                        (display "\n")
                        (assert x7946))))
                    (g7944
                     (letrec*
                      ((x-cnd7947
                        (begin
                          (write '(funapp 1578 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7947
                        #t
                        (letrec*
                         ((x-cnd7948
                           (begin
                             (write '(funapp 1582 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7948
                           (letrec*
                            ((g7949
                              (letrec*
                               ((x7951
                                 (begin
                                   (write '(funapp 1585 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1585 64))
                                 (display "\n")
                                 (f x7951))))
                             (g7950
                              (letrec*
                               ((x7952
                                 (begin
                                   (write '(funapp 1587 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1587 58))
                                 (display "\n")
                                 (for-each f x7952)))))
                            g7950)
                           (begin
                             (write '(funapp 1589 27))
                             (display "\n")
                             '())))))))
                   g7944)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((x7955
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1594 59))
                        (display "\n")
                        (assert x7955))))
                    (g7954
                     (letrec*
                      ((x-cnd7956
                        (begin
                          (write '(funapp 1596 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7956
                        (begin
                          (write '(funapp 1596 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7954)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7960
                        (begin
                          (write '(funapp 1601 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1601 58))
                        (display "\n")
                        (assert x7960))))
                    (g7958
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1602 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1602 58))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1605 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7962
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1607 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7962))))
                   g7959)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7963
                     (letrec*
                      ((x7964
                        (letrec*
                         ((x7965
                           (letrec*
                            ((x7966
                              (begin
                                (write '(funapp 1617 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1617 61))
                              (display "\n")
                              (cdr x7966)))))
                         (begin
                           (write '(funapp 1618 26))
                           (display "\n")
                           (cdr x7965)))))
                      (begin
                        (write '(funapp 1619 23))
                        (display "\n")
                        (car x7964)))))
                   g7963)))
               (newline (lambda () (letrec* ((g7967 #f)) g7967)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7968
                     (letrec*
                      ((x7970
                        (letrec*
                         ((x7971
                           (begin
                             (write '(funapp 1627 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1627 58))
                           (display "\n")
                           (abs x7971))))
                       (x7969
                        (begin
                          (write '(funapp 1628 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1629 23))
                        (display "\n")
                        (/ x7970 x7969)))))
                   g7968)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x7976
                        (begin
                          (write '(funapp 1635 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1635 57))
                        (display "\n")
                        (assert x7976))))
                    (g7973
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 1636 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1636 63))
                        (display "\n")
                        (assert x7977))))
                    (g7974
                     (letrec*
                      ((x7978
                        (letrec*
                         ((x7979
                           (begin
                             (write '(funapp 1639 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1639 61))
                           (display "\n")
                           (< index x7979)))))
                      (begin
                        (write '(funapp 1640 23))
                        (display "\n")
                        (assert x7978))))
                    (g7975
                     (letrec*
                      ((x-cnd7980
                        (begin
                          (write '(funapp 1643 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7980
                        (begin
                          (write '(funapp 1645 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7982
                           (begin
                             (write '(funapp 1647 34))
                             (display "\n")
                             (cdr l)))
                          (x7981
                           (begin
                             (write '(funapp 1647 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1648 26))
                           (display "\n")
                           (list-ref x7982 x7981)))))))
                   g7975)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7983
                     (letrec*
                      ((x-cnd7984
                        (begin
                          (write '(funapp 1655 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7984
                        a
                        (letrec*
                         ((x7985
                           (begin
                             (write '(funapp 1658 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1658 57))
                           (display "\n")
                           (gcd b x7985)))))))
                   g7983)))
               (len
                (lambda (xs)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((x-cnd7987
                        (begin
                          (write '(funapp 1665 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7987
                        0
                        (letrec*
                         ((x7988
                           (letrec*
                            ((x7989
                              (begin
                                (write '(funapp 1669 51))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1669 62))
                              (display "\n")
                              (len x7989)))))
                         (begin
                           (write '(funapp 1670 26))
                           (display "\n")
                           (+ 1 x7988)))))))
                   g7986))))
              (letrec*
               ((g7990
                 (begin
                   (write '(funapp 1674 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1675 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x7992
                          (letrec*
                           ((xj7397
                             (begin
                               (write '(funapp 1679 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1679 37))
                                  (display "\n")
                                  'module))))
                            (xk7398
                             (begin
                               (write '(funapp 1679 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1679 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g7993
                              (begin
                                (write '(funapp 1682 27))
                                (display "\n")
                                ((lambda (j7400 k7401 f7402)
                                   (letrec*
                                    ((g7994
                                      (lambda (g7399)
                                        (letrec*
                                         ((g7995
                                           (letrec*
                                            ((x7999
                                              (letrec*
                                               ((x8000
                                                 (begin
                                                   (write '(funapp 1691 50))
                                                   (display "\n")
                                                   (>=/c 0))))
                                               (begin
                                                 (write '(funapp 1692 42))
                                                 (display "\n")
                                                 (and/c integer?/c x8000))))
                                             (x7996
                                              (letrec*
                                               ((x7997
                                                 (letrec*
                                                  ((x7998
                                                    (begin
                                                      (write '(funapp 1697 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1698 45))
                                                    (display "\n")
                                                    (x7998
                                                     j7400
                                                     k7401
                                                     g7399)))))
                                               (begin
                                                 (write '(funapp 1699 42))
                                                 (display "\n")
                                                 (f7402 x7997)))))
                                            (begin
                                              (write '(funapp 1700 39))
                                              (display "\n")
                                              (x7999 j7400 k7401 x7996)))))
                                         g7995))))
                                    g7994))
                                 xj7397
                                 xk7398
                                 len))))
                            g7993)))
                         (x7991 (input)))
                        (begin
                          (write '(funapp 1708 21))
                          (display "\n")
                          (x7992 x7991)))))))))
               g7990))))
           g7431))))
       g7414)))
    g7413)))
