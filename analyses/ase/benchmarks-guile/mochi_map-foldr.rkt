(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7418 #t)) g7418)))
    (meta (lambda (v) (letrec* ((g7419 v)) g7419)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7420
          (letrec*
           ((g7421
             (letrec*
              ((x-e7422 lst))
              (letrec*
               ((v1742 x-e7422))
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
                   ((x-cnd7423
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7423
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
           g7421)))
        g7420)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7424 (lambda (v) (letrec* ((g7425 v)) g7425)))) g7424)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7426
          (letrec*
           ((x7427 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7427)))))
        g7426))))
   (letrec*
    ((g7428
      (letrec*
       ((g7429
         (letrec*
          ((>=
            (lambda (x y)
              (letrec*
               ((g7430
                 (letrec*
                  ((x7432
                    (begin
                      (write '(funapp 47 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 47 55))
                    (display "\n")
                    (assert x7432))))
                (g7431
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 50 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7433
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 56 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7434 (if val7244 val7244 #f))) g7434)))))
                   g7433))))
               g7431)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7435
                 (letrec*
                  ((x7437
                    (begin
                      (write '(funapp 63 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 63 55))
                    (display "\n")
                    (assert x7437))))
                (g7436
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 66 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7438
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 72 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7439 (if val7246 val7246 #f))) g7439)))))
                   g7438))))
               g7436)))
           (>
            (lambda (x y)
              (letrec*
               ((g7440
                 (letrec*
                  ((x7442
                    (begin
                      (write '(funapp 79 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 79 55))
                    (display "\n")
                    (assert x7442))))
                (g7441
                 (letrec*
                  ((x7443
                    (begin (write '(funapp 80 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 80 52)) (display "\n") (not x7443)))))
               g7441)))
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
           ((g7444 (begin (write '(funapp 96 19)) (display "\n") '()))
            (g7445
             (letrec*
              ((empty (begin (write '(funapp 99 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7446
                     (lambda (k j lst)
                       (letrec*
                        ((g7447
                          (begin
                            (write '(funapp 107 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7448
                                  (begin
                                    (write '(funapp 109 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7448))
                             lst))))
                        g7447))))
                   g7446)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7450
                        g7263
                        (begin
                          (write '(blame g7261 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7449)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x-cnd7452
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7452
                        g7266
                        (begin
                          (write '(blame g7264 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7451)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7454
                        g7269
                        (begin
                          (write '(blame g7267 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7453)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 143 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7457 #t)) g7457)) g7272))))
                      (if x-cnd7456
                        g7272
                        (begin
                          (write '(blame g7270 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7455)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 152 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7460 #t)) g7460)) g7275))))
                      (if x-cnd7459
                        g7275
                        (begin
                          (write '(blame g7273 153 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7458)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x-cnd7462
                        (begin
                          (write '(funapp 160 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7462
                        g7278
                        (begin
                          (write '(blame g7276 161 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7461)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7463
                     (letrec*
                      ((x-cnd7464
                        (begin
                          (write '(funapp 169 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7464
                        g7281
                        (begin
                          (write '(blame g7279 170 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7463)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x-cnd7466
                        (begin
                          (write '(funapp 177 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7466
                        g7284
                        (begin
                          (write '(blame g7282 178 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7465)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x-cnd7468
                        (begin
                          (write '(funapp 185 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7468
                        g7287
                        (begin
                          (write '(blame g7285 186 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7467)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7469
                     (lambda (k j v)
                       (letrec*
                        ((g7470
                          (letrec*
                           ((x-cnd7471
                             (begin
                               (write '(funapp 196 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7471
                             (begin
                               (write '(funapp 197 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7470))))
                   g7469)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7472
                     (lambda (k j v)
                       (letrec*
                        ((g7473
                          (letrec*
                           ((x-cnd7474
                             (begin
                               (write '(funapp 208 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7474
                             (begin
                               (write '(funapp 210 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7478
                                (letrec*
                                 ((x7479
                                   (begin
                                     (write '(funapp 214 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 215 34))
                                   (display "\n")
                                   (contract k j x7479))))
                               (x7475
                                (letrec*
                                 ((x7477
                                   (begin
                                     (write '(funapp 218 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7476
                                   (begin
                                     (write '(funapp 218 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 219 34))
                                   (display "\n")
                                   (x7477 k j x7476)))))
                              (begin
                                (write '(funapp 220 31))
                                (display "\n")
                                (orig-cons x7478 x7475)))))))
                        g7473))))
                   g7472)))
               (any? (lambda (v) (letrec* ((g7480 #t)) g7480)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x7482
                        (begin
                          (write '(funapp 227 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 227 55))
                        (display "\n")
                        (not x7482)))))
                   g7481)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7483
                     (letrec*
                      ((x-cnd7484
                        (begin
                          (write '(funapp 235 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7485
                                (letrec*
                                 ((x7486
                                   (begin
                                     (write '(funapp 237 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 237 64))
                                   (display "\n")
                                   (not x7486)))))
                              g7485))
                           g7290))))
                      (if x-cnd7484
                        g7290
                        (begin
                          (write '(blame g7288 242 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7483)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7487
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7488
                          (letrec*
                           ((x-cnd7489
                             (begin
                               (write '(funapp 253 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7490
                                     (begin
                                       (write '(funapp 254 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7490))
                                g7293))))
                           (if x-cnd7489
                             g7293
                             (begin
                               (write '(blame g7291 258 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7488))))
                   g7487)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7491
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7492
                          (letrec*
                           ((x-cnd7493
                             (begin
                               (write '(funapp 270 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7494
                                     (begin
                                       (write '(funapp 271 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7494))
                                g7296))))
                           (if x-cnd7493
                             g7296
                             (begin
                               (write '(blame g7294 275 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7492))))
                   g7491)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7495
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7496
                          (letrec*
                           ((x-cnd7497
                             (begin
                               (write '(funapp 287 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7498
                                     (begin
                                       (write '(funapp 288 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7498))
                                g7299))))
                           (if x-cnd7497
                             g7299
                             (begin
                               (write '(blame g7297 292 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7496))))
                   g7495)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7499
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7500
                          (letrec*
                           ((x-cnd7501
                             (begin
                               (write '(funapp 304 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7502
                                     (begin
                                       (write '(funapp 305 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7502))
                                g7302))))
                           (if x-cnd7501
                             g7302
                             (begin
                               (write '(blame g7300 309 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7500))))
                   g7499)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7503
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7504
                          (letrec*
                           ((x-cnd7505
                             (begin
                               (write '(funapp 321 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7506
                                     (begin
                                       (write '(funapp 322 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7506))
                                g7305))))
                           (if x-cnd7505
                             g7305
                             (begin
                               (write '(blame g7303 326 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7504))))
                   g7503)))
               (meta (lambda (v) (letrec* ((g7507 v)) g7507)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 332 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 332 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7508
                    (begin
                      (write '(funapp 335 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7510
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7511
                                 (letrec*
                                  ((x7512
                                    (letrec*
                                     ((x7514
                                       (begin
                                         (write '(funapp 344 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7513
                                       (begin
                                         (write '(funapp 345 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 346 36))
                                       (display "\n")
                                       (f7312 x7514 x7513)))))
                                  (begin
                                    (write '(funapp 347 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7512)))))
                               g7511))))
                          g7510))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7509
                            (begin
                              (write '(funapp 352 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7509))))))
                  g7508)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 356 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 356 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7515
                    (begin
                      (write '(funapp 359 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7517
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7518
                                 (letrec*
                                  ((x7519
                                    (letrec*
                                     ((x7521
                                       (begin
                                         (write '(funapp 368 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7520
                                       (begin
                                         (write '(funapp 369 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 370 36))
                                       (display "\n")
                                       (f7319 x7521 x7520)))))
                                  (begin
                                    (write '(funapp 371 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7519)))))
                               g7518))))
                          g7517))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7516
                            (begin
                              (write '(funapp 376 53))
                              (display "\n")
                              (orig-- a b))))
                          g7516))))))
                  g7515)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 380 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 380 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7522
                    (begin
                      (write '(funapp 383 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7524
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7525
                                 (letrec*
                                  ((x7526
                                    (letrec*
                                     ((x7528
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7527
                                       (begin
                                         (write '(funapp 393 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 394 36))
                                       (display "\n")
                                       (f7326 x7528 x7527)))))
                                  (begin
                                    (write '(funapp 395 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7526)))))
                               g7525))))
                          g7524))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7523
                            (begin
                              (write '(funapp 400 53))
                              (display "\n")
                              (orig-* a b))))
                          g7523))))))
                  g7522)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 404 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 404 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7529
                    (begin
                      (write '(funapp 407 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7531
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7532
                                 (letrec*
                                  ((x7533
                                    (letrec*
                                     ((x7535
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7534
                                       (begin
                                         (write '(funapp 417 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 418 36))
                                       (display "\n")
                                       (f7333 x7535 x7534)))))
                                  (begin
                                    (write '(funapp 419 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7533)))))
                               g7532))))
                          g7531))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7530
                            (begin
                              (write '(funapp 424 53))
                              (display "\n")
                              (orig-< a b))))
                          g7530))))))
                  g7529)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 428 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 428 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7536
                    (begin
                      (write '(funapp 431 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7538
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7539
                                 (letrec*
                                  ((x7540
                                    (letrec*
                                     ((x7542
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7541
                                       (begin
                                         (write '(funapp 441 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 442 36))
                                       (display "\n")
                                       (f7340 x7542 x7541)))))
                                  (begin
                                    (write '(funapp 443 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7540)))))
                               g7539))))
                          g7538))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7537
                            (begin
                              (write '(funapp 448 53))
                              (display "\n")
                              (orig-> a b))))
                          g7537))))))
                  g7536)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 452 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 452 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7543
                    (begin
                      (write '(funapp 455 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7545
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7546
                                 (letrec*
                                  ((x7547
                                    (letrec*
                                     ((x7549
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7548
                                       (begin
                                         (write '(funapp 465 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 466 36))
                                       (display "\n")
                                       (f7347 x7549 x7548)))))
                                  (begin
                                    (write '(funapp 467 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7547)))))
                               g7546))))
                          g7545))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7544
                            (begin
                              (write '(funapp 472 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7544))))))
                  g7543)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 476 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 476 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7550
                    (begin
                      (write '(funapp 479 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7552
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7553
                                 (letrec*
                                  ((x7554
                                    (letrec*
                                     ((x7556
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7555
                                       (begin
                                         (write '(funapp 489 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 490 36))
                                       (display "\n")
                                       (f7354 x7556 x7555)))))
                                  (begin
                                    (write '(funapp 491 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7554)))))
                               g7553))))
                          g7552))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7551
                            (begin
                              (write '(funapp 496 53))
                              (display "\n")
                              (orig->= a b))))
                          g7551))))))
                  g7550)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 500 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 500 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7557
                    (begin
                      (write '(funapp 503 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7559
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7560
                                 (letrec*
                                  ((x7561
                                    (letrec*
                                     ((x7563
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7562
                                       (begin
                                         (write '(funapp 513 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 514 36))
                                       (display "\n")
                                       (f7361 x7563 x7562)))))
                                  (begin
                                    (write '(funapp 515 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7561)))))
                               g7560))))
                          g7559))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7558
                            (begin
                              (write '(funapp 520 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7558))))))
                  g7557)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 524 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 524 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7564
                    (begin
                      (write '(funapp 527 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7566
                            (lambda (g7364)
                              (letrec*
                               ((g7567
                                 (letrec*
                                  ((x7568
                                    (letrec*
                                     ((x7569
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7367 x7569)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7568)))))
                               g7567))))
                          g7566))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7565
                            (begin
                              (write '(funapp 543 51))
                              (display "\n")
                              (orig-car p))))
                          g7565))))))
                  g7564)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7570
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7572
                            (lambda (g7370)
                              (letrec*
                               ((g7573
                                 (letrec*
                                  ((x7574
                                    (letrec*
                                     ((x7575
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 560 36))
                                       (display "\n")
                                       (f7373 x7575)))))
                                  (begin
                                    (write '(funapp 561 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7574)))))
                               g7573))))
                          g7572))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7571
                            (begin
                              (write '(funapp 566 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7571))))))
                  g7570)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 570 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 570 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7576
                    (begin
                      (write '(funapp 573 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7578
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7579
                                 (letrec*
                                  ((x7580
                                    (letrec*
                                     ((x7582
                                       (begin
                                         (write '(funapp 582 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7581
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7380 x7582 x7581)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7580)))))
                               g7579))))
                          g7578))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7577
                            (begin
                              (write '(funapp 591 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7577))))))
                  g7576)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7583
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7585
                            (lambda (g7383)
                              (letrec*
                               ((g7586
                                 (letrec*
                                  ((x7587
                                    (letrec*
                                     ((x7588
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7386 x7588)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7587)))))
                               g7586))))
                          g7585))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7584
                            (begin
                              (write '(funapp 615 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7584))))))
                  g7583)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7589
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7591
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7592
                                 (letrec*
                                  ((x7593
                                    (letrec*
                                     ((x7595
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7594
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7393 x7595 x7594)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7593)))))
                               g7592))))
                          g7591))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7590
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7590))))))
                  g7589)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7596
                     (if cnd
                       (begin (write '(funapp 645 35)) (display "\n") '())
                       (begin
                         (write '(funapp 645 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7596)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x7598
                        (letrec*
                         ((x7599
                           (begin
                             (write '(funapp 652 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 652 58))
                           (display "\n")
                           (cdr x7599)))))
                      (begin
                        (write '(funapp 653 23))
                        (display "\n")
                        (cdr x7598)))))
                   g7597)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 659 62))
                        (display "\n")
                        (assert x7603))))
                    (g7601
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 660 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 660 57))
                        (display "\n")
                        (assert x7604))))
                    (g7602
                     (letrec*
                      ((x-cnd7605
                        (begin
                          (write '(funapp 663 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7605
                        (begin (write '(funapp 665 24)) (display "\n") '())
                        (letrec*
                         ((x7608
                           (letrec*
                            ((x7609
                              (begin
                                (write '(funapp 667 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 667 61))
                              (display "\n")
                              (f x7609))))
                          (x7606
                           (letrec*
                            ((x7607
                              (begin
                                (write '(funapp 668 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 668 61))
                              (display "\n")
                              (map f x7607)))))
                         (begin
                           (write '(funapp 669 26))
                           (display "\n")
                           (cons x7608 x7606)))))))
                   g7602)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 674 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 674 55))
                        (display "\n")
                        (cdr x7611)))))
                   g7610)))
               (cadadr
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
                                (write '(funapp 683 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 683 61))
                              (display "\n")
                              (car x7615)))))
                         (begin
                           (write '(funapp 684 26))
                           (display "\n")
                           (cdr x7614)))))
                      (begin
                        (write '(funapp 685 23))
                        (display "\n")
                        (car x7613)))))
                   g7612)))
               (cdadar
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
                                (write '(funapp 694 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 694 61))
                              (display "\n")
                              (cdr x7619)))))
                         (begin
                           (write '(funapp 695 26))
                           (display "\n")
                           (car x7618)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7617)))))
                   g7616)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 702 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 702 60))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 704 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 704 59))
                        (display "\n")
                        (assert x7624))))
                    (g7622
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 707 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 708 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7625
                         (begin
                           (write '(funapp 710 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7626 res))
                       g7626))))
                   g7622)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7628
                        (letrec*
                         ((x7629
                           (begin
                             (write '(funapp 718 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 718 58))
                           (display "\n")
                           (cdr x7629)))))
                      (begin
                        (write '(funapp 719 23))
                        (display "\n")
                        (car x7628)))))
                   g7627)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7631
                        (letrec*
                         ((x7632
                           (letrec*
                            ((x7633
                              (begin
                                (write '(funapp 728 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 728 61))
                              (display "\n")
                              (car x7633)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (car x7632)))))
                      (begin
                        (write '(funapp 730 23))
                        (display "\n")
                        (cdr x7631)))))
                   g7630)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 735 57))
                        (display "\n")
                        (assert x7636))))
                    (g7635
                     (letrec*
                      ((x-cnd7637
                        (begin
                          (write '(funapp 738 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7637
                        #f
                        (letrec*
                         ((x-cnd7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 743 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 743 56))
                              (display "\n")
                              (eq? x7639 k)))))
                         (if x-cnd7638
                           (begin
                             (write '(funapp 745 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 746 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 746 55))
                              (display "\n")
                              (assq k x7640)))))))))
                   g7635)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 751 60))
                        (display "\n")
                        (= 0 x7642)))))
                   g7641)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 756 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 756 57))
                        (display "\n")
                        (assert x7645))))
                    (g7644
                     (letrec*
                      ((x-cnd7646
                        (begin
                          (write '(funapp 759 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7646
                        ""
                        (letrec*
                         ((x7649
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 764 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 764 55))
                              (display "\n")
                              (char->string x7650))))
                          (x7647
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 766 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 766 55))
                              (display "\n")
                              (list->string x7648)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (string-append x7649 x7647)))))))
                   g7644)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 772 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 772 58))
                        (display "\n")
                        (assert x7654))))
                    (g7652
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 773 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 773 58))
                        (display "\n")
                        (assert x7655))))
                    (g7653
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 776 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7656
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 778 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7656))))
                   g7653)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7658
                        (letrec*
                         ((x7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 788 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 788 61))
                              (display "\n")
                              (cdr x7660)))))
                         (begin
                           (write '(funapp 789 26))
                           (display "\n")
                           (cdr x7659)))))
                      (begin
                        (write '(funapp 790 23))
                        (display "\n")
                        (cdr x7658)))))
                   g7657)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 795 57))
                        (display "\n")
                        (assert x7664))))
                    (g7662
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 796 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 796 57))
                        (display "\n")
                        (assert x7665))))
                    (g7663
                     (letrec*
                      ((x-cnd7666
                        (begin
                          (write '(funapp 799 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7666
                        x
                        (letrec*
                         ((x7668
                           (begin
                             (write '(funapp 803 34))
                             (display "\n")
                             (cdr x)))
                          (x7667
                           (begin
                             (write '(funapp 803 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (list-tail x7668 x7667)))))))
                   g7663)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7669
                     (begin (write '(funapp 806 49)) (display "\n") '())))
                   g7669)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7670
                     (letrec*
                      ((x-cnd7671
                        (letrec*
                         ((x7672 #\a))
                         (begin
                           (write '(funapp 813 48))
                           (display "\n")
                           (char-ci>=? c x7672)))))
                      (if x-cnd7671
                        (letrec*
                         ((x7673 #\z))
                         (begin
                           (write '(funapp 815 48))
                           (display "\n")
                           (char-ci<=? c x7673)))
                        #f))))
                   g7670)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7675
                           (begin
                             (write '(funapp 824 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 824 62))
                           (display "\n")
                           (= x7675 9)))))
                      (letrec*
                       ((g7676
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7677
                                 (begin
                                   (write '(funapp 832 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 833 32))
                                 (display "\n")
                                 (= x7677 10)))))
                            (letrec*
                             ((g7678
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7679
                                    (begin
                                      (write '(funapp 839 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 840 35))
                                    (display "\n")
                                    (= x7679 32))))))
                             g7678)))))
                       g7676))))
                   g7674)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((x7681
                        (letrec*
                         ((x7682
                           (begin
                             (write '(funapp 849 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 849 58))
                           (display "\n")
                           (cdr x7682)))))
                      (begin
                        (write '(funapp 850 23))
                        (display "\n")
                        (cdr x7681)))))
                   g7680)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x7685
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 855 59))
                        (display "\n")
                        (assert x7685))))
                    (g7684
                     (begin (write '(funapp 856 28)) (display "\n") (> x 0))))
                   g7684)))
               ($pc (begin (write '(funapp 858 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7686 #f)) g7686)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((x7688
                        (begin
                          (write '(funapp 864 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 864 55))
                        (display "\n")
                        (cdr x7688)))))
                   g7687)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7689
                     (letrec*
                      ((x7691
                        (begin
                          (write '(funapp 869 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 869 59))
                        (display "\n")
                        (assert x7691))))
                    (g7690
                     (letrec*
                      ((x-cnd7692
                        (begin
                          (write '(funapp 872 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7692
                        (begin
                          (write '(funapp 873 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 873 49))
                          (display "\n")
                          (floor x))))))
                   g7690)))
               ($cmp (begin (write '(funapp 875 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7693
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 881 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7694
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7695
                                 (begin
                                   (write '(funapp 889 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7695
                                 (begin
                                   (write '(funapp 890 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7696
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7697
                                       (begin
                                         (write '(funapp 898 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7697
                                       (letrec*
                                        ((x-cnd7698
                                          (begin
                                            (write '(funapp 901 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7698
                                          (begin
                                            (write '(funapp 902 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7699
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7700
                                             (begin
                                               (write '(funapp 911 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7700
                                             (letrec*
                                              ((x-cnd7701
                                                (begin
                                                  (write '(funapp 914 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7701
                                                (letrec*
                                                 ((x-cnd7702
                                                   (letrec*
                                                    ((x7704
                                                      (begin
                                                        (write
                                                         '(funapp 919 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7703
                                                      (begin
                                                        (write
                                                         '(funapp 920 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 921 53))
                                                      (display "\n")
                                                      (equal? x7704 x7703)))))
                                                 (if x-cnd7702
                                                   (letrec*
                                                    ((x7706
                                                      (begin
                                                        (write
                                                         '(funapp 924 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7705
                                                      (begin
                                                        (write
                                                         '(funapp 925 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 926 53))
                                                      (display "\n")
                                                      (equal? x7706 x7705)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7707
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7708
                                                (begin
                                                  (write '(funapp 935 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7708
                                                (letrec*
                                                 ((x-cnd7709
                                                   (begin
                                                     (write '(funapp 938 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7709
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 941 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7710
                                                       (letrec*
                                                        ((x-cnd7711
                                                          (letrec*
                                                           ((x7712
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  948
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 950 60))
                                                             (display "\n")
                                                             (= x7712 n)))))
                                                        (if x-cnd7711
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7713
                                                                  (letrec*
                                                                   ((val7254
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          959
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7714
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7715
                                                                           (letrec*
                                                                            ((x7717
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   968
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7716
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   972
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 975
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7717
                                                                               x7716)))))
                                                                         (if x-cnd7715
                                                                           (letrec*
                                                                            ((x7718
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   981
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 984
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7718)))
                                                                           #f)))))
                                                                    g7714))))
                                                                g7713))))
                                                           (letrec*
                                                            ((g7719
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   990
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7719))
                                                          #f))))
                                                     g7710))
                                                   #f))
                                                #f)))))
                                         g7707)))))
                                   g7699)))))
                             g7696)))))
                       g7694))))
                   g7693)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x7721
                        (letrec*
                         ((x7722
                           (letrec*
                            ((x7723
                              (begin
                                (write '(funapp 1008 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1008 61))
                              (display "\n")
                              (car x7723)))))
                         (begin
                           (write '(funapp 1009 26))
                           (display "\n")
                           (car x7722)))))
                      (begin
                        (write '(funapp 1010 23))
                        (display "\n")
                        (cdr x7721)))))
                   g7720)))
               (caaddr
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
                                (write '(funapp 1019 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1019 61))
                              (display "\n")
                              (cdr x7727)))))
                         (begin
                           (write '(funapp 1020 26))
                           (display "\n")
                           (car x7726)))))
                      (begin
                        (write '(funapp 1021 23))
                        (display "\n")
                        (car x7725)))))
                   g7724)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7728
                     (begin
                       (write '(funapp 1023 53))
                       (display "\n")
                       (eq? x y))))
                   g7728)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7732
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1028 60))
                        (display "\n")
                        (assert x7732))))
                    (g7730
                     (letrec*
                      ((x7733
                        (begin
                          (write '(funapp 1030 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1030 59))
                        (display "\n")
                        (assert x7733))))
                    (g7731
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 1033 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 1034 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7734
                         (begin
                           (write '(funapp 1036 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7735 res))
                       g7735))))
                   g7731)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7736
                     (begin
                       (write '(funapp 1039 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1039 57))
                          (display "\n")
                          '())))))
                   g7736)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1043 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1043 58))
                        (display "\n")
                        (assert x7740))))
                    (g7738
                     (letrec*
                      ((x7741
                        (begin
                          (write '(funapp 1044 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1044 58))
                        (display "\n")
                        (assert x7741))))
                    (g7739
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1047 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7742
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1049 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7742))))
                   g7739)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (letrec*
                         ((x7745
                           (begin
                             (write '(funapp 1057 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1057 58))
                           (display "\n")
                           (car x7745)))))
                      (begin
                        (write '(funapp 1058 23))
                        (display "\n")
                        (cdr x7744)))))
                   g7743)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (letrec*
                         ((x7748
                           (letrec*
                            ((x7749
                              (begin
                                (write '(funapp 1067 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1067 61))
                              (display "\n")
                              (cdr x7749)))))
                         (begin
                           (write '(funapp 1068 26))
                           (display "\n")
                           (car x7748)))))
                      (begin
                        (write '(funapp 1069 23))
                        (display "\n")
                        (cdr x7747)))))
                   g7746)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7751
                        (letrec*
                         ((x7752
                           (begin
                             (write '(funapp 1077 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1077 58))
                           (display "\n")
                           (cdr x7752)))))
                      (begin
                        (write '(funapp 1078 23))
                        (display "\n")
                        (car x7751)))))
                   g7750)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7754
                        (letrec*
                         ((x7755
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (car x7755)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7754)))))
                   g7753)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1091 58))
                        (display "\n")
                        (assert x7759))))
                    (g7757
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 1092 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1092 58))
                        (display "\n")
                        (assert x7760))))
                    (g7758
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1093 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1093 66))
                        (display "\n")
                        (not x7761)))))
                   g7758)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7763
                        (letrec*
                         ((x7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 1103 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1103 61))
                              (display "\n")
                              (car x7765)))))
                         (begin
                           (write '(funapp 1104 26))
                           (display "\n")
                           (car x7764)))))
                      (begin
                        (write '(funapp 1105 23))
                        (display "\n")
                        (car x7763)))))
                   g7762)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 1110 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1110 59))
                        (display "\n")
                        (assert x7768))))
                    (g7767
                     (begin (write '(funapp 1111 28)) (display "\n") (< x 0))))
                   g7767)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7769
                     (begin
                       (write '(funapp 1113 53))
                       (display "\n")
                       (memq e l))))
                   g7769)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (begin
                             (write '(funapp 1119 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1119 58))
                           (display "\n")
                           (car x7772)))))
                      (begin
                        (write '(funapp 1120 23))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7773
                     (begin (write '(funapp 1122 51)) (display "\n") '())))
                   g7773)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1126 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1126 57))
                        (display "\n")
                        (assert x7776))))
                    (g7775
                     (letrec*
                      ((x-cnd7777
                        (begin
                          (write '(funapp 1129 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7777
                        (begin (write '(funapp 1131 24)) (display "\n") '())
                        (letrec*
                         ((x7780
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1133 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1133 61))
                              (display "\n")
                              (reverse x7781))))
                          (x7778
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (list x7779)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (append x7780 x7778)))))))
                   g7775)))
               (caaadr
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
                                (write '(funapp 1144 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1144 61))
                              (display "\n")
                              (car x7785)))))
                         (begin
                           (write '(funapp 1145 26))
                           (display "\n")
                           (car x7784)))))
                      (begin
                        (write '(funapp 1146 23))
                        (display "\n")
                        (car x7783)))))
                   g7782)))
               (cddadr
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
                                (write '(funapp 1155 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1155 61))
                              (display "\n")
                              (car x7789)))))
                         (begin
                           (write '(funapp 1156 26))
                           (display "\n")
                           (cdr x7788)))))
                      (begin
                        (write '(funapp 1157 23))
                        (display "\n")
                        (cdr x7787)))))
                   g7786)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1162 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1162 59))
                        (display "\n")
                        (assert x7792))))
                    (g7791
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1163 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1163 60))
                        (display "\n")
                        (= 1 x7793)))))
                   g7791)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7795
                        (letrec*
                         ((x7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 1172 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1172 61))
                              (display "\n")
                              (cdr x7797)))))
                         (begin
                           (write '(funapp 1173 26))
                           (display "\n")
                           (car x7796)))))
                      (begin
                        (write '(funapp 1174 23))
                        (display "\n")
                        (car x7795)))))
                   g7794)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1180 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1180 59))
                        (display "\n")
                        (assert x7801))))
                    (g7799
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1181 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1181 60))
                        (display "\n")
                        (assert x7802))))
                    (g7800
                     (letrec*
                      ((x-cnd7803
                        (begin
                          (write '(funapp 1184 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7803
                        (letrec*
                         ((g7804
                           (begin
                             (write '(funapp 1186 42))
                             (display "\n")
                             (proc))))
                         g7804)
                        (letrec*
                         ((x-cnd7805
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 1189 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1189 58))
                              (display "\n")
                              (null? x7806)))))
                         (if x-cnd7805
                           (letrec*
                            ((g7807
                              (letrec*
                               ((x7808
                                 (begin
                                   (write '(funapp 1193 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1193 61))
                                 (display "\n")
                                 (proc x7808)))))
                            g7807)
                           (letrec*
                            ((x-cnd7809
                              (letrec*
                               ((x7810
                                 (begin
                                   (write '(funapp 1197 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1197 62))
                                 (display "\n")
                                 (null? x7810)))))
                            (if x-cnd7809
                              (letrec*
                               ((g7811
                                 (letrec*
                                  ((x7813
                                    (begin
                                      (write '(funapp 1202 43))
                                      (display "\n")
                                      (car args)))
                                   (x7812
                                    (begin
                                      (write '(funapp 1202 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1203 35))
                                    (display "\n")
                                    (proc x7813 x7812)))))
                               g7811)
                              (letrec*
                               ((x-cnd7814
                                 (letrec*
                                  ((x7815
                                    (begin
                                      (write '(funapp 1208 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1209 35))
                                    (display "\n")
                                    (null? x7815)))))
                               (if x-cnd7814
                                 (letrec*
                                  ((g7816
                                    (letrec*
                                     ((x7819
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (car args)))
                                      (x7818
                                       (begin
                                         (write '(funapp 1215 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7817
                                       (begin
                                         (write '(funapp 1216 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1217 38))
                                       (display "\n")
                                       (proc x7819 x7818 x7817)))))
                                  g7816)
                                 (letrec*
                                  ((x-cnd7820
                                    (letrec*
                                     ((x7821
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1223 38))
                                       (display "\n")
                                       (null? x7821)))))
                                  (if x-cnd7820
                                    (letrec*
                                     ((g7822
                                       (letrec*
                                        ((x7826
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (car args)))
                                         (x7825
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7824
                                          (begin
                                            (write '(funapp 1230 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7823
                                          (begin
                                            (write '(funapp 1231 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1232 41))
                                          (display "\n")
                                          (proc x7826 x7825 x7824 x7823)))))
                                     g7822)
                                    (letrec*
                                     ((x-cnd7827
                                       (letrec*
                                        ((x7828
                                          (letrec*
                                           ((x7829
                                             (begin
                                               (write '(funapp 1239 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1240 44))
                                             (display "\n")
                                             (cdr x7829)))))
                                        (begin
                                          (write '(funapp 1241 41))
                                          (display "\n")
                                          (null? x7828)))))
                                     (if x-cnd7827
                                       (letrec*
                                        ((g7830
                                          (letrec*
                                           ((x7836
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (car args)))
                                            (x7835
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7834
                                             (begin
                                               (write '(funapp 1248 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7833
                                             (begin
                                               (write '(funapp 1249 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7831
                                             (letrec*
                                              ((x7832
                                                (begin
                                                  (write '(funapp 1252 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1253 47))
                                                (display "\n")
                                                (car x7832)))))
                                           (begin
                                             (write '(funapp 1254 44))
                                             (display "\n")
                                             (proc
                                              x7836
                                              x7835
                                              x7834
                                              x7833
                                              x7831)))))
                                        g7830)
                                       (letrec*
                                        ((x-cnd7837
                                          (letrec*
                                           ((x7838
                                             (letrec*
                                              ((x7839
                                                (begin
                                                  (write '(funapp 1266 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1267 47))
                                                (display "\n")
                                                (cddr x7839)))))
                                           (begin
                                             (write '(funapp 1268 44))
                                             (display "\n")
                                             (null? x7838)))))
                                        (if x-cnd7837
                                          (letrec*
                                           ((g7840
                                             (letrec*
                                              ((x7848
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7847
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7846
                                                (begin
                                                  (write '(funapp 1275 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7845
                                                (begin
                                                  (write '(funapp 1276 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7843
                                                (letrec*
                                                 ((x7844
                                                   (begin
                                                     (write '(funapp 1279 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1280 50))
                                                   (display "\n")
                                                   (car x7844))))
                                               (x7841
                                                (letrec*
                                                 ((x7842
                                                   (begin
                                                     (write '(funapp 1283 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1284 50))
                                                   (display "\n")
                                                   (cadr x7842)))))
                                              (begin
                                                (write '(funapp 1285 47))
                                                (display "\n")
                                                (proc
                                                 x7848
                                                 x7847
                                                 x7846
                                                 x7845
                                                 x7843
                                                 x7841)))))
                                           g7840)
                                          (letrec*
                                           ((x-cnd7849
                                             (letrec*
                                              ((x7850
                                                (letrec*
                                                 ((x7851
                                                   (begin
                                                     (write '(funapp 1298 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1299 50))
                                                   (display "\n")
                                                   (cdddr x7851)))))
                                              (begin
                                                (write '(funapp 1300 47))
                                                (display "\n")
                                                (null? x7850)))))
                                           (if x-cnd7849
                                             (letrec*
                                              ((g7852
                                                (letrec*
                                                 ((x7862
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7861
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7860
                                                   (begin
                                                     (write '(funapp 1307 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7859
                                                   (begin
                                                     (write '(funapp 1308 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7857
                                                   (letrec*
                                                    ((x7858
                                                      (begin
                                                        (write
                                                         '(funapp 1311 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1312 53))
                                                      (display "\n")
                                                      (car x7858))))
                                                  (x7855
                                                   (letrec*
                                                    ((x7856
                                                      (begin
                                                        (write
                                                         '(funapp 1315 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1316 53))
                                                      (display "\n")
                                                      (cadr x7856))))
                                                  (x7853
                                                   (letrec*
                                                    ((x7854
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (caddr x7854)))))
                                                 (begin
                                                   (write '(funapp 1321 50))
                                                   (display "\n")
                                                   (proc
                                                    x7862
                                                    x7861
                                                    x7860
                                                    x7859
                                                    x7857
                                                    x7855
                                                    x7853)))))
                                              g7852)
                                             (letrec*
                                              ((g7863
                                                (begin
                                                  (write '(funapp 1332 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7863)))))))))))))))))))
                   g7800)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7866
                        (begin
                          (write '(funapp 1338 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1338 57))
                        (display "\n")
                        (assert x7866))))
                    (g7865
                     (letrec*
                      ((x-cnd7867
                        (begin
                          (write '(funapp 1341 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7867
                        #f
                        (letrec*
                         ((x-cnd7868
                           (letrec*
                            ((x7869
                              (begin
                                (write '(funapp 1346 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1346 55))
                              (display "\n")
                              (equal? x7869 e)))))
                         (if x-cnd7868
                           l
                           (letrec*
                            ((x7870
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1349 55))
                              (display "\n")
                              (member e x7870)))))))))
                   g7865)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7872
                        (letrec*
                         ((x7873
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 1358 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1358 61))
                              (display "\n")
                              (cdr x7874)))))
                         (begin
                           (write '(funapp 1359 26))
                           (display "\n")
                           (cdr x7873)))))
                      (begin
                        (write '(funapp 1360 23))
                        (display "\n")
                        (cdr x7872)))))
                   g7871)))
               (cadddr
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
                                (write '(funapp 1369 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1369 61))
                              (display "\n")
                              (cdr x7878)))))
                         (begin
                           (write '(funapp 1370 26))
                           (display "\n")
                           (cdr x7877)))))
                      (begin
                        (write '(funapp 1371 23))
                        (display "\n")
                        (car x7876)))))
                   g7875)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7879
                     (begin
                       (write '(funapp 1373 53))
                       (display "\n")
                       (random 42))))
                   g7879)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7882
                        (begin
                          (write '(funapp 1377 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1377 59))
                        (display "\n")
                        (assert x7882))))
                    (g7881
                     (begin (write '(funapp 1378 28)) (display "\n") (= x 0))))
                   g7881)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1385 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7884
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1387 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7884))))
                   g7883)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1393 55))
                        (display "\n")
                        (car x7886)))))
                   g7885)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7888
                           (begin
                             (write '(funapp 1403 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1405 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1405 55))
                              (display "\n")
                              (list? x7889)))
                           #f))))
                      (letrec*
                       ((g7890
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1408 52))
                             (display "\n")
                             (null? l)))))
                       g7890))))
                   g7887)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7891
                     (letrec*
                      ((x7892
                        (letrec*
                         ((x7893
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 1418 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1418 61))
                              (display "\n")
                              (car x7894)))))
                         (begin
                           (write '(funapp 1419 26))
                           (display "\n")
                           (cdr x7893)))))
                      (begin
                        (write '(funapp 1420 23))
                        (display "\n")
                        (cdr x7892)))))
                   g7891)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x-cnd7896
                        (letrec*
                         ((x7897 #\0))
                         (begin
                           (write '(funapp 1427 58))
                           (display "\n")
                           (char<=? x7897 c)))))
                      (if x-cnd7896
                        (letrec*
                         ((x7898 #\9))
                         (begin
                           (write '(funapp 1429 48))
                           (display "\n")
                           (char<=? c x7898)))
                        #f))))
                   g7895)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7901
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1436 57))
                        (display "\n")
                        (assert x7901))))
                    (g7900
                     (letrec*
                      ((x-cnd7902
                        (begin
                          (write '(funapp 1439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7902
                        #f
                        (letrec*
                         ((x-cnd7903
                           (letrec*
                            ((x7904
                              (begin
                                (write '(funapp 1444 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1444 56))
                              (display "\n")
                              (eqv? x7904 k)))))
                         (if x-cnd7903
                           (begin
                             (write '(funapp 1446 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7905
                              (begin
                                (write '(funapp 1447 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1447 55))
                              (display "\n")
                              (assq k x7905)))))))))
                   g7900)))
               (not (lambda (x) (letrec* ((g7906 (if x #f #t))) g7906)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7907
                     (begin
                       (write '(funapp 1451 50))
                       (display "\n")
                       (append l1 l2))))
                   g7907)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1455 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1455 57))
                        (display "\n")
                        (assert x7910))))
                    (g7909
                     (letrec*
                      ((x-cnd7911
                        (begin
                          (write '(funapp 1458 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7911
                        #f
                        (letrec*
                         ((x-cnd7912
                           (letrec*
                            ((x7913
                              (begin
                                (write '(funapp 1463 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1463 55))
                              (display "\n")
                              (eq? x7913 e)))))
                         (if x-cnd7912
                           l
                           (letrec*
                            ((x7914
                              (begin
                                (write '(funapp 1466 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1466 55))
                              (display "\n")
                              (memq e x7914)))))))))
                   g7909)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7915
                     (letrec*
                      ((x7916
                        (letrec*
                         ((x7917
                           (letrec*
                            ((x7918
                              (begin
                                (write '(funapp 1475 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1475 61))
                              (display "\n")
                              (car x7918)))))
                         (begin
                           (write '(funapp 1476 26))
                           (display "\n")
                           (cdr x7917)))))
                      (begin
                        (write '(funapp 1477 23))
                        (display "\n")
                        (car x7916)))))
                   g7915)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7919
                     (letrec*
                      ((x7921
                        (begin
                          (write '(funapp 1482 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1482 57))
                        (display "\n")
                        (assert x7921))))
                    (g7920
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7922
                             (letrec*
                              ((x-cnd7923
                                (begin
                                  (write '(funapp 1490 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7923
                                0
                                (letrec*
                                 ((x7924
                                   (letrec*
                                    ((x7925
                                      (begin
                                        (write '(funapp 1495 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1495 63))
                                      (display "\n")
                                      (rec x7925)))))
                                 (begin
                                   (write '(funapp 1496 34))
                                   (display "\n")
                                   (+ 1 x7924)))))))
                           g7922))))
                      (letrec*
                       ((g7926
                         (begin
                           (write '(funapp 1498 40))
                           (display "\n")
                           (rec l))))
                       g7926))))
                   g7920)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7930
                        (begin
                          (write '(funapp 1503 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1503 58))
                        (display "\n")
                        (assert x7930))))
                    (g7928
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1504 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1504 58))
                        (display "\n")
                        (assert x7931))))
                    (g7929
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1507 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7932
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1509 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7932))))
                   g7929)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7933
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1515 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1515 65))
                        (display "\n")
                        (not x7934)))))
                   g7933)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7935
                     (letrec*
                      ((x7936
                        (letrec*
                         ((x7937
                           (begin
                             (write '(funapp 1522 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1522 58))
                           (display "\n")
                           (car x7937)))))
                      (begin
                        (write '(funapp 1523 23))
                        (display "\n")
                        (cdr x7936)))))
                   g7935)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1528 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1528 57))
                        (display "\n")
                        (assert x7940))))
                    (g7939
                     (letrec*
                      ((x-cnd7941
                        (begin
                          (write '(funapp 1531 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7941
                        #f
                        (letrec*
                         ((x-cnd7942
                           (letrec*
                            ((x7943
                              (begin
                                (write '(funapp 1536 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1536 56))
                              (display "\n")
                              (equal? x7943 k)))))
                         (if x-cnd7942
                           (begin
                             (write '(funapp 1538 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7944
                              (begin
                                (write '(funapp 1539 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1539 55))
                              (display "\n")
                              (assoc k x7944)))))))))
                   g7939)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7945
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1544 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1544 55))
                        (display "\n")
                        (car x7946)))))
                   g7945)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7950))))
                    (g7948
                     (letrec*
                      ((x7951
                        (begin
                          (write '(funapp 1550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1550 58))
                        (display "\n")
                        (assert x7951))))
                    (g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1551 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1551 63))
                        (display "\n")
                        (not x7952)))))
                   g7949)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7953
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1558 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7954
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1560 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7954))))
                   g7953)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1566 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1566 62))
                        (display "\n")
                        (assert x7958))))
                    (g7956
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1567 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (assert x7959))))
                    (g7957
                     (letrec*
                      ((x-cnd7960
                        (begin
                          (write '(funapp 1570 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7960
                        #t
                        (letrec*
                         ((x-cnd7961
                           (begin
                             (write '(funapp 1574 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7961
                           (letrec*
                            ((g7962
                              (letrec*
                               ((x7964
                                 (begin
                                   (write '(funapp 1577 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1577 64))
                                 (display "\n")
                                 (f x7964))))
                             (g7963
                              (letrec*
                               ((x7965
                                 (begin
                                   (write '(funapp 1579 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1579 58))
                                 (display "\n")
                                 (for-each f x7965)))))
                            g7963)
                           (begin
                             (write '(funapp 1581 27))
                             (display "\n")
                             '())))))))
                   g7957)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1586 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1586 59))
                        (display "\n")
                        (assert x7968))))
                    (g7967
                     (letrec*
                      ((x-cnd7969
                        (begin
                          (write '(funapp 1588 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7969
                        (begin
                          (write '(funapp 1588 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7967)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7973
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7973))))
                    (g7971
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7974))))
                    (g7972
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1597 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7975
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1599 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7975))))
                   g7972)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7976
                     (letrec*
                      ((x7977
                        (letrec*
                         ((x7978
                           (letrec*
                            ((x7979
                              (begin
                                (write '(funapp 1609 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1609 61))
                              (display "\n")
                              (cdr x7979)))))
                         (begin
                           (write '(funapp 1610 26))
                           (display "\n")
                           (cdr x7978)))))
                      (begin
                        (write '(funapp 1611 23))
                        (display "\n")
                        (car x7977)))))
                   g7976)))
               (newline (lambda () (letrec* ((g7980 #f)) g7980)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x7983
                        (letrec*
                         ((x7984
                           (begin
                             (write '(funapp 1619 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1619 58))
                           (display "\n")
                           (abs x7984))))
                       (x7982
                        (begin
                          (write '(funapp 1620 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1621 23))
                        (display "\n")
                        (/ x7983 x7982)))))
                   g7981)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7985
                     (letrec*
                      ((x7989
                        (begin
                          (write '(funapp 1627 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1627 57))
                        (display "\n")
                        (assert x7989))))
                    (g7986
                     (letrec*
                      ((x7990
                        (begin
                          (write '(funapp 1628 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1628 63))
                        (display "\n")
                        (assert x7990))))
                    (g7987
                     (letrec*
                      ((x7991
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1631 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1631 61))
                           (display "\n")
                           (< index x7992)))))
                      (begin
                        (write '(funapp 1632 23))
                        (display "\n")
                        (assert x7991))))
                    (g7988
                     (letrec*
                      ((x-cnd7993
                        (begin
                          (write '(funapp 1635 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7993
                        (begin
                          (write '(funapp 1637 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7995
                           (begin
                             (write '(funapp 1639 34))
                             (display "\n")
                             (cdr l)))
                          (x7994
                           (begin
                             (write '(funapp 1639 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1640 26))
                           (display "\n")
                           (list-ref x7995 x7994)))))))
                   g7988)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((x-cnd7997
                        (begin
                          (write '(funapp 1647 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7997
                        a
                        (letrec*
                         ((x7998
                           (begin
                             (write '(funapp 1650 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1650 57))
                           (display "\n")
                           (gcd b x7998)))))))
                   g7996)))
               (foldr
                (lambda (f z xs)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x-cnd8000
                        (begin
                          (write '(funapp 1657 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd8000
                        z
                        (letrec*
                         ((x8003
                           (begin
                             (write '(funapp 1661 34))
                             (display "\n")
                             (car xs)))
                          (x8001
                           (letrec*
                            ((x8002
                              (begin
                                (write '(funapp 1663 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1663 56))
                              (display "\n")
                              (foldr f z x8002)))))
                         (begin
                           (write '(funapp 1664 26))
                           (display "\n")
                           (f x8003 x8001)))))))
                   g7999)))
               (map_
                (lambda (f xs)
                  (letrec*
                   ((g8004
                     (begin
                       (write '(funapp 1670 22))
                       (display "\n")
                       (foldr
                        (lambda (x ys)
                          (letrec*
                           ((g8005
                             (letrec*
                              ((x8006
                                (begin
                                  (write '(funapp 1673 51))
                                  (display "\n")
                                  (f x))))
                              (begin
                                (write '(funapp 1673 59))
                                (display "\n")
                                (cons x8006 ys)))))
                           g8005))
                        empty
                        xs))))
                   g8004))))
              (letrec*
               ((g8007
                 (begin
                   (write '(funapp 1680 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1681 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8011
                          (letrec*
                           ((xj7394
                             (begin
                               (write '(funapp 1685 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1685 37))
                                  (display "\n")
                                  'module))))
                            (xk7395
                             (begin
                               (write '(funapp 1685 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1685 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8012
                              (begin
                                (write '(funapp 1688 27))
                                (display "\n")
                                ((lambda (j7399 k7400 f7401)
                                   (letrec*
                                    ((g8013
                                      (lambda (g7396 g7397 g7398)
                                        (letrec*
                                         ((g8014
                                           (letrec*
                                            ((x8015
                                              (letrec*
                                               ((x8019
                                                 (begin
                                                   (write '(funapp 1698 44))
                                                   (display "\n")
                                                   ((lambda (j7404 k7405 f7406)
                                                      (letrec*
                                                       ((g8020
                                                         (lambda (g7402 g7403)
                                                           (letrec*
                                                            ((g8021
                                                              (letrec*
                                                               ((x8022
                                                                 (letrec*
                                                                  ((x8024
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1708
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7404
                                                                       k7405
                                                                       g7402)))
                                                                   (x8023
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1713
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7404
                                                                       k7405
                                                                       g7403))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1717
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7406
                                                                     x8024
                                                                     x8023)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1720
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7404
                                                                  k7405
                                                                  x8022)))))
                                                            g8021))))
                                                       g8020))
                                                    j7399
                                                    k7400
                                                    g7396)))
                                                (x8018
                                                 (begin
                                                   (write '(funapp 1729 50))
                                                   (display "\n")
                                                   (any/c j7399 k7400 g7397)))
                                                (x8016
                                                 (letrec*
                                                  ((x8017
                                                    (begin
                                                      (write '(funapp 1732 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1733 45))
                                                    (display "\n")
                                                    (x8017
                                                     j7399
                                                     k7400
                                                     g7398)))))
                                               (begin
                                                 (write '(funapp 1734 42))
                                                 (display "\n")
                                                 (f7401 x8019 x8018 x8016)))))
                                            (begin
                                              (write '(funapp 1735 39))
                                              (display "\n")
                                              (any/c j7399 k7400 x8015)))))
                                         g8014))))
                                    g8013))
                                 xj7394
                                 xk7395
                                 foldr))))
                            g8012)))
                         (x8010 (input))
                         (x8009 (input))
                         (x8008 (input)))
                        (begin
                          (write '(funapp 1745 21))
                          (display "\n")
                          (x8011 x8010 x8009 x8008)))
                       (letrec*
                        ((x8027
                          (letrec*
                           ((xj7407
                             (begin
                               (write '(funapp 1749 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1749 37))
                                  (display "\n")
                                  'module))))
                            (xk7408
                             (begin
                               (write '(funapp 1749 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1749 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8028
                              (begin
                                (write '(funapp 1752 27))
                                (display "\n")
                                ((lambda (j7411 k7412 f7413)
                                   (letrec*
                                    ((g8029
                                      (lambda (g7409 g7410)
                                        (letrec*
                                         ((g8030
                                           (letrec*
                                            ((x8039
                                              (begin
                                                (write '(funapp 1759 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8031
                                              (letrec*
                                               ((x8034
                                                 (begin
                                                   (write '(funapp 1763 44))
                                                   (display "\n")
                                                   ((lambda (j7415 k7416 f7417)
                                                      (letrec*
                                                       ((g8035
                                                         (lambda (g7414)
                                                           (letrec*
                                                            ((g8036
                                                              (letrec*
                                                               ((x8037
                                                                 (letrec*
                                                                  ((x8038
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1773
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7415
                                                                       k7416
                                                                       g7414))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1777
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7417
                                                                     x8038)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1778
                                                                    56))
                                                                 (display "\n")
                                                                 (any/c
                                                                  j7415
                                                                  k7416
                                                                  x8037)))))
                                                            g8036))))
                                                       g8035))
                                                    j7411
                                                    k7412
                                                    g7409)))
                                                (x8032
                                                 (letrec*
                                                  ((x8033
                                                    (begin
                                                      (write '(funapp 1789 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1790 45))
                                                    (display "\n")
                                                    (x8033
                                                     j7411
                                                     k7412
                                                     g7410)))))
                                               (begin
                                                 (write '(funapp 1791 42))
                                                 (display "\n")
                                                 (f7413 x8034 x8032)))))
                                            (begin
                                              (write '(funapp 1792 39))
                                              (display "\n")
                                              (x8039 j7411 k7412 x8031)))))
                                         g8030))))
                                    g8029))
                                 xj7407
                                 xk7408
                                 map_))))
                            g8028)))
                         (x8026 (input))
                         (x8025 (input)))
                        (begin
                          (write '(funapp 1801 21))
                          (display "\n")
                          (x8027 x8026 x8025)))))))))
               g8007))))
           g7445))))
       g7429)))
    g7428)))
