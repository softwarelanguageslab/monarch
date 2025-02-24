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
          ((>=
            (lambda (x y)
              (letrec*
               ((g7417
                 (letrec*
                  ((x7419
                    (begin
                      (write '(funapp 47 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 47 55))
                    (display "\n")
                    (assert x7419))))
                (g7418
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 50 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7420
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 56 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7421 (if val7244 val7244 #f))) g7421)))))
                   g7420))))
               g7418)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7422
                 (letrec*
                  ((x7424
                    (begin
                      (write '(funapp 63 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 63 55))
                    (display "\n")
                    (assert x7424))))
                (g7423
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 66 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7425
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 72 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7426 (if val7246 val7246 #f))) g7426)))))
                   g7425))))
               g7423)))
           (>
            (lambda (x y)
              (letrec*
               ((g7427
                 (letrec*
                  ((x7429
                    (begin
                      (write '(funapp 79 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 79 55))
                    (display "\n")
                    (assert x7429))))
                (g7428
                 (letrec*
                  ((x7430
                    (begin (write '(funapp 80 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 80 52)) (display "\n") (not x7430)))))
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
           ((g7431 (begin (write '(funapp 96 19)) (display "\n") '()))
            (g7432
             (letrec*
              ((empty (begin (write '(funapp 99 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7433
                     (lambda (k j lst)
                       (letrec*
                        ((g7434
                          (begin
                            (write '(funapp 107 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7435
                                  (begin
                                    (write '(funapp 109 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7435))
                             lst))))
                        g7434))))
                   g7433)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7436
                     (letrec*
                      ((x-cnd7437
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7437
                        g7263
                        (begin
                          (write '(blame g7261 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7436)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7438
                     (letrec*
                      ((x-cnd7439
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7439
                        g7266
                        (begin
                          (write '(blame g7264 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7438)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x-cnd7441
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7441
                        g7269
                        (begin
                          (write '(blame g7267 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7440)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x-cnd7443
                        (begin
                          (write '(funapp 143 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7444 #t)) g7444)) g7272))))
                      (if x-cnd7443
                        g7272
                        (begin
                          (write '(blame g7270 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7442)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x-cnd7446
                        (begin
                          (write '(funapp 152 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7447 #t)) g7447)) g7275))))
                      (if x-cnd7446
                        g7275
                        (begin
                          (write '(blame g7273 153 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7445)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 160 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7449
                        g7278
                        (begin
                          (write '(blame g7276 161 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7448)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 169 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7451
                        g7281
                        (begin
                          (write '(blame g7279 170 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7450)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 177 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7453
                        g7284
                        (begin
                          (write '(blame g7282 178 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7452)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 185 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7455
                        g7287
                        (begin
                          (write '(blame g7285 186 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7454)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7456
                     (lambda (k j v)
                       (letrec*
                        ((g7457
                          (letrec*
                           ((x-cnd7458
                             (begin
                               (write '(funapp 196 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7458
                             (begin
                               (write '(funapp 197 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7457))))
                   g7456)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7459
                     (lambda (k j v)
                       (letrec*
                        ((g7460
                          (letrec*
                           ((x-cnd7461
                             (begin
                               (write '(funapp 208 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7461
                             (begin
                               (write '(funapp 210 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7465
                                (letrec*
                                 ((x7466
                                   (begin
                                     (write '(funapp 214 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 215 34))
                                   (display "\n")
                                   (contract k j x7466))))
                               (x7462
                                (letrec*
                                 ((x7464
                                   (begin
                                     (write '(funapp 218 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7463
                                   (begin
                                     (write '(funapp 218 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 219 34))
                                   (display "\n")
                                   (x7464 k j x7463)))))
                              (begin
                                (write '(funapp 220 31))
                                (display "\n")
                                (orig-cons x7465 x7462)))))))
                        g7460))))
                   g7459)))
               (any? (lambda (v) (letrec* ((g7467 #t)) g7467)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x7469
                        (begin
                          (write '(funapp 227 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 227 55))
                        (display "\n")
                        (not x7469)))))
                   g7468)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x-cnd7471
                        (begin
                          (write '(funapp 235 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7472
                                (letrec*
                                 ((x7473
                                   (begin
                                     (write '(funapp 237 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 237 64))
                                   (display "\n")
                                   (not x7473)))))
                              g7472))
                           g7290))))
                      (if x-cnd7471
                        g7290
                        (begin
                          (write '(blame g7288 242 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7470)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7474
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7475
                          (letrec*
                           ((x-cnd7476
                             (begin
                               (write '(funapp 253 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7477
                                     (begin
                                       (write '(funapp 254 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7477))
                                g7293))))
                           (if x-cnd7476
                             g7293
                             (begin
                               (write '(blame g7291 258 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7475))))
                   g7474)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7478
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7479
                          (letrec*
                           ((x-cnd7480
                             (begin
                               (write '(funapp 270 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7481
                                     (begin
                                       (write '(funapp 271 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7481))
                                g7296))))
                           (if x-cnd7480
                             g7296
                             (begin
                               (write '(blame g7294 275 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7479))))
                   g7478)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7482
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7483
                          (letrec*
                           ((x-cnd7484
                             (begin
                               (write '(funapp 287 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7485
                                     (begin
                                       (write '(funapp 288 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7485))
                                g7299))))
                           (if x-cnd7484
                             g7299
                             (begin
                               (write '(blame g7297 292 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7483))))
                   g7482)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7486
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7487
                          (letrec*
                           ((x-cnd7488
                             (begin
                               (write '(funapp 304 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7489
                                     (begin
                                       (write '(funapp 305 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7489))
                                g7302))))
                           (if x-cnd7488
                             g7302
                             (begin
                               (write '(blame g7300 309 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7487))))
                   g7486)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7490
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7491
                          (letrec*
                           ((x-cnd7492
                             (begin
                               (write '(funapp 321 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7493
                                     (begin
                                       (write '(funapp 322 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7493))
                                g7305))))
                           (if x-cnd7492
                             g7305
                             (begin
                               (write '(blame g7303 326 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7491))))
                   g7490)))
               (meta (lambda (v) (letrec* ((g7494 v)) g7494)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 332 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 332 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7495
                    (begin
                      (write '(funapp 335 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7497
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7498
                                 (letrec*
                                  ((x7499
                                    (letrec*
                                     ((x7501
                                       (begin
                                         (write '(funapp 344 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7500
                                       (begin
                                         (write '(funapp 345 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 346 36))
                                       (display "\n")
                                       (f7312 x7501 x7500)))))
                                  (begin
                                    (write '(funapp 347 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7499)))))
                               g7498))))
                          g7497))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7496
                            (begin
                              (write '(funapp 352 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7496))))))
                  g7495)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 356 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 356 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7502
                    (begin
                      (write '(funapp 359 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7504
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7505
                                 (letrec*
                                  ((x7506
                                    (letrec*
                                     ((x7508
                                       (begin
                                         (write '(funapp 368 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7507
                                       (begin
                                         (write '(funapp 369 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 370 36))
                                       (display "\n")
                                       (f7319 x7508 x7507)))))
                                  (begin
                                    (write '(funapp 371 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7506)))))
                               g7505))))
                          g7504))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7503
                            (begin
                              (write '(funapp 376 53))
                              (display "\n")
                              (orig-- a b))))
                          g7503))))))
                  g7502)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 380 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 380 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7509
                    (begin
                      (write '(funapp 383 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7511
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7512
                                 (letrec*
                                  ((x7513
                                    (letrec*
                                     ((x7515
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7514
                                       (begin
                                         (write '(funapp 393 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 394 36))
                                       (display "\n")
                                       (f7326 x7515 x7514)))))
                                  (begin
                                    (write '(funapp 395 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7513)))))
                               g7512))))
                          g7511))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7510
                            (begin
                              (write '(funapp 400 53))
                              (display "\n")
                              (orig-* a b))))
                          g7510))))))
                  g7509)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 404 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 404 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7516
                    (begin
                      (write '(funapp 407 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7518
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7519
                                 (letrec*
                                  ((x7520
                                    (letrec*
                                     ((x7522
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7521
                                       (begin
                                         (write '(funapp 417 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 418 36))
                                       (display "\n")
                                       (f7333 x7522 x7521)))))
                                  (begin
                                    (write '(funapp 419 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7520)))))
                               g7519))))
                          g7518))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7517
                            (begin
                              (write '(funapp 424 53))
                              (display "\n")
                              (orig-< a b))))
                          g7517))))))
                  g7516)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 428 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 428 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7523
                    (begin
                      (write '(funapp 431 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7525
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7526
                                 (letrec*
                                  ((x7527
                                    (letrec*
                                     ((x7529
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7528
                                       (begin
                                         (write '(funapp 441 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 442 36))
                                       (display "\n")
                                       (f7340 x7529 x7528)))))
                                  (begin
                                    (write '(funapp 443 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7527)))))
                               g7526))))
                          g7525))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7524
                            (begin
                              (write '(funapp 448 53))
                              (display "\n")
                              (orig-> a b))))
                          g7524))))))
                  g7523)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 452 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 452 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7530
                    (begin
                      (write '(funapp 455 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7532
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7533
                                 (letrec*
                                  ((x7534
                                    (letrec*
                                     ((x7536
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7535
                                       (begin
                                         (write '(funapp 465 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 466 36))
                                       (display "\n")
                                       (f7347 x7536 x7535)))))
                                  (begin
                                    (write '(funapp 467 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7534)))))
                               g7533))))
                          g7532))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7531
                            (begin
                              (write '(funapp 472 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7531))))))
                  g7530)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 476 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 476 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7537
                    (begin
                      (write '(funapp 479 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7539
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7540
                                 (letrec*
                                  ((x7541
                                    (letrec*
                                     ((x7543
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7542
                                       (begin
                                         (write '(funapp 489 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 490 36))
                                       (display "\n")
                                       (f7354 x7543 x7542)))))
                                  (begin
                                    (write '(funapp 491 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7541)))))
                               g7540))))
                          g7539))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7538
                            (begin
                              (write '(funapp 496 53))
                              (display "\n")
                              (orig->= a b))))
                          g7538))))))
                  g7537)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 500 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 500 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7544
                    (begin
                      (write '(funapp 503 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7546
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7547
                                 (letrec*
                                  ((x7548
                                    (letrec*
                                     ((x7550
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7549
                                       (begin
                                         (write '(funapp 513 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 514 36))
                                       (display "\n")
                                       (f7361 x7550 x7549)))))
                                  (begin
                                    (write '(funapp 515 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7548)))))
                               g7547))))
                          g7546))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7545
                            (begin
                              (write '(funapp 520 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7545))))))
                  g7544)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 524 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 524 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7551
                    (begin
                      (write '(funapp 527 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7553
                            (lambda (g7364)
                              (letrec*
                               ((g7554
                                 (letrec*
                                  ((x7555
                                    (letrec*
                                     ((x7556
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7367 x7556)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7555)))))
                               g7554))))
                          g7553))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7552
                            (begin
                              (write '(funapp 543 51))
                              (display "\n")
                              (orig-car p))))
                          g7552))))))
                  g7551)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7557
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7559
                            (lambda (g7370)
                              (letrec*
                               ((g7560
                                 (letrec*
                                  ((x7561
                                    (letrec*
                                     ((x7562
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 560 36))
                                       (display "\n")
                                       (f7373 x7562)))))
                                  (begin
                                    (write '(funapp 561 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7561)))))
                               g7560))))
                          g7559))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7558
                            (begin
                              (write '(funapp 566 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7558))))))
                  g7557)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 570 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 570 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7563
                    (begin
                      (write '(funapp 573 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7565
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7566
                                 (letrec*
                                  ((x7567
                                    (letrec*
                                     ((x7569
                                       (begin
                                         (write '(funapp 582 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7568
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7380 x7569 x7568)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7567)))))
                               g7566))))
                          g7565))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7564
                            (begin
                              (write '(funapp 591 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7564))))))
                  g7563)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7570
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7572
                            (lambda (g7383)
                              (letrec*
                               ((g7573
                                 (letrec*
                                  ((x7574
                                    (letrec*
                                     ((x7575
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7386 x7575)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7574)))))
                               g7573))))
                          g7572))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7571
                            (begin
                              (write '(funapp 615 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7571))))))
                  g7570)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7576
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7578
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7579
                                 (letrec*
                                  ((x7580
                                    (letrec*
                                     ((x7582
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7581
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7393 x7582 x7581)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7580)))))
                               g7579))))
                          g7578))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7577
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7577))))))
                  g7576)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7583
                     (if cnd
                       (begin (write '(funapp 645 35)) (display "\n") '())
                       (begin
                         (write '(funapp 645 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7583)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7584
                     (letrec*
                      ((x7585
                        (letrec*
                         ((x7586
                           (begin
                             (write '(funapp 652 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 652 58))
                           (display "\n")
                           (cdr x7586)))))
                      (begin
                        (write '(funapp 653 23))
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
                          (write '(funapp 659 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 659 62))
                        (display "\n")
                        (assert x7590))))
                    (g7588
                     (letrec*
                      ((x7591
                        (begin
                          (write '(funapp 660 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 660 57))
                        (display "\n")
                        (assert x7591))))
                    (g7589
                     (letrec*
                      ((x-cnd7592
                        (begin
                          (write '(funapp 663 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7592
                        (begin (write '(funapp 665 24)) (display "\n") '())
                        (letrec*
                         ((x7595
                           (letrec*
                            ((x7596
                              (begin
                                (write '(funapp 667 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 667 61))
                              (display "\n")
                              (f x7596))))
                          (x7593
                           (letrec*
                            ((x7594
                              (begin
                                (write '(funapp 668 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 668 61))
                              (display "\n")
                              (map f x7594)))))
                         (begin
                           (write '(funapp 669 26))
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
                          (write '(funapp 674 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 674 55))
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
                                (write '(funapp 683 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 683 61))
                              (display "\n")
                              (car x7602)))))
                         (begin
                           (write '(funapp 684 26))
                           (display "\n")
                           (cdr x7601)))))
                      (begin
                        (write '(funapp 685 23))
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
                                (write '(funapp 694 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 694 61))
                              (display "\n")
                              (cdr x7606)))))
                         (begin
                           (write '(funapp 695 26))
                           (display "\n")
                           (car x7605)))))
                      (begin
                        (write '(funapp 696 23))
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
                          (write '(funapp 702 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 702 60))
                        (display "\n")
                        (assert x7610))))
                    (g7608
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 704 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 704 59))
                        (display "\n")
                        (assert x7611))))
                    (g7609
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
                       ((g7612
                         (begin
                           (write '(funapp 710 32))
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
                             (write '(funapp 718 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 718 58))
                           (display "\n")
                           (cdr x7616)))))
                      (begin
                        (write '(funapp 719 23))
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
                                (write '(funapp 728 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 728 61))
                              (display "\n")
                              (car x7620)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (car x7619)))))
                      (begin
                        (write '(funapp 730 23))
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
                          (write '(funapp 735 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 735 57))
                        (display "\n")
                        (assert x7623))))
                    (g7622
                     (letrec*
                      ((x-cnd7624
                        (begin
                          (write '(funapp 738 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7624
                        #f
                        (letrec*
                         ((x-cnd7625
                           (letrec*
                            ((x7626
                              (begin
                                (write '(funapp 743 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 743 56))
                              (display "\n")
                              (eq? x7626 k)))))
                         (if x-cnd7625
                           (begin
                             (write '(funapp 745 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7627
                              (begin
                                (write '(funapp 746 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 746 55))
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
                          (write '(funapp 751 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 751 60))
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
                          (write '(funapp 756 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 756 57))
                        (display "\n")
                        (assert x7632))))
                    (g7631
                     (letrec*
                      ((x-cnd7633
                        (begin
                          (write '(funapp 759 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7633
                        ""
                        (letrec*
                         ((x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 764 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 764 55))
                              (display "\n")
                              (char->string x7637))))
                          (x7634
                           (letrec*
                            ((x7635
                              (begin
                                (write '(funapp 766 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 766 55))
                              (display "\n")
                              (list->string x7635)))))
                         (begin
                           (write '(funapp 767 26))
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
                          (write '(funapp 772 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 772 58))
                        (display "\n")
                        (assert x7641))))
                    (g7639
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 773 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 773 58))
                        (display "\n")
                        (assert x7642))))
                    (g7640
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 776 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7643
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 778 52))
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
                                (write '(funapp 788 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 788 61))
                              (display "\n")
                              (cdr x7647)))))
                         (begin
                           (write '(funapp 789 26))
                           (display "\n")
                           (cdr x7646)))))
                      (begin
                        (write '(funapp 790 23))
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
                          (write '(funapp 795 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 795 57))
                        (display "\n")
                        (assert x7651))))
                    (g7649
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 796 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 796 57))
                        (display "\n")
                        (assert x7652))))
                    (g7650
                     (letrec*
                      ((x-cnd7653
                        (begin
                          (write '(funapp 799 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7653
                        x
                        (letrec*
                         ((x7655
                           (begin
                             (write '(funapp 803 34))
                             (display "\n")
                             (cdr x)))
                          (x7654
                           (begin
                             (write '(funapp 803 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (list-tail x7655 x7654)))))))
                   g7650)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7656
                     (begin (write '(funapp 806 49)) (display "\n") '())))
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
                           (write '(funapp 813 48))
                           (display "\n")
                           (char-ci>=? c x7659)))))
                      (if x-cnd7658
                        (letrec*
                         ((x7660 #\z))
                         (begin
                           (write '(funapp 815 48))
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
                             (write '(funapp 824 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 824 62))
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
                                   (write '(funapp 832 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 833 32))
                                 (display "\n")
                                 (= x7664 10)))))
                            (letrec*
                             ((g7665
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7666
                                    (begin
                                      (write '(funapp 839 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 840 35))
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
                             (write '(funapp 849 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 849 58))
                           (display "\n")
                           (cdr x7669)))))
                      (begin
                        (write '(funapp 850 23))
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
                          (write '(funapp 855 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 855 59))
                        (display "\n")
                        (assert x7672))))
                    (g7671
                     (begin (write '(funapp 856 28)) (display "\n") (> x 0))))
                   g7671)))
               ($pc (begin (write '(funapp 858 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7673 #f)) g7673)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 864 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 864 55))
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
                          (write '(funapp 869 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 869 59))
                        (display "\n")
                        (assert x7678))))
                    (g7677
                     (letrec*
                      ((x-cnd7679
                        (begin
                          (write '(funapp 872 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7679
                        (begin
                          (write '(funapp 873 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 873 49))
                          (display "\n")
                          (floor x))))))
                   g7677)))
               ($cmp (begin (write '(funapp 875 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7680
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 881 33))
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
                                   (write '(funapp 889 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7682
                                 (begin
                                   (write '(funapp 890 46))
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
                                         (write '(funapp 898 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7684
                                       (letrec*
                                        ((x-cnd7685
                                          (begin
                                            (write '(funapp 901 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7685
                                          (begin
                                            (write '(funapp 902 55))
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
                                               (write '(funapp 911 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7687
                                             (letrec*
                                              ((x-cnd7688
                                                (begin
                                                  (write '(funapp 914 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7688
                                                (letrec*
                                                 ((x-cnd7689
                                                   (letrec*
                                                    ((x7691
                                                      (begin
                                                        (write
                                                         '(funapp 919 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7690
                                                      (begin
                                                        (write
                                                         '(funapp 920 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 921 53))
                                                      (display "\n")
                                                      (equal? x7691 x7690)))))
                                                 (if x-cnd7689
                                                   (letrec*
                                                    ((x7693
                                                      (begin
                                                        (write
                                                         '(funapp 924 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7692
                                                      (begin
                                                        (write
                                                         '(funapp 925 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 926 53))
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
                                                  (write '(funapp 935 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7695
                                                (letrec*
                                                 ((x-cnd7696
                                                   (begin
                                                     (write '(funapp 938 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7696
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 941 57))
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
                                                                  948
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 950 60))
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
                                                                          959
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
                                                                                   968
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
                                                                               x7704
                                                                               x7703)))))
                                                                         (if x-cnd7702
                                                                           (letrec*
                                                                            ((x7705
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
                                                                               x7705)))
                                                                           #f)))))
                                                                    g7701))))
                                                                g7700))))
                                                           (letrec*
                                                            ((g7706
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   990
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
                                (write '(funapp 1008 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1008 61))
                              (display "\n")
                              (car x7710)))))
                         (begin
                           (write '(funapp 1009 26))
                           (display "\n")
                           (car x7709)))))
                      (begin
                        (write '(funapp 1010 23))
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
                                (write '(funapp 1019 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1019 61))
                              (display "\n")
                              (cdr x7714)))))
                         (begin
                           (write '(funapp 1020 26))
                           (display "\n")
                           (car x7713)))))
                      (begin
                        (write '(funapp 1021 23))
                        (display "\n")
                        (car x7712)))))
                   g7711)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7715
                     (begin
                       (write '(funapp 1023 53))
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
                          (write '(funapp 1028 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1028 60))
                        (display "\n")
                        (assert x7719))))
                    (g7717
                     (letrec*
                      ((x7720
                        (begin
                          (write '(funapp 1030 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1030 59))
                        (display "\n")
                        (assert x7720))))
                    (g7718
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
                       ((g7721
                         (begin
                           (write '(funapp 1036 32))
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
                       (write '(funapp 1039 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1039 57))
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
                          (write '(funapp 1043 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1043 58))
                        (display "\n")
                        (assert x7727))))
                    (g7725
                     (letrec*
                      ((x7728
                        (begin
                          (write '(funapp 1044 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1044 58))
                        (display "\n")
                        (assert x7728))))
                    (g7726
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1047 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7729
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1049 52))
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
                             (write '(funapp 1057 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1057 58))
                           (display "\n")
                           (car x7732)))))
                      (begin
                        (write '(funapp 1058 23))
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
                                (write '(funapp 1067 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1067 61))
                              (display "\n")
                              (cdr x7736)))))
                         (begin
                           (write '(funapp 1068 26))
                           (display "\n")
                           (car x7735)))))
                      (begin
                        (write '(funapp 1069 23))
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
                             (write '(funapp 1077 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1077 58))
                           (display "\n")
                           (cdr x7739)))))
                      (begin
                        (write '(funapp 1078 23))
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
                             (write '(funapp 1085 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (car x7742)))))
                      (begin
                        (write '(funapp 1086 23))
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
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1091 58))
                        (display "\n")
                        (assert x7746))))
                    (g7744
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1092 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1092 58))
                        (display "\n")
                        (assert x7747))))
                    (g7745
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1093 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1093 66))
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
                                (write '(funapp 1103 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1103 61))
                              (display "\n")
                              (car x7752)))))
                         (begin
                           (write '(funapp 1104 26))
                           (display "\n")
                           (car x7751)))))
                      (begin
                        (write '(funapp 1105 23))
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
                          (write '(funapp 1110 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1110 59))
                        (display "\n")
                        (assert x7755))))
                    (g7754
                     (begin (write '(funapp 1111 28)) (display "\n") (< x 0))))
                   g7754)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7756
                     (begin
                       (write '(funapp 1113 53))
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
                             (write '(funapp 1119 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1119 58))
                           (display "\n")
                           (car x7759)))))
                      (begin
                        (write '(funapp 1120 23))
                        (display "\n")
                        (car x7758)))))
                   g7757)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7760
                     (begin (write '(funapp 1122 51)) (display "\n") '())))
                   g7760)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1126 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1126 57))
                        (display "\n")
                        (assert x7763))))
                    (g7762
                     (letrec*
                      ((x-cnd7764
                        (begin
                          (write '(funapp 1129 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7764
                        (begin (write '(funapp 1131 24)) (display "\n") '())
                        (letrec*
                         ((x7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1133 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1133 61))
                              (display "\n")
                              (reverse x7768))))
                          (x7765
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (list x7766)))))
                         (begin
                           (write '(funapp 1135 26))
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
                                (write '(funapp 1144 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1144 61))
                              (display "\n")
                              (car x7772)))))
                         (begin
                           (write '(funapp 1145 26))
                           (display "\n")
                           (car x7771)))))
                      (begin
                        (write '(funapp 1146 23))
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
                                (write '(funapp 1155 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1155 61))
                              (display "\n")
                              (car x7776)))))
                         (begin
                           (write '(funapp 1156 26))
                           (display "\n")
                           (cdr x7775)))))
                      (begin
                        (write '(funapp 1157 23))
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
                          (write '(funapp 1162 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1162 59))
                        (display "\n")
                        (assert x7779))))
                    (g7778
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1163 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1163 60))
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
                                (write '(funapp 1172 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1172 61))
                              (display "\n")
                              (cdr x7784)))))
                         (begin
                           (write '(funapp 1173 26))
                           (display "\n")
                           (car x7783)))))
                      (begin
                        (write '(funapp 1174 23))
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
                          (write '(funapp 1180 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1180 59))
                        (display "\n")
                        (assert x7788))))
                    (g7786
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1181 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1181 60))
                        (display "\n")
                        (assert x7789))))
                    (g7787
                     (letrec*
                      ((x-cnd7790
                        (begin
                          (write '(funapp 1184 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7790
                        (letrec*
                         ((g7791
                           (begin
                             (write '(funapp 1186 42))
                             (display "\n")
                             (proc))))
                         g7791)
                        (letrec*
                         ((x-cnd7792
                           (letrec*
                            ((x7793
                              (begin
                                (write '(funapp 1189 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1189 58))
                              (display "\n")
                              (null? x7793)))))
                         (if x-cnd7792
                           (letrec*
                            ((g7794
                              (letrec*
                               ((x7795
                                 (begin
                                   (write '(funapp 1193 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1193 61))
                                 (display "\n")
                                 (proc x7795)))))
                            g7794)
                           (letrec*
                            ((x-cnd7796
                              (letrec*
                               ((x7797
                                 (begin
                                   (write '(funapp 1197 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1197 62))
                                 (display "\n")
                                 (null? x7797)))))
                            (if x-cnd7796
                              (letrec*
                               ((g7798
                                 (letrec*
                                  ((x7800
                                    (begin
                                      (write '(funapp 1202 43))
                                      (display "\n")
                                      (car args)))
                                   (x7799
                                    (begin
                                      (write '(funapp 1202 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1203 35))
                                    (display "\n")
                                    (proc x7800 x7799)))))
                               g7798)
                              (letrec*
                               ((x-cnd7801
                                 (letrec*
                                  ((x7802
                                    (begin
                                      (write '(funapp 1208 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1209 35))
                                    (display "\n")
                                    (null? x7802)))))
                               (if x-cnd7801
                                 (letrec*
                                  ((g7803
                                    (letrec*
                                     ((x7806
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (car args)))
                                      (x7805
                                       (begin
                                         (write '(funapp 1215 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7804
                                       (begin
                                         (write '(funapp 1216 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1217 38))
                                       (display "\n")
                                       (proc x7806 x7805 x7804)))))
                                  g7803)
                                 (letrec*
                                  ((x-cnd7807
                                    (letrec*
                                     ((x7808
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1223 38))
                                       (display "\n")
                                       (null? x7808)))))
                                  (if x-cnd7807
                                    (letrec*
                                     ((g7809
                                       (letrec*
                                        ((x7813
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (car args)))
                                         (x7812
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7811
                                          (begin
                                            (write '(funapp 1230 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7810
                                          (begin
                                            (write '(funapp 1231 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1232 41))
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
                                               (write '(funapp 1239 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1240 44))
                                             (display "\n")
                                             (cdr x7816)))))
                                        (begin
                                          (write '(funapp 1241 41))
                                          (display "\n")
                                          (null? x7815)))))
                                     (if x-cnd7814
                                       (letrec*
                                        ((g7817
                                          (letrec*
                                           ((x7823
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (car args)))
                                            (x7822
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7821
                                             (begin
                                               (write '(funapp 1248 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7820
                                             (begin
                                               (write '(funapp 1249 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7818
                                             (letrec*
                                              ((x7819
                                                (begin
                                                  (write '(funapp 1252 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1253 47))
                                                (display "\n")
                                                (car x7819)))))
                                           (begin
                                             (write '(funapp 1254 44))
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
                                                  (write '(funapp 1266 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1267 47))
                                                (display "\n")
                                                (cddr x7826)))))
                                           (begin
                                             (write '(funapp 1268 44))
                                             (display "\n")
                                             (null? x7825)))))
                                        (if x-cnd7824
                                          (letrec*
                                           ((g7827
                                             (letrec*
                                              ((x7835
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7834
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7833
                                                (begin
                                                  (write '(funapp 1275 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7832
                                                (begin
                                                  (write '(funapp 1276 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7830
                                                (letrec*
                                                 ((x7831
                                                   (begin
                                                     (write '(funapp 1279 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1280 50))
                                                   (display "\n")
                                                   (car x7831))))
                                               (x7828
                                                (letrec*
                                                 ((x7829
                                                   (begin
                                                     (write '(funapp 1283 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1284 50))
                                                   (display "\n")
                                                   (cadr x7829)))))
                                              (begin
                                                (write '(funapp 1285 47))
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
                                                     (write '(funapp 1298 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1299 50))
                                                   (display "\n")
                                                   (cdddr x7838)))))
                                              (begin
                                                (write '(funapp 1300 47))
                                                (display "\n")
                                                (null? x7837)))))
                                           (if x-cnd7836
                                             (letrec*
                                              ((g7839
                                                (letrec*
                                                 ((x7849
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7848
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7847
                                                   (begin
                                                     (write '(funapp 1307 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7846
                                                   (begin
                                                     (write '(funapp 1308 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7844
                                                   (letrec*
                                                    ((x7845
                                                      (begin
                                                        (write
                                                         '(funapp 1311 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1312 53))
                                                      (display "\n")
                                                      (car x7845))))
                                                  (x7842
                                                   (letrec*
                                                    ((x7843
                                                      (begin
                                                        (write
                                                         '(funapp 1315 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1316 53))
                                                      (display "\n")
                                                      (cadr x7843))))
                                                  (x7840
                                                   (letrec*
                                                    ((x7841
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (caddr x7841)))))
                                                 (begin
                                                   (write '(funapp 1321 50))
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
                                                  (write '(funapp 1332 49))
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
                          (write '(funapp 1338 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1338 57))
                        (display "\n")
                        (assert x7853))))
                    (g7852
                     (letrec*
                      ((x-cnd7854
                        (begin
                          (write '(funapp 1341 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7854
                        #f
                        (letrec*
                         ((x-cnd7855
                           (letrec*
                            ((x7856
                              (begin
                                (write '(funapp 1346 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1346 55))
                              (display "\n")
                              (equal? x7856 e)))))
                         (if x-cnd7855
                           l
                           (letrec*
                            ((x7857
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1349 55))
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
                                (write '(funapp 1358 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1358 61))
                              (display "\n")
                              (cdr x7861)))))
                         (begin
                           (write '(funapp 1359 26))
                           (display "\n")
                           (cdr x7860)))))
                      (begin
                        (write '(funapp 1360 23))
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
                                (write '(funapp 1369 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1369 61))
                              (display "\n")
                              (cdr x7865)))))
                         (begin
                           (write '(funapp 1370 26))
                           (display "\n")
                           (cdr x7864)))))
                      (begin
                        (write '(funapp 1371 23))
                        (display "\n")
                        (car x7863)))))
                   g7862)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7866
                     (begin
                       (write '(funapp 1373 53))
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
                          (write '(funapp 1377 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1377 59))
                        (display "\n")
                        (assert x7869))))
                    (g7868
                     (begin (write '(funapp 1378 28)) (display "\n") (= x 0))))
                   g7868)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1385 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7871
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1387 52))
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
                          (write '(funapp 1393 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1393 55))
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
                             (write '(funapp 1403 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7875
                           (letrec*
                            ((x7876
                              (begin
                                (write '(funapp 1405 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1405 55))
                              (display "\n")
                              (list? x7876)))
                           #f))))
                      (letrec*
                       ((g7877
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1408 52))
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
                                (write '(funapp 1418 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1418 61))
                              (display "\n")
                              (car x7881)))))
                         (begin
                           (write '(funapp 1419 26))
                           (display "\n")
                           (cdr x7880)))))
                      (begin
                        (write '(funapp 1420 23))
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
                           (write '(funapp 1427 58))
                           (display "\n")
                           (char<=? x7884 c)))))
                      (if x-cnd7883
                        (letrec*
                         ((x7885 #\9))
                         (begin
                           (write '(funapp 1429 48))
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
                          (write '(funapp 1436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1436 57))
                        (display "\n")
                        (assert x7888))))
                    (g7887
                     (letrec*
                      ((x-cnd7889
                        (begin
                          (write '(funapp 1439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7889
                        #f
                        (letrec*
                         ((x-cnd7890
                           (letrec*
                            ((x7891
                              (begin
                                (write '(funapp 1444 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1444 56))
                              (display "\n")
                              (eqv? x7891 k)))))
                         (if x-cnd7890
                           (begin
                             (write '(funapp 1446 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 1447 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1447 55))
                              (display "\n")
                              (assq k x7892)))))))))
                   g7887)))
               (not (lambda (x) (letrec* ((g7893 (if x #f #t))) g7893)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7894
                     (begin
                       (write '(funapp 1451 50))
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
                          (write '(funapp 1455 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1455 57))
                        (display "\n")
                        (assert x7897))))
                    (g7896
                     (letrec*
                      ((x-cnd7898
                        (begin
                          (write '(funapp 1458 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7898
                        #f
                        (letrec*
                         ((x-cnd7899
                           (letrec*
                            ((x7900
                              (begin
                                (write '(funapp 1463 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1463 55))
                              (display "\n")
                              (eq? x7900 e)))))
                         (if x-cnd7899
                           l
                           (letrec*
                            ((x7901
                              (begin
                                (write '(funapp 1466 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1466 55))
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
                                (write '(funapp 1475 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1475 61))
                              (display "\n")
                              (car x7905)))))
                         (begin
                           (write '(funapp 1476 26))
                           (display "\n")
                           (cdr x7904)))))
                      (begin
                        (write '(funapp 1477 23))
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
                          (write '(funapp 1482 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1482 57))
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
                                  (write '(funapp 1490 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7910
                                0
                                (letrec*
                                 ((x7911
                                   (letrec*
                                    ((x7912
                                      (begin
                                        (write '(funapp 1495 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1495 63))
                                      (display "\n")
                                      (rec x7912)))))
                                 (begin
                                   (write '(funapp 1496 34))
                                   (display "\n")
                                   (+ 1 x7911)))))))
                           g7909))))
                      (letrec*
                       ((g7913
                         (begin
                           (write '(funapp 1498 40))
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
                          (write '(funapp 1503 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1503 58))
                        (display "\n")
                        (assert x7917))))
                    (g7915
                     (letrec*
                      ((x7918
                        (begin
                          (write '(funapp 1504 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1504 58))
                        (display "\n")
                        (assert x7918))))
                    (g7916
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1507 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7919
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1509 52))
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
                          (write '(funapp 1515 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1515 65))
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
                             (write '(funapp 1522 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1522 58))
                           (display "\n")
                           (car x7924)))))
                      (begin
                        (write '(funapp 1523 23))
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
                          (write '(funapp 1528 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1528 57))
                        (display "\n")
                        (assert x7927))))
                    (g7926
                     (letrec*
                      ((x-cnd7928
                        (begin
                          (write '(funapp 1531 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7928
                        #f
                        (letrec*
                         ((x-cnd7929
                           (letrec*
                            ((x7930
                              (begin
                                (write '(funapp 1536 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1536 56))
                              (display "\n")
                              (equal? x7930 k)))))
                         (if x-cnd7929
                           (begin
                             (write '(funapp 1538 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7931
                              (begin
                                (write '(funapp 1539 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1539 55))
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
                          (write '(funapp 1544 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1544 55))
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
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7937))))
                    (g7935
                     (letrec*
                      ((x7938
                        (begin
                          (write '(funapp 1550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1550 58))
                        (display "\n")
                        (assert x7938))))
                    (g7936
                     (letrec*
                      ((x7939
                        (begin
                          (write '(funapp 1551 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1551 63))
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
                          (write '(funapp 1558 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7941
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1560 52))
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
                          (write '(funapp 1566 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1566 62))
                        (display "\n")
                        (assert x7945))))
                    (g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1567 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (assert x7946))))
                    (g7944
                     (letrec*
                      ((x-cnd7947
                        (begin
                          (write '(funapp 1570 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7947
                        #t
                        (letrec*
                         ((x-cnd7948
                           (begin
                             (write '(funapp 1574 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7948
                           (letrec*
                            ((g7949
                              (letrec*
                               ((x7951
                                 (begin
                                   (write '(funapp 1577 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1577 64))
                                 (display "\n")
                                 (f x7951))))
                             (g7950
                              (letrec*
                               ((x7952
                                 (begin
                                   (write '(funapp 1579 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1579 58))
                                 (display "\n")
                                 (for-each f x7952)))))
                            g7950)
                           (begin
                             (write '(funapp 1581 27))
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
                          (write '(funapp 1586 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1586 59))
                        (display "\n")
                        (assert x7955))))
                    (g7954
                     (letrec*
                      ((x-cnd7956
                        (begin
                          (write '(funapp 1588 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7956
                        (begin
                          (write '(funapp 1588 67))
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
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7960))))
                    (g7958
                     (letrec*
                      ((x7961
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7961))))
                    (g7959
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1597 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7962
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1599 52))
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
                                (write '(funapp 1609 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1609 61))
                              (display "\n")
                              (cdr x7966)))))
                         (begin
                           (write '(funapp 1610 26))
                           (display "\n")
                           (cdr x7965)))))
                      (begin
                        (write '(funapp 1611 23))
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
                             (write '(funapp 1619 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1619 58))
                           (display "\n")
                           (abs x7971))))
                       (x7969
                        (begin
                          (write '(funapp 1620 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1621 23))
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
                          (write '(funapp 1627 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1627 57))
                        (display "\n")
                        (assert x7976))))
                    (g7973
                     (letrec*
                      ((x7977
                        (begin
                          (write '(funapp 1628 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1628 63))
                        (display "\n")
                        (assert x7977))))
                    (g7974
                     (letrec*
                      ((x7978
                        (letrec*
                         ((x7979
                           (begin
                             (write '(funapp 1631 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1631 61))
                           (display "\n")
                           (< index x7979)))))
                      (begin
                        (write '(funapp 1632 23))
                        (display "\n")
                        (assert x7978))))
                    (g7975
                     (letrec*
                      ((x-cnd7980
                        (begin
                          (write '(funapp 1635 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7980
                        (begin
                          (write '(funapp 1637 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7982
                           (begin
                             (write '(funapp 1639 34))
                             (display "\n")
                             (cdr l)))
                          (x7981
                           (begin
                             (write '(funapp 1639 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1640 26))
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
                          (write '(funapp 1647 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7984
                        a
                        (letrec*
                         ((x7985
                           (begin
                             (write '(funapp 1650 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1650 57))
                           (display "\n")
                           (gcd b x7985)))))))
                   g7983)))
               (foldl
                (lambda (f z l)
                  (letrec*
                   ((g7986
                     (letrec*
                      ((x-cnd7987
                        (begin
                          (write '(funapp 1657 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7987
                        z
                        (letrec*
                         ((x7989
                           (letrec*
                            ((x7990
                              (begin
                                (write '(funapp 1661 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1661 61))
                              (display "\n")
                              (f z x7990))))
                          (x7988
                           (begin
                             (write '(funapp 1662 34))
                             (display "\n")
                             (cdr l))))
                         (begin
                           (write '(funapp 1663 26))
                           (display "\n")
                           (foldl f x7989 x7988)))))))
                   g7986)))
               (randpos
                (lambda (rand)
                  (letrec*
                   ((g7991
                     (letrec*
                      ((n
                        (begin
                          (write '(funapp 1670 27))
                          (display "\n")
                          (rand))))
                      (letrec*
                       ((g7992
                         (letrec*
                          ((x-cnd7993
                            (begin
                              (write '(funapp 1674 39))
                              (display "\n")
                              (> n 0))))
                          (if x-cnd7993
                            n
                            (begin
                              (write '(funapp 1675 43))
                              (display "\n")
                              (randpos rand))))))
                       g7992))))
                   g7991)))
               (mk-list
                (lambda (rand n)
                  (letrec*
                   ((g7994
                     (letrec*
                      ((x-cnd7995
                        (begin
                          (write '(funapp 1683 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd7995
                        empty
                        (letrec*
                         ((x7998
                           (begin
                             (write '(funapp 1687 34))
                             (display "\n")
                             (randpos rand)))
                          (x7996
                           (letrec*
                            ((x7997
                              (begin
                                (write '(funapp 1689 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1689 55))
                              (display "\n")
                              (mk-list rand x7997)))))
                         (begin
                           (write '(funapp 1690 26))
                           (display "\n")
                           (cons x7998 x7996)))))))
                   g7994)))
               (main
                (lambda (rand n m)
                  (letrec*
                   ((g7999
                     (letrec*
                      ((x8000
                        (begin
                          (write '(funapp 1696 39))
                          (display "\n")
                          (mk-list rand n))))
                      (begin
                        (write '(funapp 1696 58))
                        (display "\n")
                        (foldl / m x8000)))))
                   g7999))))
              (letrec*
               ((g8001
                 (begin
                   (write '(funapp 1700 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1701 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8005
                          (letrec*
                           ((xj7394
                             (begin
                               (write '(funapp 1705 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1705 37))
                                  (display "\n")
                                  'module))))
                            (xk7395
                             (begin
                               (write '(funapp 1705 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1705 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8006
                              (begin
                                (write '(funapp 1708 27))
                                (display "\n")
                                ((lambda (j7399 k7400 f7401)
                                   (letrec*
                                    ((g8007
                                      (lambda (g7396 g7397 g7398)
                                        (letrec*
                                         ((g8008
                                           (letrec*
                                            ((x8009
                                              (letrec*
                                               ((x8012
                                                 (begin
                                                   (write '(funapp 1718 44))
                                                   (display "\n")
                                                   ((lambda (j7402 k7403 f7404)
                                                      (letrec*
                                                       ((g8013
                                                         (lambda ()
                                                           (letrec*
                                                            ((g8014
                                                              (letrec*
                                                               ((x8015
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1725
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (f7404))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1726
                                                                    56))
                                                                 (display "\n")
                                                                 (integer?/c
                                                                  j7402
                                                                  k7403
                                                                  x8015)))))
                                                            g8014))))
                                                       g8013))
                                                    j7399
                                                    k7400
                                                    g7396)))
                                                (x8011
                                                 (begin
                                                   (write '(funapp 1736 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7399
                                                    k7400
                                                    g7397)))
                                                (x8010
                                                 (begin
                                                   (write '(funapp 1738 44))
                                                   (display "\n")
                                                   (integer?/c
                                                    j7399
                                                    k7400
                                                    g7398))))
                                               (begin
                                                 (write '(funapp 1739 42))
                                                 (display "\n")
                                                 (f7401 x8012 x8011 x8010)))))
                                            (begin
                                              (write '(funapp 1740 39))
                                              (display "\n")
                                              (real?/c j7399 k7400 x8009)))))
                                         g8008))))
                                    g8007))
                                 xj7394
                                 xk7395
                                 main))))
                            g8006)))
                         (x8004 (input))
                         (x8003 (input))
                         (x8002 (input)))
                        (begin
                          (write '(funapp 1750 21))
                          (display "\n")
                          (x8005 x8004 x8003 x8002)))))))))
               g8001))))
           g7432))))
       g7416)))
    g7415)))
