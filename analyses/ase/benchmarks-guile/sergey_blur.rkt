(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7394 #t)) g7394)))
    (meta (lambda (v) (letrec* ((g7395 v)) g7395)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7396
          (letrec*
           ((g7397
             (letrec*
              ((x-e7398 lst))
              (letrec*
               ((v1742 x-e7398))
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
                   ((x-cnd7399
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7399
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
           g7397)))
        g7396)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7400 (lambda (v) (letrec* ((g7401 v)) g7401)))) g7400)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7402
          (letrec*
           ((x7403 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7403)))))
        g7402))))
   (letrec*
    ((g7404
      (letrec*
       ((g7405
         (letrec*
          ((>=
            (lambda (x y)
              (letrec*
               ((g7406
                 (letrec*
                  ((x7408
                    (begin
                      (write '(funapp 47 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 47 55))
                    (display "\n")
                    (assert x7408))))
                (g7407
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 50 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7409
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 56 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7410 (if val7244 val7244 #f))) g7410)))))
                   g7409))))
               g7407)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7411
                 (letrec*
                  ((x7413
                    (begin
                      (write '(funapp 63 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 63 55))
                    (display "\n")
                    (assert x7413))))
                (g7412
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 66 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7414
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 72 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7415 (if val7246 val7246 #f))) g7415)))))
                   g7414))))
               g7412)))
           (>
            (lambda (x y)
              (letrec*
               ((g7416
                 (letrec*
                  ((x7418
                    (begin
                      (write '(funapp 79 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 79 55))
                    (display "\n")
                    (assert x7418))))
                (g7417
                 (letrec*
                  ((x7419
                    (begin (write '(funapp 80 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 80 52)) (display "\n") (not x7419)))))
               g7417)))
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
           ((g7420 (begin (write '(funapp 96 19)) (display "\n") '()))
            (g7421
             (letrec*
              ((empty (begin (write '(funapp 99 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7422
                     (lambda (k j lst)
                       (letrec*
                        ((g7423
                          (begin
                            (write '(funapp 107 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7424
                                  (begin
                                    (write '(funapp 109 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7424))
                             lst))))
                        g7423))))
                   g7422)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7425
                     (letrec*
                      ((x-cnd7426
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7426
                        g7263
                        (begin
                          (write '(blame g7261 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7425)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7427
                     (letrec*
                      ((x-cnd7428
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7428
                        g7266
                        (begin
                          (write '(blame g7264 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7427)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7429
                     (letrec*
                      ((x-cnd7430
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7430
                        g7269
                        (begin
                          (write '(blame g7267 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7429)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7431
                     (letrec*
                      ((x-cnd7432
                        (begin
                          (write '(funapp 143 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7433 #t)) g7433)) g7272))))
                      (if x-cnd7432
                        g7272
                        (begin
                          (write '(blame g7270 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7431)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7434
                     (letrec*
                      ((x-cnd7435
                        (begin
                          (write '(funapp 152 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7436 #t)) g7436)) g7275))))
                      (if x-cnd7435
                        g7275
                        (begin
                          (write '(blame g7273 153 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7434)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7437
                     (letrec*
                      ((x-cnd7438
                        (begin
                          (write '(funapp 160 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7438
                        g7278
                        (begin
                          (write '(blame g7276 161 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7437)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x-cnd7440
                        (begin
                          (write '(funapp 169 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7440
                        g7281
                        (begin
                          (write '(blame g7279 170 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7439)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7441
                     (letrec*
                      ((x-cnd7442
                        (begin
                          (write '(funapp 177 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7442
                        g7284
                        (begin
                          (write '(blame g7282 178 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7441)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x-cnd7444
                        (begin
                          (write '(funapp 185 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7444
                        g7287
                        (begin
                          (write '(blame g7285 186 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7443)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7445
                     (lambda (k j v)
                       (letrec*
                        ((g7446
                          (letrec*
                           ((x-cnd7447
                             (begin
                               (write '(funapp 196 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7447
                             (begin
                               (write '(funapp 197 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7446))))
                   g7445)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7448
                     (lambda (k j v)
                       (letrec*
                        ((g7449
                          (letrec*
                           ((x-cnd7450
                             (begin
                               (write '(funapp 208 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7450
                             (begin
                               (write '(funapp 210 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7454
                                (letrec*
                                 ((x7455
                                   (begin
                                     (write '(funapp 214 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 215 34))
                                   (display "\n")
                                   (contract k j x7455))))
                               (x7451
                                (letrec*
                                 ((x7453
                                   (begin
                                     (write '(funapp 218 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7452
                                   (begin
                                     (write '(funapp 218 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 219 34))
                                   (display "\n")
                                   (x7453 k j x7452)))))
                              (begin
                                (write '(funapp 220 31))
                                (display "\n")
                                (orig-cons x7454 x7451)))))))
                        g7449))))
                   g7448)))
               (any? (lambda (v) (letrec* ((g7456 #t)) g7456)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x7458
                        (begin
                          (write '(funapp 227 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 227 55))
                        (display "\n")
                        (not x7458)))))
                   g7457)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x-cnd7460
                        (begin
                          (write '(funapp 235 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7461
                                (letrec*
                                 ((x7462
                                   (begin
                                     (write '(funapp 237 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 237 64))
                                   (display "\n")
                                   (not x7462)))))
                              g7461))
                           g7290))))
                      (if x-cnd7460
                        g7290
                        (begin
                          (write '(blame g7288 242 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7459)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7463
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7464
                          (letrec*
                           ((x-cnd7465
                             (begin
                               (write '(funapp 253 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7466
                                     (begin
                                       (write '(funapp 254 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7466))
                                g7293))))
                           (if x-cnd7465
                             g7293
                             (begin
                               (write '(blame g7291 258 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7464))))
                   g7463)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7467
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7468
                          (letrec*
                           ((x-cnd7469
                             (begin
                               (write '(funapp 270 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7470
                                     (begin
                                       (write '(funapp 271 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7470))
                                g7296))))
                           (if x-cnd7469
                             g7296
                             (begin
                               (write '(blame g7294 275 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7468))))
                   g7467)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7471
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7472
                          (letrec*
                           ((x-cnd7473
                             (begin
                               (write '(funapp 287 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7474
                                     (begin
                                       (write '(funapp 288 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7474))
                                g7299))))
                           (if x-cnd7473
                             g7299
                             (begin
                               (write '(blame g7297 292 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7472))))
                   g7471)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7475
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7476
                          (letrec*
                           ((x-cnd7477
                             (begin
                               (write '(funapp 304 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7478
                                     (begin
                                       (write '(funapp 305 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7478))
                                g7302))))
                           (if x-cnd7477
                             g7302
                             (begin
                               (write '(blame g7300 309 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7476))))
                   g7475)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7479
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7480
                          (letrec*
                           ((x-cnd7481
                             (begin
                               (write '(funapp 321 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7482
                                     (begin
                                       (write '(funapp 322 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7482))
                                g7305))))
                           (if x-cnd7481
                             g7305
                             (begin
                               (write '(blame g7303 326 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7480))))
                   g7479)))
               (meta (lambda (v) (letrec* ((g7483 v)) g7483)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 332 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 332 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7484
                    (begin
                      (write '(funapp 335 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7486
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7487
                                 (letrec*
                                  ((x7488
                                    (letrec*
                                     ((x7490
                                       (begin
                                         (write '(funapp 344 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7489
                                       (begin
                                         (write '(funapp 345 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 346 36))
                                       (display "\n")
                                       (f7312 x7490 x7489)))))
                                  (begin
                                    (write '(funapp 347 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7488)))))
                               g7487))))
                          g7486))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7485
                            (begin
                              (write '(funapp 352 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7485))))))
                  g7484)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 356 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 356 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7491
                    (begin
                      (write '(funapp 359 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7493
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7494
                                 (letrec*
                                  ((x7495
                                    (letrec*
                                     ((x7497
                                       (begin
                                         (write '(funapp 368 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7496
                                       (begin
                                         (write '(funapp 369 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 370 36))
                                       (display "\n")
                                       (f7319 x7497 x7496)))))
                                  (begin
                                    (write '(funapp 371 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7495)))))
                               g7494))))
                          g7493))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7492
                            (begin
                              (write '(funapp 376 53))
                              (display "\n")
                              (orig-- a b))))
                          g7492))))))
                  g7491)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 380 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 380 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7498
                    (begin
                      (write '(funapp 383 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7500
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7501
                                 (letrec*
                                  ((x7502
                                    (letrec*
                                     ((x7504
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7503
                                       (begin
                                         (write '(funapp 393 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 394 36))
                                       (display "\n")
                                       (f7326 x7504 x7503)))))
                                  (begin
                                    (write '(funapp 395 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7502)))))
                               g7501))))
                          g7500))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7499
                            (begin
                              (write '(funapp 400 53))
                              (display "\n")
                              (orig-* a b))))
                          g7499))))))
                  g7498)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 404 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 404 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7505
                    (begin
                      (write '(funapp 407 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7507
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7508
                                 (letrec*
                                  ((x7509
                                    (letrec*
                                     ((x7511
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7510
                                       (begin
                                         (write '(funapp 417 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 418 36))
                                       (display "\n")
                                       (f7333 x7511 x7510)))))
                                  (begin
                                    (write '(funapp 419 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7509)))))
                               g7508))))
                          g7507))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7506
                            (begin
                              (write '(funapp 424 53))
                              (display "\n")
                              (orig-< a b))))
                          g7506))))))
                  g7505)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 428 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 428 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7512
                    (begin
                      (write '(funapp 431 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7514
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7515
                                 (letrec*
                                  ((x7516
                                    (letrec*
                                     ((x7518
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7517
                                       (begin
                                         (write '(funapp 441 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 442 36))
                                       (display "\n")
                                       (f7340 x7518 x7517)))))
                                  (begin
                                    (write '(funapp 443 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7516)))))
                               g7515))))
                          g7514))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7513
                            (begin
                              (write '(funapp 448 53))
                              (display "\n")
                              (orig-> a b))))
                          g7513))))))
                  g7512)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 452 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 452 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7519
                    (begin
                      (write '(funapp 455 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7521
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7522
                                 (letrec*
                                  ((x7523
                                    (letrec*
                                     ((x7525
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7524
                                       (begin
                                         (write '(funapp 465 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 466 36))
                                       (display "\n")
                                       (f7347 x7525 x7524)))))
                                  (begin
                                    (write '(funapp 467 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7523)))))
                               g7522))))
                          g7521))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7520
                            (begin
                              (write '(funapp 472 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7520))))))
                  g7519)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 476 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 476 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7526
                    (begin
                      (write '(funapp 479 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7528
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7529
                                 (letrec*
                                  ((x7530
                                    (letrec*
                                     ((x7532
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7531
                                       (begin
                                         (write '(funapp 489 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 490 36))
                                       (display "\n")
                                       (f7354 x7532 x7531)))))
                                  (begin
                                    (write '(funapp 491 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7530)))))
                               g7529))))
                          g7528))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7527
                            (begin
                              (write '(funapp 496 53))
                              (display "\n")
                              (orig->= a b))))
                          g7527))))))
                  g7526)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 500 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 500 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7533
                    (begin
                      (write '(funapp 503 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7535
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7536
                                 (letrec*
                                  ((x7537
                                    (letrec*
                                     ((x7539
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7538
                                       (begin
                                         (write '(funapp 513 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 514 36))
                                       (display "\n")
                                       (f7361 x7539 x7538)))))
                                  (begin
                                    (write '(funapp 515 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7537)))))
                               g7536))))
                          g7535))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7534
                            (begin
                              (write '(funapp 520 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7534))))))
                  g7533)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 524 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 524 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7540
                    (begin
                      (write '(funapp 527 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7542
                            (lambda (g7364)
                              (letrec*
                               ((g7543
                                 (letrec*
                                  ((x7544
                                    (letrec*
                                     ((x7545
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7367 x7545)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7544)))))
                               g7543))))
                          g7542))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7541
                            (begin
                              (write '(funapp 543 51))
                              (display "\n")
                              (orig-car p))))
                          g7541))))))
                  g7540)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7546
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7548
                            (lambda (g7370)
                              (letrec*
                               ((g7549
                                 (letrec*
                                  ((x7550
                                    (letrec*
                                     ((x7551
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 560 36))
                                       (display "\n")
                                       (f7373 x7551)))))
                                  (begin
                                    (write '(funapp 561 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7550)))))
                               g7549))))
                          g7548))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7547
                            (begin
                              (write '(funapp 566 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7547))))))
                  g7546)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 570 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 570 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7552
                    (begin
                      (write '(funapp 573 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7554
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7555
                                 (letrec*
                                  ((x7556
                                    (letrec*
                                     ((x7558
                                       (begin
                                         (write '(funapp 582 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7557
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7380 x7558 x7557)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7556)))))
                               g7555))))
                          g7554))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7553
                            (begin
                              (write '(funapp 591 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7553))))))
                  g7552)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7559
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7561
                            (lambda (g7383)
                              (letrec*
                               ((g7562
                                 (letrec*
                                  ((x7563
                                    (letrec*
                                     ((x7564
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7386 x7564)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7563)))))
                               g7562))))
                          g7561))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7560
                            (begin
                              (write '(funapp 615 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7560))))))
                  g7559)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7565
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7567
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7568
                                 (letrec*
                                  ((x7569
                                    (letrec*
                                     ((x7571
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7570
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7393 x7571 x7570)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7569)))))
                               g7568))))
                          g7567))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7566
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7566))))))
                  g7565)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7572
                     (if cnd
                       (begin (write '(funapp 645 35)) (display "\n") '())
                       (begin
                         (write '(funapp 645 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7572)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7573
                     (letrec*
                      ((x7574
                        (letrec*
                         ((x7575
                           (begin
                             (write '(funapp 652 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 652 58))
                           (display "\n")
                           (cdr x7575)))))
                      (begin
                        (write '(funapp 653 23))
                        (display "\n")
                        (cdr x7574)))))
                   g7573)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7576
                     (letrec*
                      ((x7579
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 659 62))
                        (display "\n")
                        (assert x7579))))
                    (g7577
                     (letrec*
                      ((x7580
                        (begin
                          (write '(funapp 660 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 660 57))
                        (display "\n")
                        (assert x7580))))
                    (g7578
                     (letrec*
                      ((x-cnd7581
                        (begin
                          (write '(funapp 663 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7581
                        (begin (write '(funapp 665 24)) (display "\n") '())
                        (letrec*
                         ((x7584
                           (letrec*
                            ((x7585
                              (begin
                                (write '(funapp 667 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 667 61))
                              (display "\n")
                              (f x7585))))
                          (x7582
                           (letrec*
                            ((x7583
                              (begin
                                (write '(funapp 668 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 668 61))
                              (display "\n")
                              (map f x7583)))))
                         (begin
                           (write '(funapp 669 26))
                           (display "\n")
                           (cons x7584 x7582)))))))
                   g7578)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7586
                     (letrec*
                      ((x7587
                        (begin
                          (write '(funapp 674 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 674 55))
                        (display "\n")
                        (cdr x7587)))))
                   g7586)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7588
                     (letrec*
                      ((x7589
                        (letrec*
                         ((x7590
                           (letrec*
                            ((x7591
                              (begin
                                (write '(funapp 683 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 683 61))
                              (display "\n")
                              (car x7591)))))
                         (begin
                           (write '(funapp 684 26))
                           (display "\n")
                           (cdr x7590)))))
                      (begin
                        (write '(funapp 685 23))
                        (display "\n")
                        (car x7589)))))
                   g7588)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7592
                     (letrec*
                      ((x7593
                        (letrec*
                         ((x7594
                           (letrec*
                            ((x7595
                              (begin
                                (write '(funapp 694 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 694 61))
                              (display "\n")
                              (cdr x7595)))))
                         (begin
                           (write '(funapp 695 26))
                           (display "\n")
                           (car x7594)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7593)))))
                   g7592)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 702 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 702 60))
                        (display "\n")
                        (assert x7599))))
                    (g7597
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 704 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 704 59))
                        (display "\n")
                        (assert x7600))))
                    (g7598
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
                       ((g7601
                         (begin
                           (write '(funapp 710 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7602 res))
                       g7602))))
                   g7598)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7604
                        (letrec*
                         ((x7605
                           (begin
                             (write '(funapp 718 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 718 58))
                           (display "\n")
                           (cdr x7605)))))
                      (begin
                        (write '(funapp 719 23))
                        (display "\n")
                        (car x7604)))))
                   g7603)))
               (cdaadr
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
                                (write '(funapp 728 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 728 61))
                              (display "\n")
                              (car x7609)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (car x7608)))))
                      (begin
                        (write '(funapp 730 23))
                        (display "\n")
                        (cdr x7607)))))
                   g7606)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 735 57))
                        (display "\n")
                        (assert x7612))))
                    (g7611
                     (letrec*
                      ((x-cnd7613
                        (begin
                          (write '(funapp 738 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7613
                        #f
                        (letrec*
                         ((x-cnd7614
                           (letrec*
                            ((x7615
                              (begin
                                (write '(funapp 743 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 743 56))
                              (display "\n")
                              (eq? x7615 k)))))
                         (if x-cnd7614
                           (begin
                             (write '(funapp 745 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7616
                              (begin
                                (write '(funapp 746 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 746 55))
                              (display "\n")
                              (assq k x7616)))))))))
                   g7611)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 751 60))
                        (display "\n")
                        (= 0 x7618)))))
                   g7617)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 756 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 756 57))
                        (display "\n")
                        (assert x7621))))
                    (g7620
                     (letrec*
                      ((x-cnd7622
                        (begin
                          (write '(funapp 759 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7622
                        ""
                        (letrec*
                         ((x7625
                           (letrec*
                            ((x7626
                              (begin
                                (write '(funapp 764 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 764 55))
                              (display "\n")
                              (char->string x7626))))
                          (x7623
                           (letrec*
                            ((x7624
                              (begin
                                (write '(funapp 766 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 766 55))
                              (display "\n")
                              (list->string x7624)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (string-append x7625 x7623)))))))
                   g7620)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 772 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 772 58))
                        (display "\n")
                        (assert x7630))))
                    (g7628
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 773 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 773 58))
                        (display "\n")
                        (assert x7631))))
                    (g7629
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 776 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7632
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 778 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7632))))
                   g7629)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (letrec*
                         ((x7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 788 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 788 61))
                              (display "\n")
                              (cdr x7636)))))
                         (begin
                           (write '(funapp 789 26))
                           (display "\n")
                           (cdr x7635)))))
                      (begin
                        (write '(funapp 790 23))
                        (display "\n")
                        (cdr x7634)))))
                   g7633)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 795 57))
                        (display "\n")
                        (assert x7640))))
                    (g7638
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 796 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 796 57))
                        (display "\n")
                        (assert x7641))))
                    (g7639
                     (letrec*
                      ((x-cnd7642
                        (begin
                          (write '(funapp 799 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7642
                        x
                        (letrec*
                         ((x7644
                           (begin
                             (write '(funapp 803 34))
                             (display "\n")
                             (cdr x)))
                          (x7643
                           (begin
                             (write '(funapp 803 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (list-tail x7644 x7643)))))))
                   g7639)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7645
                     (begin (write '(funapp 806 49)) (display "\n") '())))
                   g7645)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x-cnd7647
                        (letrec*
                         ((x7648 #\a))
                         (begin
                           (write '(funapp 813 48))
                           (display "\n")
                           (char-ci>=? c x7648)))))
                      (if x-cnd7647
                        (letrec*
                         ((x7649 #\z))
                         (begin
                           (write '(funapp 815 48))
                           (display "\n")
                           (char-ci<=? c x7649)))
                        #f))))
                   g7646)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7651
                           (begin
                             (write '(funapp 824 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 824 62))
                           (display "\n")
                           (= x7651 9)))))
                      (letrec*
                       ((g7652
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7653
                                 (begin
                                   (write '(funapp 832 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 833 32))
                                 (display "\n")
                                 (= x7653 10)))))
                            (letrec*
                             ((g7654
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7655
                                    (begin
                                      (write '(funapp 839 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 840 35))
                                    (display "\n")
                                    (= x7655 32))))))
                             g7654)))))
                       g7652))))
                   g7650)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7657
                        (letrec*
                         ((x7658
                           (begin
                             (write '(funapp 849 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 849 58))
                           (display "\n")
                           (cdr x7658)))))
                      (begin
                        (write '(funapp 850 23))
                        (display "\n")
                        (cdr x7657)))))
                   g7656)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 855 59))
                        (display "\n")
                        (assert x7661))))
                    (g7660
                     (begin (write '(funapp 856 28)) (display "\n") (> x 0))))
                   g7660)))
               ($pc (begin (write '(funapp 858 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7662 #f)) g7662)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 864 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 864 55))
                        (display "\n")
                        (cdr x7664)))))
                   g7663)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 869 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 869 59))
                        (display "\n")
                        (assert x7667))))
                    (g7666
                     (letrec*
                      ((x-cnd7668
                        (begin
                          (write '(funapp 872 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7668
                        (begin
                          (write '(funapp 873 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 873 49))
                          (display "\n")
                          (floor x))))))
                   g7666)))
               ($cmp (begin (write '(funapp 875 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 881 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7670
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7671
                                 (begin
                                   (write '(funapp 889 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7671
                                 (begin
                                   (write '(funapp 890 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7672
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7673
                                       (begin
                                         (write '(funapp 898 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7673
                                       (letrec*
                                        ((x-cnd7674
                                          (begin
                                            (write '(funapp 901 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7674
                                          (begin
                                            (write '(funapp 902 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7675
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7676
                                             (begin
                                               (write '(funapp 911 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7676
                                             (letrec*
                                              ((x-cnd7677
                                                (begin
                                                  (write '(funapp 914 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7677
                                                (letrec*
                                                 ((x-cnd7678
                                                   (letrec*
                                                    ((x7680
                                                      (begin
                                                        (write
                                                         '(funapp 919 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7679
                                                      (begin
                                                        (write
                                                         '(funapp 920 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 921 53))
                                                      (display "\n")
                                                      (equal? x7680 x7679)))))
                                                 (if x-cnd7678
                                                   (letrec*
                                                    ((x7682
                                                      (begin
                                                        (write
                                                         '(funapp 924 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7681
                                                      (begin
                                                        (write
                                                         '(funapp 925 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 926 53))
                                                      (display "\n")
                                                      (equal? x7682 x7681)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7683
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7684
                                                (begin
                                                  (write '(funapp 935 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7684
                                                (letrec*
                                                 ((x-cnd7685
                                                   (begin
                                                     (write '(funapp 938 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7685
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 941 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7686
                                                       (letrec*
                                                        ((x-cnd7687
                                                          (letrec*
                                                           ((x7688
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
                                                             (= x7688 n)))))
                                                        (if x-cnd7687
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7689
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
                                                                    ((g7690
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7691
                                                                           (letrec*
                                                                            ((x7693
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
                                                                             (x7692
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
                                                                               x7693
                                                                               x7692)))))
                                                                         (if x-cnd7691
                                                                           (letrec*
                                                                            ((x7694
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
                                                                               x7694)))
                                                                           #f)))))
                                                                    g7690))))
                                                                g7689))))
                                                           (letrec*
                                                            ((g7695
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   990
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7695))
                                                          #f))))
                                                     g7686))
                                                   #f))
                                                #f)))))
                                         g7683)))))
                                   g7675)))))
                             g7672)))))
                       g7670))))
                   g7669)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7696
                     (letrec*
                      ((x7697
                        (letrec*
                         ((x7698
                           (letrec*
                            ((x7699
                              (begin
                                (write '(funapp 1008 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1008 61))
                              (display "\n")
                              (car x7699)))))
                         (begin
                           (write '(funapp 1009 26))
                           (display "\n")
                           (car x7698)))))
                      (begin
                        (write '(funapp 1010 23))
                        (display "\n")
                        (cdr x7697)))))
                   g7696)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7700
                     (letrec*
                      ((x7701
                        (letrec*
                         ((x7702
                           (letrec*
                            ((x7703
                              (begin
                                (write '(funapp 1019 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1019 61))
                              (display "\n")
                              (cdr x7703)))))
                         (begin
                           (write '(funapp 1020 26))
                           (display "\n")
                           (car x7702)))))
                      (begin
                        (write '(funapp 1021 23))
                        (display "\n")
                        (car x7701)))))
                   g7700)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7704
                     (begin
                       (write '(funapp 1023 53))
                       (display "\n")
                       (eq? x y))))
                   g7704)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7705
                     (letrec*
                      ((x7708
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1028 60))
                        (display "\n")
                        (assert x7708))))
                    (g7706
                     (letrec*
                      ((x7709
                        (begin
                          (write '(funapp 1030 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1030 59))
                        (display "\n")
                        (assert x7709))))
                    (g7707
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
                       ((g7710
                         (begin
                           (write '(funapp 1036 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7711 res))
                       g7711))))
                   g7707)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7712
                     (begin
                       (write '(funapp 1039 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1039 57))
                          (display "\n")
                          '())))))
                   g7712)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7713
                     (letrec*
                      ((x7716
                        (begin
                          (write '(funapp 1043 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1043 58))
                        (display "\n")
                        (assert x7716))))
                    (g7714
                     (letrec*
                      ((x7717
                        (begin
                          (write '(funapp 1044 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1044 58))
                        (display "\n")
                        (assert x7717))))
                    (g7715
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1047 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7718
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1049 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7718))))
                   g7715)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7719
                     (letrec*
                      ((x7720
                        (letrec*
                         ((x7721
                           (begin
                             (write '(funapp 1057 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1057 58))
                           (display "\n")
                           (car x7721)))))
                      (begin
                        (write '(funapp 1058 23))
                        (display "\n")
                        (cdr x7720)))))
                   g7719)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7722
                     (letrec*
                      ((x7723
                        (letrec*
                         ((x7724
                           (letrec*
                            ((x7725
                              (begin
                                (write '(funapp 1067 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1067 61))
                              (display "\n")
                              (cdr x7725)))))
                         (begin
                           (write '(funapp 1068 26))
                           (display "\n")
                           (car x7724)))))
                      (begin
                        (write '(funapp 1069 23))
                        (display "\n")
                        (cdr x7723)))))
                   g7722)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x7727
                        (letrec*
                         ((x7728
                           (begin
                             (write '(funapp 1077 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1077 58))
                           (display "\n")
                           (cdr x7728)))))
                      (begin
                        (write '(funapp 1078 23))
                        (display "\n")
                        (car x7727)))))
                   g7726)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7730
                        (letrec*
                         ((x7731
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (car x7731)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7730)))))
                   g7729)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7732
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1091 58))
                        (display "\n")
                        (assert x7735))))
                    (g7733
                     (letrec*
                      ((x7736
                        (begin
                          (write '(funapp 1092 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1092 58))
                        (display "\n")
                        (assert x7736))))
                    (g7734
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1093 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1093 66))
                        (display "\n")
                        (not x7737)))))
                   g7734)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7739
                        (letrec*
                         ((x7740
                           (letrec*
                            ((x7741
                              (begin
                                (write '(funapp 1103 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1103 61))
                              (display "\n")
                              (car x7741)))))
                         (begin
                           (write '(funapp 1104 26))
                           (display "\n")
                           (car x7740)))))
                      (begin
                        (write '(funapp 1105 23))
                        (display "\n")
                        (car x7739)))))
                   g7738)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1110 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1110 59))
                        (display "\n")
                        (assert x7744))))
                    (g7743
                     (begin (write '(funapp 1111 28)) (display "\n") (< x 0))))
                   g7743)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7745
                     (begin
                       (write '(funapp 1113 53))
                       (display "\n")
                       (memq e l))))
                   g7745)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (letrec*
                         ((x7748
                           (begin
                             (write '(funapp 1119 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1119 58))
                           (display "\n")
                           (car x7748)))))
                      (begin
                        (write '(funapp 1120 23))
                        (display "\n")
                        (car x7747)))))
                   g7746)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7749
                     (begin (write '(funapp 1122 51)) (display "\n") '())))
                   g7749)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1126 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1126 57))
                        (display "\n")
                        (assert x7752))))
                    (g7751
                     (letrec*
                      ((x-cnd7753
                        (begin
                          (write '(funapp 1129 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7753
                        (begin (write '(funapp 1131 24)) (display "\n") '())
                        (letrec*
                         ((x7756
                           (letrec*
                            ((x7757
                              (begin
                                (write '(funapp 1133 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1133 61))
                              (display "\n")
                              (reverse x7757))))
                          (x7754
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (list x7755)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (append x7756 x7754)))))))
                   g7751)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1144 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1144 61))
                              (display "\n")
                              (car x7761)))))
                         (begin
                           (write '(funapp 1145 26))
                           (display "\n")
                           (car x7760)))))
                      (begin
                        (write '(funapp 1146 23))
                        (display "\n")
                        (car x7759)))))
                   g7758)))
               (cddadr
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
                                (write '(funapp 1155 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1155 61))
                              (display "\n")
                              (car x7765)))))
                         (begin
                           (write '(funapp 1156 26))
                           (display "\n")
                           (cdr x7764)))))
                      (begin
                        (write '(funapp 1157 23))
                        (display "\n")
                        (cdr x7763)))))
                   g7762)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 1162 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1162 59))
                        (display "\n")
                        (assert x7768))))
                    (g7767
                     (letrec*
                      ((x7769
                        (begin
                          (write '(funapp 1163 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1163 60))
                        (display "\n")
                        (= 1 x7769)))))
                   g7767)))
               (caadar
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
                                (write '(funapp 1172 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1172 61))
                              (display "\n")
                              (cdr x7773)))))
                         (begin
                           (write '(funapp 1173 26))
                           (display "\n")
                           (car x7772)))))
                      (begin
                        (write '(funapp 1174 23))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 1180 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1180 59))
                        (display "\n")
                        (assert x7777))))
                    (g7775
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1181 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1181 60))
                        (display "\n")
                        (assert x7778))))
                    (g7776
                     (letrec*
                      ((x-cnd7779
                        (begin
                          (write '(funapp 1184 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7779
                        (letrec*
                         ((g7780
                           (begin
                             (write '(funapp 1186 42))
                             (display "\n")
                             (proc))))
                         g7780)
                        (letrec*
                         ((x-cnd7781
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 1189 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1189 58))
                              (display "\n")
                              (null? x7782)))))
                         (if x-cnd7781
                           (letrec*
                            ((g7783
                              (letrec*
                               ((x7784
                                 (begin
                                   (write '(funapp 1193 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1193 61))
                                 (display "\n")
                                 (proc x7784)))))
                            g7783)
                           (letrec*
                            ((x-cnd7785
                              (letrec*
                               ((x7786
                                 (begin
                                   (write '(funapp 1197 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1197 62))
                                 (display "\n")
                                 (null? x7786)))))
                            (if x-cnd7785
                              (letrec*
                               ((g7787
                                 (letrec*
                                  ((x7789
                                    (begin
                                      (write '(funapp 1202 43))
                                      (display "\n")
                                      (car args)))
                                   (x7788
                                    (begin
                                      (write '(funapp 1202 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1203 35))
                                    (display "\n")
                                    (proc x7789 x7788)))))
                               g7787)
                              (letrec*
                               ((x-cnd7790
                                 (letrec*
                                  ((x7791
                                    (begin
                                      (write '(funapp 1208 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1209 35))
                                    (display "\n")
                                    (null? x7791)))))
                               (if x-cnd7790
                                 (letrec*
                                  ((g7792
                                    (letrec*
                                     ((x7795
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (car args)))
                                      (x7794
                                       (begin
                                         (write '(funapp 1215 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7793
                                       (begin
                                         (write '(funapp 1216 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1217 38))
                                       (display "\n")
                                       (proc x7795 x7794 x7793)))))
                                  g7792)
                                 (letrec*
                                  ((x-cnd7796
                                    (letrec*
                                     ((x7797
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1223 38))
                                       (display "\n")
                                       (null? x7797)))))
                                  (if x-cnd7796
                                    (letrec*
                                     ((g7798
                                       (letrec*
                                        ((x7802
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (car args)))
                                         (x7801
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7800
                                          (begin
                                            (write '(funapp 1230 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7799
                                          (begin
                                            (write '(funapp 1231 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1232 41))
                                          (display "\n")
                                          (proc x7802 x7801 x7800 x7799)))))
                                     g7798)
                                    (letrec*
                                     ((x-cnd7803
                                       (letrec*
                                        ((x7804
                                          (letrec*
                                           ((x7805
                                             (begin
                                               (write '(funapp 1239 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1240 44))
                                             (display "\n")
                                             (cdr x7805)))))
                                        (begin
                                          (write '(funapp 1241 41))
                                          (display "\n")
                                          (null? x7804)))))
                                     (if x-cnd7803
                                       (letrec*
                                        ((g7806
                                          (letrec*
                                           ((x7812
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (car args)))
                                            (x7811
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7810
                                             (begin
                                               (write '(funapp 1248 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7809
                                             (begin
                                               (write '(funapp 1249 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7807
                                             (letrec*
                                              ((x7808
                                                (begin
                                                  (write '(funapp 1252 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1253 47))
                                                (display "\n")
                                                (car x7808)))))
                                           (begin
                                             (write '(funapp 1254 44))
                                             (display "\n")
                                             (proc
                                              x7812
                                              x7811
                                              x7810
                                              x7809
                                              x7807)))))
                                        g7806)
                                       (letrec*
                                        ((x-cnd7813
                                          (letrec*
                                           ((x7814
                                             (letrec*
                                              ((x7815
                                                (begin
                                                  (write '(funapp 1266 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1267 47))
                                                (display "\n")
                                                (cddr x7815)))))
                                           (begin
                                             (write '(funapp 1268 44))
                                             (display "\n")
                                             (null? x7814)))))
                                        (if x-cnd7813
                                          (letrec*
                                           ((g7816
                                             (letrec*
                                              ((x7824
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7823
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7822
                                                (begin
                                                  (write '(funapp 1275 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7821
                                                (begin
                                                  (write '(funapp 1276 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7819
                                                (letrec*
                                                 ((x7820
                                                   (begin
                                                     (write '(funapp 1279 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1280 50))
                                                   (display "\n")
                                                   (car x7820))))
                                               (x7817
                                                (letrec*
                                                 ((x7818
                                                   (begin
                                                     (write '(funapp 1283 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1284 50))
                                                   (display "\n")
                                                   (cadr x7818)))))
                                              (begin
                                                (write '(funapp 1285 47))
                                                (display "\n")
                                                (proc
                                                 x7824
                                                 x7823
                                                 x7822
                                                 x7821
                                                 x7819
                                                 x7817)))))
                                           g7816)
                                          (letrec*
                                           ((x-cnd7825
                                             (letrec*
                                              ((x7826
                                                (letrec*
                                                 ((x7827
                                                   (begin
                                                     (write '(funapp 1298 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1299 50))
                                                   (display "\n")
                                                   (cdddr x7827)))))
                                              (begin
                                                (write '(funapp 1300 47))
                                                (display "\n")
                                                (null? x7826)))))
                                           (if x-cnd7825
                                             (letrec*
                                              ((g7828
                                                (letrec*
                                                 ((x7838
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7837
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7836
                                                   (begin
                                                     (write '(funapp 1307 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7835
                                                   (begin
                                                     (write '(funapp 1308 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7833
                                                   (letrec*
                                                    ((x7834
                                                      (begin
                                                        (write
                                                         '(funapp 1311 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1312 53))
                                                      (display "\n")
                                                      (car x7834))))
                                                  (x7831
                                                   (letrec*
                                                    ((x7832
                                                      (begin
                                                        (write
                                                         '(funapp 1315 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1316 53))
                                                      (display "\n")
                                                      (cadr x7832))))
                                                  (x7829
                                                   (letrec*
                                                    ((x7830
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (caddr x7830)))))
                                                 (begin
                                                   (write '(funapp 1321 50))
                                                   (display "\n")
                                                   (proc
                                                    x7838
                                                    x7837
                                                    x7836
                                                    x7835
                                                    x7833
                                                    x7831
                                                    x7829)))))
                                              g7828)
                                             (letrec*
                                              ((g7839
                                                (begin
                                                  (write '(funapp 1332 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7839)))))))))))))))))))
                   g7776)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 1338 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1338 57))
                        (display "\n")
                        (assert x7842))))
                    (g7841
                     (letrec*
                      ((x-cnd7843
                        (begin
                          (write '(funapp 1341 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7843
                        #f
                        (letrec*
                         ((x-cnd7844
                           (letrec*
                            ((x7845
                              (begin
                                (write '(funapp 1346 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1346 55))
                              (display "\n")
                              (equal? x7845 e)))))
                         (if x-cnd7844
                           l
                           (letrec*
                            ((x7846
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1349 55))
                              (display "\n")
                              (member e x7846)))))))))
                   g7841)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7848
                        (letrec*
                         ((x7849
                           (letrec*
                            ((x7850
                              (begin
                                (write '(funapp 1358 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1358 61))
                              (display "\n")
                              (cdr x7850)))))
                         (begin
                           (write '(funapp 1359 26))
                           (display "\n")
                           (cdr x7849)))))
                      (begin
                        (write '(funapp 1360 23))
                        (display "\n")
                        (cdr x7848)))))
                   g7847)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7851
                     (letrec*
                      ((x7852
                        (letrec*
                         ((x7853
                           (letrec*
                            ((x7854
                              (begin
                                (write '(funapp 1369 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1369 61))
                              (display "\n")
                              (cdr x7854)))))
                         (begin
                           (write '(funapp 1370 26))
                           (display "\n")
                           (cdr x7853)))))
                      (begin
                        (write '(funapp 1371 23))
                        (display "\n")
                        (car x7852)))))
                   g7851)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7855
                     (begin
                       (write '(funapp 1373 53))
                       (display "\n")
                       (random 42))))
                   g7855)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 1377 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1377 59))
                        (display "\n")
                        (assert x7858))))
                    (g7857
                     (begin (write '(funapp 1378 28)) (display "\n") (= x 0))))
                   g7857)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1385 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7860
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1387 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7860))))
                   g7859)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7862
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1393 55))
                        (display "\n")
                        (car x7862)))))
                   g7861)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7864
                           (begin
                             (write '(funapp 1403 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7864
                           (letrec*
                            ((x7865
                              (begin
                                (write '(funapp 1405 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1405 55))
                              (display "\n")
                              (list? x7865)))
                           #f))))
                      (letrec*
                       ((g7866
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1408 52))
                             (display "\n")
                             (null? l)))))
                       g7866))))
                   g7863)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x7868
                        (letrec*
                         ((x7869
                           (letrec*
                            ((x7870
                              (begin
                                (write '(funapp 1418 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1418 61))
                              (display "\n")
                              (car x7870)))))
                         (begin
                           (write '(funapp 1419 26))
                           (display "\n")
                           (cdr x7869)))))
                      (begin
                        (write '(funapp 1420 23))
                        (display "\n")
                        (cdr x7868)))))
                   g7867)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x-cnd7872
                        (letrec*
                         ((x7873 #\0))
                         (begin
                           (write '(funapp 1427 58))
                           (display "\n")
                           (char<=? x7873 c)))))
                      (if x-cnd7872
                        (letrec*
                         ((x7874 #\9))
                         (begin
                           (write '(funapp 1429 48))
                           (display "\n")
                           (char<=? c x7874)))
                        #f))))
                   g7871)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7877
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1436 57))
                        (display "\n")
                        (assert x7877))))
                    (g7876
                     (letrec*
                      ((x-cnd7878
                        (begin
                          (write '(funapp 1439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7878
                        #f
                        (letrec*
                         ((x-cnd7879
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 1444 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1444 56))
                              (display "\n")
                              (eqv? x7880 k)))))
                         (if x-cnd7879
                           (begin
                             (write '(funapp 1446 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 1447 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1447 55))
                              (display "\n")
                              (assq k x7881)))))))))
                   g7876)))
               (not (lambda (x) (letrec* ((g7882 (if x #f #t))) g7882)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7883
                     (begin
                       (write '(funapp 1451 50))
                       (display "\n")
                       (append l1 l2))))
                   g7883)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1455 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1455 57))
                        (display "\n")
                        (assert x7886))))
                    (g7885
                     (letrec*
                      ((x-cnd7887
                        (begin
                          (write '(funapp 1458 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7887
                        #f
                        (letrec*
                         ((x-cnd7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1463 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1463 55))
                              (display "\n")
                              (eq? x7889 e)))))
                         (if x-cnd7888
                           l
                           (letrec*
                            ((x7890
                              (begin
                                (write '(funapp 1466 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1466 55))
                              (display "\n")
                              (memq e x7890)))))))))
                   g7885)))
               (cadaar
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
                                (write '(funapp 1475 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1475 61))
                              (display "\n")
                              (car x7894)))))
                         (begin
                           (write '(funapp 1476 26))
                           (display "\n")
                           (cdr x7893)))))
                      (begin
                        (write '(funapp 1477 23))
                        (display "\n")
                        (car x7892)))))
                   g7891)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7897
                        (begin
                          (write '(funapp 1482 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1482 57))
                        (display "\n")
                        (assert x7897))))
                    (g7896
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7898
                             (letrec*
                              ((x-cnd7899
                                (begin
                                  (write '(funapp 1490 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7899
                                0
                                (letrec*
                                 ((x7900
                                   (letrec*
                                    ((x7901
                                      (begin
                                        (write '(funapp 1495 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1495 63))
                                      (display "\n")
                                      (rec x7901)))))
                                 (begin
                                   (write '(funapp 1496 34))
                                   (display "\n")
                                   (+ 1 x7900)))))))
                           g7898))))
                      (letrec*
                       ((g7902
                         (begin
                           (write '(funapp 1498 40))
                           (display "\n")
                           (rec l))))
                       g7902))))
                   g7896)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 1503 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1503 58))
                        (display "\n")
                        (assert x7906))))
                    (g7904
                     (letrec*
                      ((x7907
                        (begin
                          (write '(funapp 1504 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1504 58))
                        (display "\n")
                        (assert x7907))))
                    (g7905
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1507 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7908
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1509 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7908))))
                   g7905)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 1515 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1515 65))
                        (display "\n")
                        (not x7910)))))
                   g7909)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7912
                        (letrec*
                         ((x7913
                           (begin
                             (write '(funapp 1522 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1522 58))
                           (display "\n")
                           (car x7913)))))
                      (begin
                        (write '(funapp 1523 23))
                        (display "\n")
                        (cdr x7912)))))
                   g7911)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7914
                     (letrec*
                      ((x7916
                        (begin
                          (write '(funapp 1528 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1528 57))
                        (display "\n")
                        (assert x7916))))
                    (g7915
                     (letrec*
                      ((x-cnd7917
                        (begin
                          (write '(funapp 1531 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7917
                        #f
                        (letrec*
                         ((x-cnd7918
                           (letrec*
                            ((x7919
                              (begin
                                (write '(funapp 1536 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1536 56))
                              (display "\n")
                              (equal? x7919 k)))))
                         (if x-cnd7918
                           (begin
                             (write '(funapp 1538 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7920
                              (begin
                                (write '(funapp 1539 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1539 55))
                              (display "\n")
                              (assoc k x7920)))))))))
                   g7915)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7922
                        (begin
                          (write '(funapp 1544 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1544 55))
                        (display "\n")
                        (car x7922)))))
                   g7921)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7926
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7926))))
                    (g7924
                     (letrec*
                      ((x7927
                        (begin
                          (write '(funapp 1550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1550 58))
                        (display "\n")
                        (assert x7927))))
                    (g7925
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1551 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1551 63))
                        (display "\n")
                        (not x7928)))))
                   g7925)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1558 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7930
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1560 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7930))))
                   g7929)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7931
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1566 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1566 62))
                        (display "\n")
                        (assert x7934))))
                    (g7932
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1567 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (assert x7935))))
                    (g7933
                     (letrec*
                      ((x-cnd7936
                        (begin
                          (write '(funapp 1570 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7936
                        #t
                        (letrec*
                         ((x-cnd7937
                           (begin
                             (write '(funapp 1574 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7937
                           (letrec*
                            ((g7938
                              (letrec*
                               ((x7940
                                 (begin
                                   (write '(funapp 1577 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1577 64))
                                 (display "\n")
                                 (f x7940))))
                             (g7939
                              (letrec*
                               ((x7941
                                 (begin
                                   (write '(funapp 1579 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1579 58))
                                 (display "\n")
                                 (for-each f x7941)))))
                            g7939)
                           (begin
                             (write '(funapp 1581 27))
                             (display "\n")
                             '())))))))
                   g7933)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7942
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1586 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1586 59))
                        (display "\n")
                        (assert x7944))))
                    (g7943
                     (letrec*
                      ((x-cnd7945
                        (begin
                          (write '(funapp 1588 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7945
                        (begin
                          (write '(funapp 1588 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7943)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7946
                     (letrec*
                      ((x7949
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7949))))
                    (g7947
                     (letrec*
                      ((x7950
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7950))))
                    (g7948
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1597 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7951
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1599 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7951))))
                   g7948)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7952
                     (letrec*
                      ((x7953
                        (letrec*
                         ((x7954
                           (letrec*
                            ((x7955
                              (begin
                                (write '(funapp 1609 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1609 61))
                              (display "\n")
                              (cdr x7955)))))
                         (begin
                           (write '(funapp 1610 26))
                           (display "\n")
                           (cdr x7954)))))
                      (begin
                        (write '(funapp 1611 23))
                        (display "\n")
                        (car x7953)))))
                   g7952)))
               (newline (lambda () (letrec* ((g7956 #f)) g7956)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7957
                     (letrec*
                      ((x7959
                        (letrec*
                         ((x7960
                           (begin
                             (write '(funapp 1619 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1619 58))
                           (display "\n")
                           (abs x7960))))
                       (x7958
                        (begin
                          (write '(funapp 1620 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1621 23))
                        (display "\n")
                        (/ x7959 x7958)))))
                   g7957)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7965
                        (begin
                          (write '(funapp 1627 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1627 57))
                        (display "\n")
                        (assert x7965))))
                    (g7962
                     (letrec*
                      ((x7966
                        (begin
                          (write '(funapp 1628 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1628 63))
                        (display "\n")
                        (assert x7966))))
                    (g7963
                     (letrec*
                      ((x7967
                        (letrec*
                         ((x7968
                           (begin
                             (write '(funapp 1631 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1631 61))
                           (display "\n")
                           (< index x7968)))))
                      (begin
                        (write '(funapp 1632 23))
                        (display "\n")
                        (assert x7967))))
                    (g7964
                     (letrec*
                      ((x-cnd7969
                        (begin
                          (write '(funapp 1635 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7969
                        (begin
                          (write '(funapp 1637 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7971
                           (begin
                             (write '(funapp 1639 34))
                             (display "\n")
                             (cdr l)))
                          (x7970
                           (begin
                             (write '(funapp 1639 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1640 26))
                           (display "\n")
                           (list-ref x7971 x7970)))))))
                   g7964)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7972
                     (letrec*
                      ((x-cnd7973
                        (begin
                          (write '(funapp 1647 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7973
                        a
                        (letrec*
                         ((x7974
                           (begin
                             (write '(funapp 1650 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1650 57))
                           (display "\n")
                           (gcd b x7974)))))))
                   g7972)))
               (id (lambda (x) (letrec* ((g7975 x)) g7975)))
               (blur (lambda (y) (letrec* ((g7976 y)) g7976)))
               (lp
                (lambda (a)
                  (letrec*
                   ((g7977
                     (lambda (n)
                       (letrec*
                        ((g7978
                          (letrec*
                           ((x-cnd7979
                             (begin
                               (write '(funapp 1662 40))
                               (display "\n")
                               (zero? n))))
                           (if x-cnd7979
                             (begin
                               (write '(funapp 1664 30))
                               (display "\n")
                               (id a))
                             (letrec*
                              ((r
                                (letrec*
                                 ((x7980
                                   (begin
                                     (write '(funapp 1666 52))
                                     (display "\n")
                                     (blur id))))
                                 (begin
                                   (write '(funapp 1666 64))
                                   (display "\n")
                                   (x7980 #t))))
                               (s
                                (letrec*
                                 ((x7981
                                   (begin
                                     (write '(funapp 1667 52))
                                     (display "\n")
                                     (blur id))))
                                 (begin
                                   (write '(funapp 1667 64))
                                   (display "\n")
                                   (x7981 #f)))))
                              (letrec*
                               ((g7982
                                 (letrec*
                                  ((x7983
                                    (letrec*
                                     ((x7985
                                       (letrec*
                                        ((x7986
                                          (begin
                                            (write '(funapp 1674 57))
                                            (display "\n")
                                            (blur lp))))
                                        (begin
                                          (write '(funapp 1674 69))
                                          (display "\n")
                                          (x7986 s))))
                                      (x7984
                                       (begin
                                         (write '(funapp 1675 46))
                                         (display "\n")
                                         (sub1 n))))
                                     (begin
                                       (write '(funapp 1676 38))
                                       (display "\n")
                                       (x7985 x7984)))))
                                  (begin
                                    (write '(funapp 1677 35))
                                    (display "\n")
                                    (not x7983)))))
                               g7982))))))
                        g7978))))
                   g7977))))
              (letrec*
               ((g7987
                 (letrec*
                  ((x7988
                    (begin (write '(funapp 1682 41)) (display "\n") (lp #f))))
                  (begin (write '(funapp 1682 51)) (display "\n") (x7988 2)))))
               g7987))))
           g7421))))
       g7405)))
    g7404)))
