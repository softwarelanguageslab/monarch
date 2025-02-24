(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (define (loc x) x)
  (set! *random-state*
    (begin (write '(funapp 6 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 7 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7412 #t)) g7412)))
    (meta (lambda (v) (letrec* ((g7413 v)) g7413)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7414
          (letrec*
           ((g7415
             (letrec*
              ((x-e7416 lst))
              (letrec*
               ((v1742 x-e7416))
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
                   ((x-cnd7417
                     (begin
                       (write '(funapp 27 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7417
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
           g7415)))
        g7414)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7418 (lambda (v) (letrec* ((g7419 v)) g7419)))) g7418)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7420
          (letrec*
           ((x7421 (begin (write '(funapp 38 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 38 52)) (display "\n") (not x7421)))))
        g7420))))
   (letrec*
    ((g7422
      (letrec*
       ((g7423
         (letrec*
          ((>=
            (lambda (x y)
              (letrec*
               ((g7424
                 (letrec*
                  ((x7426
                    (begin
                      (write '(funapp 47 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 47 55))
                    (display "\n")
                    (assert x7426))))
                (g7425
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 50 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7427
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 56 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7428 (if val7244 val7244 #f))) g7428)))))
                   g7427))))
               g7425)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7429
                 (letrec*
                  ((x7431
                    (begin
                      (write '(funapp 63 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 63 55))
                    (display "\n")
                    (assert x7431))))
                (g7430
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 66 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7432
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 72 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7433 (if val7246 val7246 #f))) g7433)))))
                   g7432))))
               g7430)))
           (>
            (lambda (x y)
              (letrec*
               ((g7434
                 (letrec*
                  ((x7436
                    (begin
                      (write '(funapp 79 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 79 55))
                    (display "\n")
                    (assert x7436))))
                (g7435
                 (letrec*
                  ((x7437
                    (begin (write '(funapp 80 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 80 52)) (display "\n") (not x7437)))))
               g7435)))
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
           ((g7438 (begin (write '(funapp 96 19)) (display "\n") '()))
            (g7439
             (letrec*
              ((empty (begin (write '(funapp 99 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7440
                     (lambda (k j lst)
                       (letrec*
                        ((g7441
                          (begin
                            (write '(funapp 107 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7442
                                  (begin
                                    (write '(funapp 109 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7442))
                             lst))))
                        g7441))))
                   g7440)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x-cnd7444
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7444
                        g7263
                        (begin
                          (write '(blame g7261 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7443)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x-cnd7446
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7446
                        g7266
                        (begin
                          (write '(blame g7264 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7445)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7448
                        g7269
                        (begin
                          (write '(blame g7267 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7447)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 143 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7451 #t)) g7451)) g7272))))
                      (if x-cnd7450
                        g7272
                        (begin
                          (write '(blame g7270 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7449)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 152 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7454 #t)) g7454)) g7275))))
                      (if x-cnd7453
                        g7275
                        (begin
                          (write '(blame g7273 153 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7452)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x-cnd7456
                        (begin
                          (write '(funapp 160 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7456
                        g7278
                        (begin
                          (write '(blame g7276 161 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7455)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 169 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7458
                        g7281
                        (begin
                          (write '(blame g7279 170 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7457)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x-cnd7460
                        (begin
                          (write '(funapp 177 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7460
                        g7284
                        (begin
                          (write '(blame g7282 178 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7459)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x-cnd7462
                        (begin
                          (write '(funapp 185 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7462
                        g7287
                        (begin
                          (write '(blame g7285 186 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
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
                               (write '(funapp 196 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7465
                             (begin
                               (write '(funapp 197 42))
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
                               (write '(funapp 208 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7468
                             (begin
                               (write '(funapp 210 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7472
                                (letrec*
                                 ((x7473
                                   (begin
                                     (write '(funapp 214 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 215 34))
                                   (display "\n")
                                   (contract k j x7473))))
                               (x7469
                                (letrec*
                                 ((x7471
                                   (begin
                                     (write '(funapp 218 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7470
                                   (begin
                                     (write '(funapp 218 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 219 34))
                                   (display "\n")
                                   (x7471 k j x7470)))))
                              (begin
                                (write '(funapp 220 31))
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
                          (write '(funapp 227 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 227 55))
                        (display "\n")
                        (not x7476)))))
                   g7475)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7477
                     (letrec*
                      ((x-cnd7478
                        (begin
                          (write '(funapp 235 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7479
                                (letrec*
                                 ((x7480
                                   (begin
                                     (write '(funapp 237 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 237 64))
                                   (display "\n")
                                   (not x7480)))))
                              g7479))
                           g7290))))
                      (if x-cnd7478
                        g7290
                        (begin
                          (write '(blame g7288 242 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7477)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7481
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7482
                          (letrec*
                           ((x-cnd7483
                             (begin
                               (write '(funapp 253 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7484
                                     (begin
                                       (write '(funapp 254 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7484))
                                g7293))))
                           (if x-cnd7483
                             g7293
                             (begin
                               (write '(blame g7291 258 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7482))))
                   g7481)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7485
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7486
                          (letrec*
                           ((x-cnd7487
                             (begin
                               (write '(funapp 270 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7488
                                     (begin
                                       (write '(funapp 271 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7488))
                                g7296))))
                           (if x-cnd7487
                             g7296
                             (begin
                               (write '(blame g7294 275 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7486))))
                   g7485)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7489
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7490
                          (letrec*
                           ((x-cnd7491
                             (begin
                               (write '(funapp 287 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7492
                                     (begin
                                       (write '(funapp 288 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7492))
                                g7299))))
                           (if x-cnd7491
                             g7299
                             (begin
                               (write '(blame g7297 292 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7490))))
                   g7489)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7493
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7494
                          (letrec*
                           ((x-cnd7495
                             (begin
                               (write '(funapp 304 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7496
                                     (begin
                                       (write '(funapp 305 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7496))
                                g7302))))
                           (if x-cnd7495
                             g7302
                             (begin
                               (write '(blame g7300 309 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7494))))
                   g7493)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7497
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7498
                          (letrec*
                           ((x-cnd7499
                             (begin
                               (write '(funapp 321 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7500
                                     (begin
                                       (write '(funapp 322 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7500))
                                g7305))))
                           (if x-cnd7499
                             g7305
                             (begin
                               (write '(blame g7303 326 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7498))))
                   g7497)))
               (meta (lambda (v) (letrec* ((g7501 v)) g7501)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 332 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 332 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7502
                    (begin
                      (write '(funapp 335 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7504
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7505
                                 (letrec*
                                  ((x7506
                                    (letrec*
                                     ((x7508
                                       (begin
                                         (write '(funapp 344 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7507
                                       (begin
                                         (write '(funapp 345 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 346 36))
                                       (display "\n")
                                       (f7312 x7508 x7507)))))
                                  (begin
                                    (write '(funapp 347 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7506)))))
                               g7505))))
                          g7504))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7503
                            (begin
                              (write '(funapp 352 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7503))))))
                  g7502)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 356 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 356 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7509
                    (begin
                      (write '(funapp 359 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7511
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7512
                                 (letrec*
                                  ((x7513
                                    (letrec*
                                     ((x7515
                                       (begin
                                         (write '(funapp 368 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7514
                                       (begin
                                         (write '(funapp 369 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 370 36))
                                       (display "\n")
                                       (f7319 x7515 x7514)))))
                                  (begin
                                    (write '(funapp 371 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7513)))))
                               g7512))))
                          g7511))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7510
                            (begin
                              (write '(funapp 376 53))
                              (display "\n")
                              (orig-- a b))))
                          g7510))))))
                  g7509)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 380 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 380 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7516
                    (begin
                      (write '(funapp 383 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7518
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7519
                                 (letrec*
                                  ((x7520
                                    (letrec*
                                     ((x7522
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7521
                                       (begin
                                         (write '(funapp 393 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 394 36))
                                       (display "\n")
                                       (f7326 x7522 x7521)))))
                                  (begin
                                    (write '(funapp 395 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7520)))))
                               g7519))))
                          g7518))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7517
                            (begin
                              (write '(funapp 400 53))
                              (display "\n")
                              (orig-* a b))))
                          g7517))))))
                  g7516)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 404 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 404 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7523
                    (begin
                      (write '(funapp 407 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7525
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7526
                                 (letrec*
                                  ((x7527
                                    (letrec*
                                     ((x7529
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7528
                                       (begin
                                         (write '(funapp 417 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 418 36))
                                       (display "\n")
                                       (f7333 x7529 x7528)))))
                                  (begin
                                    (write '(funapp 419 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7527)))))
                               g7526))))
                          g7525))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7524
                            (begin
                              (write '(funapp 424 53))
                              (display "\n")
                              (orig-< a b))))
                          g7524))))))
                  g7523)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 428 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 428 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7530
                    (begin
                      (write '(funapp 431 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7532
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7533
                                 (letrec*
                                  ((x7534
                                    (letrec*
                                     ((x7536
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7535
                                       (begin
                                         (write '(funapp 441 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 442 36))
                                       (display "\n")
                                       (f7340 x7536 x7535)))))
                                  (begin
                                    (write '(funapp 443 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7534)))))
                               g7533))))
                          g7532))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7531
                            (begin
                              (write '(funapp 448 53))
                              (display "\n")
                              (orig-> a b))))
                          g7531))))))
                  g7530)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 452 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 452 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7537
                    (begin
                      (write '(funapp 455 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7539
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7540
                                 (letrec*
                                  ((x7541
                                    (letrec*
                                     ((x7543
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7542
                                       (begin
                                         (write '(funapp 465 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 466 36))
                                       (display "\n")
                                       (f7347 x7543 x7542)))))
                                  (begin
                                    (write '(funapp 467 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7541)))))
                               g7540))))
                          g7539))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7538
                            (begin
                              (write '(funapp 472 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7538))))))
                  g7537)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 476 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 476 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7544
                    (begin
                      (write '(funapp 479 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7546
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7547
                                 (letrec*
                                  ((x7548
                                    (letrec*
                                     ((x7550
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7549
                                       (begin
                                         (write '(funapp 489 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 490 36))
                                       (display "\n")
                                       (f7354 x7550 x7549)))))
                                  (begin
                                    (write '(funapp 491 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7548)))))
                               g7547))))
                          g7546))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7545
                            (begin
                              (write '(funapp 496 53))
                              (display "\n")
                              (orig->= a b))))
                          g7545))))))
                  g7544)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 500 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 500 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7551
                    (begin
                      (write '(funapp 503 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7553
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7554
                                 (letrec*
                                  ((x7555
                                    (letrec*
                                     ((x7557
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7556
                                       (begin
                                         (write '(funapp 513 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 514 36))
                                       (display "\n")
                                       (f7361 x7557 x7556)))))
                                  (begin
                                    (write '(funapp 515 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7555)))))
                               g7554))))
                          g7553))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7552
                            (begin
                              (write '(funapp 520 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7552))))))
                  g7551)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 524 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 524 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7558
                    (begin
                      (write '(funapp 527 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7560
                            (lambda (g7364)
                              (letrec*
                               ((g7561
                                 (letrec*
                                  ((x7562
                                    (letrec*
                                     ((x7563
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7367 x7563)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7562)))))
                               g7561))))
                          g7560))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7559
                            (begin
                              (write '(funapp 543 51))
                              (display "\n")
                              (orig-car p))))
                          g7559))))))
                  g7558)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7564
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7566
                            (lambda (g7370)
                              (letrec*
                               ((g7567
                                 (letrec*
                                  ((x7568
                                    (letrec*
                                     ((x7569
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 560 36))
                                       (display "\n")
                                       (f7373 x7569)))))
                                  (begin
                                    (write '(funapp 561 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7568)))))
                               g7567))))
                          g7566))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7565
                            (begin
                              (write '(funapp 566 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7565))))))
                  g7564)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 570 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 570 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7570
                    (begin
                      (write '(funapp 573 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7572
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7573
                                 (letrec*
                                  ((x7574
                                    (letrec*
                                     ((x7576
                                       (begin
                                         (write '(funapp 582 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7575
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7380 x7576 x7575)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7574)))))
                               g7573))))
                          g7572))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7571
                            (begin
                              (write '(funapp 591 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7571))))))
                  g7570)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7577
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7579
                            (lambda (g7383)
                              (letrec*
                               ((g7580
                                 (letrec*
                                  ((x7581
                                    (letrec*
                                     ((x7582
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7386 x7582)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7581)))))
                               g7580))))
                          g7579))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7578
                            (begin
                              (write '(funapp 615 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7578))))))
                  g7577)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7583
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7585
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7586
                                 (letrec*
                                  ((x7587
                                    (letrec*
                                     ((x7589
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7588
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7393 x7589 x7588)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7587)))))
                               g7586))))
                          g7585))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7584
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7584))))))
                  g7583)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7590
                     (if cnd
                       (begin (write '(funapp 645 35)) (display "\n") '())
                       (begin
                         (write '(funapp 645 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7590)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7591
                     (letrec*
                      ((x7592
                        (letrec*
                         ((x7593
                           (begin
                             (write '(funapp 652 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 652 58))
                           (display "\n")
                           (cdr x7593)))))
                      (begin
                        (write '(funapp 653 23))
                        (display "\n")
                        (cdr x7592)))))
                   g7591)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 659 62))
                        (display "\n")
                        (assert x7597))))
                    (g7595
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 660 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 660 57))
                        (display "\n")
                        (assert x7598))))
                    (g7596
                     (letrec*
                      ((x-cnd7599
                        (begin
                          (write '(funapp 663 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7599
                        (begin (write '(funapp 665 24)) (display "\n") '())
                        (letrec*
                         ((x7602
                           (letrec*
                            ((x7603
                              (begin
                                (write '(funapp 667 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 667 61))
                              (display "\n")
                              (f x7603))))
                          (x7600
                           (letrec*
                            ((x7601
                              (begin
                                (write '(funapp 668 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 668 61))
                              (display "\n")
                              (map f x7601)))))
                         (begin
                           (write '(funapp 669 26))
                           (display "\n")
                           (cons x7602 x7600)))))))
                   g7596)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7605
                        (begin
                          (write '(funapp 674 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 674 55))
                        (display "\n")
                        (cdr x7605)))))
                   g7604)))
               (cadadr
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
                                (write '(funapp 683 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 683 61))
                              (display "\n")
                              (car x7609)))))
                         (begin
                           (write '(funapp 684 26))
                           (display "\n")
                           (cdr x7608)))))
                      (begin
                        (write '(funapp 685 23))
                        (display "\n")
                        (car x7607)))))
                   g7606)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7611
                        (letrec*
                         ((x7612
                           (letrec*
                            ((x7613
                              (begin
                                (write '(funapp 694 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 694 61))
                              (display "\n")
                              (cdr x7613)))))
                         (begin
                           (write '(funapp 695 26))
                           (display "\n")
                           (car x7612)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7611)))))
                   g7610)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 702 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 702 60))
                        (display "\n")
                        (assert x7617))))
                    (g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 704 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 704 59))
                        (display "\n")
                        (assert x7618))))
                    (g7616
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
                       ((g7619
                         (begin
                           (write '(funapp 710 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7620 res))
                       g7620))))
                   g7616)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7622
                        (letrec*
                         ((x7623
                           (begin
                             (write '(funapp 718 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 718 58))
                           (display "\n")
                           (cdr x7623)))))
                      (begin
                        (write '(funapp 719 23))
                        (display "\n")
                        (car x7622)))))
                   g7621)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7625
                        (letrec*
                         ((x7626
                           (letrec*
                            ((x7627
                              (begin
                                (write '(funapp 728 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 728 61))
                              (display "\n")
                              (car x7627)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (car x7626)))))
                      (begin
                        (write '(funapp 730 23))
                        (display "\n")
                        (cdr x7625)))))
                   g7624)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 735 57))
                        (display "\n")
                        (assert x7630))))
                    (g7629
                     (letrec*
                      ((x-cnd7631
                        (begin
                          (write '(funapp 738 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7631
                        #f
                        (letrec*
                         ((x-cnd7632
                           (letrec*
                            ((x7633
                              (begin
                                (write '(funapp 743 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 743 56))
                              (display "\n")
                              (eq? x7633 k)))))
                         (if x-cnd7632
                           (begin
                             (write '(funapp 745 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 746 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 746 55))
                              (display "\n")
                              (assq k x7634)))))))))
                   g7629)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 751 60))
                        (display "\n")
                        (= 0 x7636)))))
                   g7635)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 756 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 756 57))
                        (display "\n")
                        (assert x7639))))
                    (g7638
                     (letrec*
                      ((x-cnd7640
                        (begin
                          (write '(funapp 759 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7640
                        ""
                        (letrec*
                         ((x7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 764 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 764 55))
                              (display "\n")
                              (char->string x7644))))
                          (x7641
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 766 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 766 55))
                              (display "\n")
                              (list->string x7642)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (string-append x7643 x7641)))))))
                   g7638)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 772 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 772 58))
                        (display "\n")
                        (assert x7648))))
                    (g7646
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 773 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 773 58))
                        (display "\n")
                        (assert x7649))))
                    (g7647
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 776 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7650
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 778 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7650))))
                   g7647)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7652
                        (letrec*
                         ((x7653
                           (letrec*
                            ((x7654
                              (begin
                                (write '(funapp 788 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 788 61))
                              (display "\n")
                              (cdr x7654)))))
                         (begin
                           (write '(funapp 789 26))
                           (display "\n")
                           (cdr x7653)))))
                      (begin
                        (write '(funapp 790 23))
                        (display "\n")
                        (cdr x7652)))))
                   g7651)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 795 57))
                        (display "\n")
                        (assert x7658))))
                    (g7656
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 796 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 796 57))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((x-cnd7660
                        (begin
                          (write '(funapp 799 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7660
                        x
                        (letrec*
                         ((x7662
                           (begin
                             (write '(funapp 803 34))
                             (display "\n")
                             (cdr x)))
                          (x7661
                           (begin
                             (write '(funapp 803 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (list-tail x7662 x7661)))))))
                   g7657)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7663
                     (begin (write '(funapp 806 49)) (display "\n") '())))
                   g7663)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x-cnd7665
                        (letrec*
                         ((x7666 #\a))
                         (begin
                           (write '(funapp 813 48))
                           (display "\n")
                           (char-ci>=? c x7666)))))
                      (if x-cnd7665
                        (letrec*
                         ((x7667 #\z))
                         (begin
                           (write '(funapp 815 48))
                           (display "\n")
                           (char-ci<=? c x7667)))
                        #f))))
                   g7664)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7669
                           (begin
                             (write '(funapp 824 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 824 62))
                           (display "\n")
                           (= x7669 9)))))
                      (letrec*
                       ((g7670
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7671
                                 (begin
                                   (write '(funapp 832 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 833 32))
                                 (display "\n")
                                 (= x7671 10)))))
                            (letrec*
                             ((g7672
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7673
                                    (begin
                                      (write '(funapp 839 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 840 35))
                                    (display "\n")
                                    (= x7673 32))))))
                             g7672)))))
                       g7670))))
                   g7668)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7675
                        (letrec*
                         ((x7676
                           (begin
                             (write '(funapp 849 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 849 58))
                           (display "\n")
                           (cdr x7676)))))
                      (begin
                        (write '(funapp 850 23))
                        (display "\n")
                        (cdr x7675)))))
                   g7674)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7677
                     (letrec*
                      ((x7679
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 855 59))
                        (display "\n")
                        (assert x7679))))
                    (g7678
                     (begin (write '(funapp 856 28)) (display "\n") (> x 0))))
                   g7678)))
               ($pc (begin (write '(funapp 858 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7680 #f)) g7680)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7681
                     (letrec*
                      ((x7682
                        (begin
                          (write '(funapp 864 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 864 55))
                        (display "\n")
                        (cdr x7682)))))
                   g7681)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7683
                     (letrec*
                      ((x7685
                        (begin
                          (write '(funapp 869 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 869 59))
                        (display "\n")
                        (assert x7685))))
                    (g7684
                     (letrec*
                      ((x-cnd7686
                        (begin
                          (write '(funapp 872 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7686
                        (begin
                          (write '(funapp 873 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 873 49))
                          (display "\n")
                          (floor x))))))
                   g7684)))
               ($cmp (begin (write '(funapp 875 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7687
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 881 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7688
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7689
                                 (begin
                                   (write '(funapp 889 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7689
                                 (begin
                                   (write '(funapp 890 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7690
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7691
                                       (begin
                                         (write '(funapp 898 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7691
                                       (letrec*
                                        ((x-cnd7692
                                          (begin
                                            (write '(funapp 901 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7692
                                          (begin
                                            (write '(funapp 902 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7693
                                     (if val7252
                                       val7252
                                       (letrec*
                                        ((val7253
                                          (letrec*
                                           ((x-cnd7694
                                             (begin
                                               (write '(funapp 911 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7694
                                             (letrec*
                                              ((x-cnd7695
                                                (begin
                                                  (write '(funapp 914 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7695
                                                (letrec*
                                                 ((x-cnd7696
                                                   (letrec*
                                                    ((x7698
                                                      (begin
                                                        (write
                                                         '(funapp 919 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7697
                                                      (begin
                                                        (write
                                                         '(funapp 920 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 921 53))
                                                      (display "\n")
                                                      (equal? x7698 x7697)))))
                                                 (if x-cnd7696
                                                   (letrec*
                                                    ((x7700
                                                      (begin
                                                        (write
                                                         '(funapp 924 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7699
                                                      (begin
                                                        (write
                                                         '(funapp 925 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 926 53))
                                                      (display "\n")
                                                      (equal? x7700 x7699)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7701
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7702
                                                (begin
                                                  (write '(funapp 935 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7702
                                                (letrec*
                                                 ((x-cnd7703
                                                   (begin
                                                     (write '(funapp 938 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7703
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 941 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7704
                                                       (letrec*
                                                        ((x-cnd7705
                                                          (letrec*
                                                           ((x7706
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
                                                             (= x7706 n)))))
                                                        (if x-cnd7705
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7707
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
                                                                    ((g7708
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7709
                                                                           (letrec*
                                                                            ((x7711
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
                                                                             (x7710
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
                                                                               x7711
                                                                               x7710)))))
                                                                         (if x-cnd7709
                                                                           (letrec*
                                                                            ((x7712
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
                                                                               x7712)))
                                                                           #f)))))
                                                                    g7708))))
                                                                g7707))))
                                                           (letrec*
                                                            ((g7713
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   990
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7713))
                                                          #f))))
                                                     g7704))
                                                   #f))
                                                #f)))))
                                         g7701)))))
                                   g7693)))))
                             g7690)))))
                       g7688))))
                   g7687)))
               (cdaaar
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
                                (write '(funapp 1008 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1008 61))
                              (display "\n")
                              (car x7717)))))
                         (begin
                           (write '(funapp 1009 26))
                           (display "\n")
                           (car x7716)))))
                      (begin
                        (write '(funapp 1010 23))
                        (display "\n")
                        (cdr x7715)))))
                   g7714)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7718
                     (letrec*
                      ((x7719
                        (letrec*
                         ((x7720
                           (letrec*
                            ((x7721
                              (begin
                                (write '(funapp 1019 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1019 61))
                              (display "\n")
                              (cdr x7721)))))
                         (begin
                           (write '(funapp 1020 26))
                           (display "\n")
                           (car x7720)))))
                      (begin
                        (write '(funapp 1021 23))
                        (display "\n")
                        (car x7719)))))
                   g7718)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7722
                     (begin
                       (write '(funapp 1023 53))
                       (display "\n")
                       (eq? x y))))
                   g7722)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7723
                     (letrec*
                      ((x7726
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1028 60))
                        (display "\n")
                        (assert x7726))))
                    (g7724
                     (letrec*
                      ((x7727
                        (begin
                          (write '(funapp 1030 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1030 59))
                        (display "\n")
                        (assert x7727))))
                    (g7725
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
                       ((g7728
                         (begin
                           (write '(funapp 1036 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7729 res))
                       g7729))))
                   g7725)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7730
                     (begin
                       (write '(funapp 1039 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1039 57))
                          (display "\n")
                          '())))))
                   g7730)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7734
                        (begin
                          (write '(funapp 1043 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1043 58))
                        (display "\n")
                        (assert x7734))))
                    (g7732
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 1044 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1044 58))
                        (display "\n")
                        (assert x7735))))
                    (g7733
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1047 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7736
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1049 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7736))))
                   g7733)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7738
                        (letrec*
                         ((x7739
                           (begin
                             (write '(funapp 1057 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1057 58))
                           (display "\n")
                           (car x7739)))))
                      (begin
                        (write '(funapp 1058 23))
                        (display "\n")
                        (cdr x7738)))))
                   g7737)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (letrec*
                         ((x7742
                           (letrec*
                            ((x7743
                              (begin
                                (write '(funapp 1067 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1067 61))
                              (display "\n")
                              (cdr x7743)))))
                         (begin
                           (write '(funapp 1068 26))
                           (display "\n")
                           (car x7742)))))
                      (begin
                        (write '(funapp 1069 23))
                        (display "\n")
                        (cdr x7741)))))
                   g7740)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (letrec*
                         ((x7746
                           (begin
                             (write '(funapp 1077 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1077 58))
                           (display "\n")
                           (cdr x7746)))))
                      (begin
                        (write '(funapp 1078 23))
                        (display "\n")
                        (car x7745)))))
                   g7744)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (letrec*
                         ((x7749
                           (begin
                             (write '(funapp 1085 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (car x7749)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7748)))))
                   g7747)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1091 58))
                        (display "\n")
                        (assert x7753))))
                    (g7751
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1092 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1092 58))
                        (display "\n")
                        (assert x7754))))
                    (g7752
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1093 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1093 66))
                        (display "\n")
                        (not x7755)))))
                   g7752)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (letrec*
                         ((x7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1103 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1103 61))
                              (display "\n")
                              (car x7759)))))
                         (begin
                           (write '(funapp 1104 26))
                           (display "\n")
                           (car x7758)))))
                      (begin
                        (write '(funapp 1105 23))
                        (display "\n")
                        (car x7757)))))
                   g7756)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 1110 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1110 59))
                        (display "\n")
                        (assert x7762))))
                    (g7761
                     (begin (write '(funapp 1111 28)) (display "\n") (< x 0))))
                   g7761)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7763
                     (begin
                       (write '(funapp 1113 53))
                       (display "\n")
                       (memq e l))))
                   g7763)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7765
                        (letrec*
                         ((x7766
                           (begin
                             (write '(funapp 1119 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1119 58))
                           (display "\n")
                           (car x7766)))))
                      (begin
                        (write '(funapp 1120 23))
                        (display "\n")
                        (car x7765)))))
                   g7764)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7767
                     (begin (write '(funapp 1122 51)) (display "\n") '())))
                   g7767)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1126 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1126 57))
                        (display "\n")
                        (assert x7770))))
                    (g7769
                     (letrec*
                      ((x-cnd7771
                        (begin
                          (write '(funapp 1129 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7771
                        (begin (write '(funapp 1131 24)) (display "\n") '())
                        (letrec*
                         ((x7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1133 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1133 61))
                              (display "\n")
                              (reverse x7775))))
                          (x7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (list x7773)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (append x7774 x7772)))))))
                   g7769)))
               (caaadr
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
                                (write '(funapp 1144 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1144 61))
                              (display "\n")
                              (car x7779)))))
                         (begin
                           (write '(funapp 1145 26))
                           (display "\n")
                           (car x7778)))))
                      (begin
                        (write '(funapp 1146 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7781
                        (letrec*
                         ((x7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1155 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1155 61))
                              (display "\n")
                              (car x7783)))))
                         (begin
                           (write '(funapp 1156 26))
                           (display "\n")
                           (cdr x7782)))))
                      (begin
                        (write '(funapp 1157 23))
                        (display "\n")
                        (cdr x7781)))))
                   g7780)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1162 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1162 59))
                        (display "\n")
                        (assert x7786))))
                    (g7785
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1163 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1163 60))
                        (display "\n")
                        (= 1 x7787)))))
                   g7785)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7789
                        (letrec*
                         ((x7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1172 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1172 61))
                              (display "\n")
                              (cdr x7791)))))
                         (begin
                           (write '(funapp 1173 26))
                           (display "\n")
                           (car x7790)))))
                      (begin
                        (write '(funapp 1174 23))
                        (display "\n")
                        (car x7789)))))
                   g7788)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1180 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1180 59))
                        (display "\n")
                        (assert x7795))))
                    (g7793
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1181 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1181 60))
                        (display "\n")
                        (assert x7796))))
                    (g7794
                     (letrec*
                      ((x-cnd7797
                        (begin
                          (write '(funapp 1184 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7797
                        (letrec*
                         ((g7798
                           (begin
                             (write '(funapp 1186 42))
                             (display "\n")
                             (proc))))
                         g7798)
                        (letrec*
                         ((x-cnd7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1189 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1189 58))
                              (display "\n")
                              (null? x7800)))))
                         (if x-cnd7799
                           (letrec*
                            ((g7801
                              (letrec*
                               ((x7802
                                 (begin
                                   (write '(funapp 1193 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1193 61))
                                 (display "\n")
                                 (proc x7802)))))
                            g7801)
                           (letrec*
                            ((x-cnd7803
                              (letrec*
                               ((x7804
                                 (begin
                                   (write '(funapp 1197 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1197 62))
                                 (display "\n")
                                 (null? x7804)))))
                            (if x-cnd7803
                              (letrec*
                               ((g7805
                                 (letrec*
                                  ((x7807
                                    (begin
                                      (write '(funapp 1202 43))
                                      (display "\n")
                                      (car args)))
                                   (x7806
                                    (begin
                                      (write '(funapp 1202 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1203 35))
                                    (display "\n")
                                    (proc x7807 x7806)))))
                               g7805)
                              (letrec*
                               ((x-cnd7808
                                 (letrec*
                                  ((x7809
                                    (begin
                                      (write '(funapp 1208 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1209 35))
                                    (display "\n")
                                    (null? x7809)))))
                               (if x-cnd7808
                                 (letrec*
                                  ((g7810
                                    (letrec*
                                     ((x7813
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (car args)))
                                      (x7812
                                       (begin
                                         (write '(funapp 1215 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7811
                                       (begin
                                         (write '(funapp 1216 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1217 38))
                                       (display "\n")
                                       (proc x7813 x7812 x7811)))))
                                  g7810)
                                 (letrec*
                                  ((x-cnd7814
                                    (letrec*
                                     ((x7815
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1223 38))
                                       (display "\n")
                                       (null? x7815)))))
                                  (if x-cnd7814
                                    (letrec*
                                     ((g7816
                                       (letrec*
                                        ((x7820
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (car args)))
                                         (x7819
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7818
                                          (begin
                                            (write '(funapp 1230 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7817
                                          (begin
                                            (write '(funapp 1231 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1232 41))
                                          (display "\n")
                                          (proc x7820 x7819 x7818 x7817)))))
                                     g7816)
                                    (letrec*
                                     ((x-cnd7821
                                       (letrec*
                                        ((x7822
                                          (letrec*
                                           ((x7823
                                             (begin
                                               (write '(funapp 1239 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1240 44))
                                             (display "\n")
                                             (cdr x7823)))))
                                        (begin
                                          (write '(funapp 1241 41))
                                          (display "\n")
                                          (null? x7822)))))
                                     (if x-cnd7821
                                       (letrec*
                                        ((g7824
                                          (letrec*
                                           ((x7830
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (car args)))
                                            (x7829
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7828
                                             (begin
                                               (write '(funapp 1248 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7827
                                             (begin
                                               (write '(funapp 1249 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7825
                                             (letrec*
                                              ((x7826
                                                (begin
                                                  (write '(funapp 1252 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1253 47))
                                                (display "\n")
                                                (car x7826)))))
                                           (begin
                                             (write '(funapp 1254 44))
                                             (display "\n")
                                             (proc
                                              x7830
                                              x7829
                                              x7828
                                              x7827
                                              x7825)))))
                                        g7824)
                                       (letrec*
                                        ((x-cnd7831
                                          (letrec*
                                           ((x7832
                                             (letrec*
                                              ((x7833
                                                (begin
                                                  (write '(funapp 1266 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1267 47))
                                                (display "\n")
                                                (cddr x7833)))))
                                           (begin
                                             (write '(funapp 1268 44))
                                             (display "\n")
                                             (null? x7832)))))
                                        (if x-cnd7831
                                          (letrec*
                                           ((g7834
                                             (letrec*
                                              ((x7842
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7841
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7840
                                                (begin
                                                  (write '(funapp 1275 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7839
                                                (begin
                                                  (write '(funapp 1276 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7837
                                                (letrec*
                                                 ((x7838
                                                   (begin
                                                     (write '(funapp 1279 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1280 50))
                                                   (display "\n")
                                                   (car x7838))))
                                               (x7835
                                                (letrec*
                                                 ((x7836
                                                   (begin
                                                     (write '(funapp 1283 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1284 50))
                                                   (display "\n")
                                                   (cadr x7836)))))
                                              (begin
                                                (write '(funapp 1285 47))
                                                (display "\n")
                                                (proc
                                                 x7842
                                                 x7841
                                                 x7840
                                                 x7839
                                                 x7837
                                                 x7835)))))
                                           g7834)
                                          (letrec*
                                           ((x-cnd7843
                                             (letrec*
                                              ((x7844
                                                (letrec*
                                                 ((x7845
                                                   (begin
                                                     (write '(funapp 1298 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1299 50))
                                                   (display "\n")
                                                   (cdddr x7845)))))
                                              (begin
                                                (write '(funapp 1300 47))
                                                (display "\n")
                                                (null? x7844)))))
                                           (if x-cnd7843
                                             (letrec*
                                              ((g7846
                                                (letrec*
                                                 ((x7856
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7855
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7854
                                                   (begin
                                                     (write '(funapp 1307 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7853
                                                   (begin
                                                     (write '(funapp 1308 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7851
                                                   (letrec*
                                                    ((x7852
                                                      (begin
                                                        (write
                                                         '(funapp 1311 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1312 53))
                                                      (display "\n")
                                                      (car x7852))))
                                                  (x7849
                                                   (letrec*
                                                    ((x7850
                                                      (begin
                                                        (write
                                                         '(funapp 1315 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1316 53))
                                                      (display "\n")
                                                      (cadr x7850))))
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
                                                      (caddr x7848)))))
                                                 (begin
                                                   (write '(funapp 1321 50))
                                                   (display "\n")
                                                   (proc
                                                    x7856
                                                    x7855
                                                    x7854
                                                    x7853
                                                    x7851
                                                    x7849
                                                    x7847)))))
                                              g7846)
                                             (letrec*
                                              ((g7857
                                                (begin
                                                  (write '(funapp 1332 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7857)))))))))))))))))))
                   g7794)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1338 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1338 57))
                        (display "\n")
                        (assert x7860))))
                    (g7859
                     (letrec*
                      ((x-cnd7861
                        (begin
                          (write '(funapp 1341 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7861
                        #f
                        (letrec*
                         ((x-cnd7862
                           (letrec*
                            ((x7863
                              (begin
                                (write '(funapp 1346 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1346 55))
                              (display "\n")
                              (equal? x7863 e)))))
                         (if x-cnd7862
                           l
                           (letrec*
                            ((x7864
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1349 55))
                              (display "\n")
                              (member e x7864)))))))))
                   g7859)))
               (cddddr
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
                                (write '(funapp 1358 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1358 61))
                              (display "\n")
                              (cdr x7868)))))
                         (begin
                           (write '(funapp 1359 26))
                           (display "\n")
                           (cdr x7867)))))
                      (begin
                        (write '(funapp 1360 23))
                        (display "\n")
                        (cdr x7866)))))
                   g7865)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7870
                        (letrec*
                         ((x7871
                           (letrec*
                            ((x7872
                              (begin
                                (write '(funapp 1369 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1369 61))
                              (display "\n")
                              (cdr x7872)))))
                         (begin
                           (write '(funapp 1370 26))
                           (display "\n")
                           (cdr x7871)))))
                      (begin
                        (write '(funapp 1371 23))
                        (display "\n")
                        (car x7870)))))
                   g7869)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7873
                     (begin
                       (write '(funapp 1373 53))
                       (display "\n")
                       (random 42))))
                   g7873)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x7876
                        (begin
                          (write '(funapp 1377 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1377 59))
                        (display "\n")
                        (assert x7876))))
                    (g7875
                     (begin (write '(funapp 1378 28)) (display "\n") (= x 0))))
                   g7875)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1385 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7878
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1387 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7878))))
                   g7877)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7880
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1393 55))
                        (display "\n")
                        (car x7880)))))
                   g7879)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7882
                           (begin
                             (write '(funapp 1403 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7882
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 1405 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1405 55))
                              (display "\n")
                              (list? x7883)))
                           #f))))
                      (letrec*
                       ((g7884
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1408 52))
                             (display "\n")
                             (null? l)))))
                       g7884))))
                   g7881)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((x7886
                        (letrec*
                         ((x7887
                           (letrec*
                            ((x7888
                              (begin
                                (write '(funapp 1418 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1418 61))
                              (display "\n")
                              (car x7888)))))
                         (begin
                           (write '(funapp 1419 26))
                           (display "\n")
                           (cdr x7887)))))
                      (begin
                        (write '(funapp 1420 23))
                        (display "\n")
                        (cdr x7886)))))
                   g7885)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7889
                     (letrec*
                      ((x-cnd7890
                        (letrec*
                         ((x7891 #\0))
                         (begin
                           (write '(funapp 1427 58))
                           (display "\n")
                           (char<=? x7891 c)))))
                      (if x-cnd7890
                        (letrec*
                         ((x7892 #\9))
                         (begin
                           (write '(funapp 1429 48))
                           (display "\n")
                           (char<=? c x7892)))
                        #f))))
                   g7889)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1436 57))
                        (display "\n")
                        (assert x7895))))
                    (g7894
                     (letrec*
                      ((x-cnd7896
                        (begin
                          (write '(funapp 1439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7896
                        #f
                        (letrec*
                         ((x-cnd7897
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1444 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1444 56))
                              (display "\n")
                              (eqv? x7898 k)))))
                         (if x-cnd7897
                           (begin
                             (write '(funapp 1446 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 1447 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1447 55))
                              (display "\n")
                              (assq k x7899)))))))))
                   g7894)))
               (not (lambda (x) (letrec* ((g7900 (if x #f #t))) g7900)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7901
                     (begin
                       (write '(funapp 1451 50))
                       (display "\n")
                       (append l1 l2))))
                   g7901)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7902
                     (letrec*
                      ((x7904
                        (begin
                          (write '(funapp 1455 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1455 57))
                        (display "\n")
                        (assert x7904))))
                    (g7903
                     (letrec*
                      ((x-cnd7905
                        (begin
                          (write '(funapp 1458 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7905
                        #f
                        (letrec*
                         ((x-cnd7906
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 1463 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1463 55))
                              (display "\n")
                              (eq? x7907 e)))))
                         (if x-cnd7906
                           l
                           (letrec*
                            ((x7908
                              (begin
                                (write '(funapp 1466 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1466 55))
                              (display "\n")
                              (memq e x7908)))))))))
                   g7903)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7909
                     (letrec*
                      ((x7910
                        (letrec*
                         ((x7911
                           (letrec*
                            ((x7912
                              (begin
                                (write '(funapp 1475 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1475 61))
                              (display "\n")
                              (car x7912)))))
                         (begin
                           (write '(funapp 1476 26))
                           (display "\n")
                           (cdr x7911)))))
                      (begin
                        (write '(funapp 1477 23))
                        (display "\n")
                        (car x7910)))))
                   g7909)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7913
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1482 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1482 57))
                        (display "\n")
                        (assert x7915))))
                    (g7914
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7916
                             (letrec*
                              ((x-cnd7917
                                (begin
                                  (write '(funapp 1490 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7917
                                0
                                (letrec*
                                 ((x7918
                                   (letrec*
                                    ((x7919
                                      (begin
                                        (write '(funapp 1495 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1495 63))
                                      (display "\n")
                                      (rec x7919)))))
                                 (begin
                                   (write '(funapp 1496 34))
                                   (display "\n")
                                   (+ 1 x7918)))))))
                           g7916))))
                      (letrec*
                       ((g7920
                         (begin
                           (write '(funapp 1498 40))
                           (display "\n")
                           (rec l))))
                       g7920))))
                   g7914)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7921
                     (letrec*
                      ((x7924
                        (begin
                          (write '(funapp 1503 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1503 58))
                        (display "\n")
                        (assert x7924))))
                    (g7922
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1504 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1504 58))
                        (display "\n")
                        (assert x7925))))
                    (g7923
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1507 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7926
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1509 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7926))))
                   g7923)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7927
                     (letrec*
                      ((x7928
                        (begin
                          (write '(funapp 1515 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1515 65))
                        (display "\n")
                        (not x7928)))))
                   g7927)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7929
                     (letrec*
                      ((x7930
                        (letrec*
                         ((x7931
                           (begin
                             (write '(funapp 1522 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1522 58))
                           (display "\n")
                           (car x7931)))))
                      (begin
                        (write '(funapp 1523 23))
                        (display "\n")
                        (cdr x7930)))))
                   g7929)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7934
                        (begin
                          (write '(funapp 1528 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1528 57))
                        (display "\n")
                        (assert x7934))))
                    (g7933
                     (letrec*
                      ((x-cnd7935
                        (begin
                          (write '(funapp 1531 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7935
                        #f
                        (letrec*
                         ((x-cnd7936
                           (letrec*
                            ((x7937
                              (begin
                                (write '(funapp 1536 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1536 56))
                              (display "\n")
                              (equal? x7937 k)))))
                         (if x-cnd7936
                           (begin
                             (write '(funapp 1538 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7938
                              (begin
                                (write '(funapp 1539 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1539 55))
                              (display "\n")
                              (assoc k x7938)))))))))
                   g7933)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7939
                     (letrec*
                      ((x7940
                        (begin
                          (write '(funapp 1544 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1544 55))
                        (display "\n")
                        (car x7940)))))
                   g7939)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7941
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7944))))
                    (g7942
                     (letrec*
                      ((x7945
                        (begin
                          (write '(funapp 1550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1550 58))
                        (display "\n")
                        (assert x7945))))
                    (g7943
                     (letrec*
                      ((x7946
                        (begin
                          (write '(funapp 1551 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1551 63))
                        (display "\n")
                        (not x7946)))))
                   g7943)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7947
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1558 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7948
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1560 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7948))))
                   g7947)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7949
                     (letrec*
                      ((x7952
                        (begin
                          (write '(funapp 1566 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1566 62))
                        (display "\n")
                        (assert x7952))))
                    (g7950
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1567 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (assert x7953))))
                    (g7951
                     (letrec*
                      ((x-cnd7954
                        (begin
                          (write '(funapp 1570 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7954
                        #t
                        (letrec*
                         ((x-cnd7955
                           (begin
                             (write '(funapp 1574 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7955
                           (letrec*
                            ((g7956
                              (letrec*
                               ((x7958
                                 (begin
                                   (write '(funapp 1577 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1577 64))
                                 (display "\n")
                                 (f x7958))))
                             (g7957
                              (letrec*
                               ((x7959
                                 (begin
                                   (write '(funapp 1579 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1579 58))
                                 (display "\n")
                                 (for-each f x7959)))))
                            g7957)
                           (begin
                             (write '(funapp 1581 27))
                             (display "\n")
                             '())))))))
                   g7951)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7960
                     (letrec*
                      ((x7962
                        (begin
                          (write '(funapp 1586 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1586 59))
                        (display "\n")
                        (assert x7962))))
                    (g7961
                     (letrec*
                      ((x-cnd7963
                        (begin
                          (write '(funapp 1588 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7963
                        (begin
                          (write '(funapp 1588 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7961)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7964
                     (letrec*
                      ((x7967
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7967))))
                    (g7965
                     (letrec*
                      ((x7968
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7968))))
                    (g7966
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1597 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7969
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1599 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7969))))
                   g7966)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7971
                        (letrec*
                         ((x7972
                           (letrec*
                            ((x7973
                              (begin
                                (write '(funapp 1609 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1609 61))
                              (display "\n")
                              (cdr x7973)))))
                         (begin
                           (write '(funapp 1610 26))
                           (display "\n")
                           (cdr x7972)))))
                      (begin
                        (write '(funapp 1611 23))
                        (display "\n")
                        (car x7971)))))
                   g7970)))
               (newline (lambda () (letrec* ((g7974 #f)) g7974)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7975
                     (letrec*
                      ((x7977
                        (letrec*
                         ((x7978
                           (begin
                             (write '(funapp 1619 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1619 58))
                           (display "\n")
                           (abs x7978))))
                       (x7976
                        (begin
                          (write '(funapp 1620 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1621 23))
                        (display "\n")
                        (/ x7977 x7976)))))
                   g7975)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7979
                     (letrec*
                      ((x7983
                        (begin
                          (write '(funapp 1627 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1627 57))
                        (display "\n")
                        (assert x7983))))
                    (g7980
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 1628 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1628 63))
                        (display "\n")
                        (assert x7984))))
                    (g7981
                     (letrec*
                      ((x7985
                        (letrec*
                         ((x7986
                           (begin
                             (write '(funapp 1631 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1631 61))
                           (display "\n")
                           (< index x7986)))))
                      (begin
                        (write '(funapp 1632 23))
                        (display "\n")
                        (assert x7985))))
                    (g7982
                     (letrec*
                      ((x-cnd7987
                        (begin
                          (write '(funapp 1635 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7987
                        (begin
                          (write '(funapp 1637 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1639 34))
                             (display "\n")
                             (cdr l)))
                          (x7988
                           (begin
                             (write '(funapp 1639 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1640 26))
                           (display "\n")
                           (list-ref x7989 x7988)))))))
                   g7982)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x-cnd7991
                        (begin
                          (write '(funapp 1647 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7991
                        a
                        (letrec*
                         ((x7992
                           (begin
                             (write '(funapp 1650 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1650 57))
                           (display "\n")
                           (gcd b x7992)))))))
                   g7990)))
               (mappend
                (lambda (xs ys)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x-cnd7994
                        (begin
                          (write '(funapp 1657 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7994
                        ys
                        (letrec*
                         ((x7997
                           (begin
                             (write '(funapp 1661 34))
                             (display "\n")
                             (car xs)))
                          (x7995
                           (letrec*
                            ((x7996
                              (begin
                                (write '(funapp 1663 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1663 56))
                              (display "\n")
                              (mappend x7996 ys)))))
                         (begin
                           (write '(funapp 1664 26))
                           (display "\n")
                           (cons x7997 x7995)))))))
                   g7993)))
               (map-append
                (lambda (f xs)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x-cnd7999
                        (begin
                          (write '(funapp 1671 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7999
                        empty
                        (letrec*
                         ((x8002
                           (letrec*
                            ((x8003
                              (begin
                                (write '(funapp 1675 51))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1675 62))
                              (display "\n")
                              (f x8003))))
                          (x8000
                           (letrec*
                            ((x8001
                              (begin
                                (write '(funapp 1677 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1677 56))
                              (display "\n")
                              (map-append f x8001)))))
                         (begin
                           (write '(funapp 1678 26))
                           (display "\n")
                           (mappend x8002 x8000)))))))
                   g7998))))
              (letrec*
               ((g8004
                 (begin
                   (write '(funapp 1682 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1683 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x8007
                          (letrec*
                           ((xj7394
                             (begin
                               (write '(funapp 1687 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1687 37))
                                  (display "\n")
                                  'module))))
                            (xk7395
                             (begin
                               (write '(funapp 1687 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1687 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8008
                              (begin
                                (write '(funapp 1690 27))
                                (display "\n")
                                ((lambda (j7398 k7399 f7400)
                                   (letrec*
                                    ((g8009
                                      (lambda (g7396 g7397)
                                        (letrec*
                                         ((g8010
                                           (letrec*
                                            ((x8020
                                              (begin
                                                (write '(funapp 1697 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8011
                                              (letrec*
                                               ((x8014
                                                 (begin
                                                   (write '(funapp 1701 44))
                                                   (display "\n")
                                                   ((lambda (j7402 k7403 f7404)
                                                      (letrec*
                                                       ((g8015
                                                         (lambda (g7401)
                                                           (letrec*
                                                            ((g8016
                                                              (letrec*
                                                               ((x8019
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1708
                                                                      64))
                                                                   (display
                                                                    "\n")
                                                                   (listof
                                                                    any/c)))
                                                                (x8017
                                                                 (letrec*
                                                                  ((x8018
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1712
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (any/c
                                                                       j7402
                                                                       k7403
                                                                       g7401))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       1716
                                                                       59))
                                                                    (display
                                                                     "\n")
                                                                    (f7404
                                                                     x8018)))))
                                                               (begin
                                                                 (write
                                                                  '(funapp
                                                                    1717
                                                                    56))
                                                                 (display "\n")
                                                                 (x8019
                                                                  j7402
                                                                  k7403
                                                                  x8017)))))
                                                            g8016))))
                                                       g8015))
                                                    j7398
                                                    k7399
                                                    g7396)))
                                                (x8012
                                                 (letrec*
                                                  ((x8013
                                                    (begin
                                                      (write '(funapp 1728 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1729 45))
                                                    (display "\n")
                                                    (x8013
                                                     j7398
                                                     k7399
                                                     g7397)))))
                                               (begin
                                                 (write '(funapp 1730 42))
                                                 (display "\n")
                                                 (f7400 x8014 x8012)))))
                                            (begin
                                              (write '(funapp 1731 39))
                                              (display "\n")
                                              (x8020 j7398 k7399 x8011)))))
                                         g8010))))
                                    g8009))
                                 xj7394
                                 xk7395
                                 map-append))))
                            g8008)))
                         (x8006 (input))
                         (x8005 (input)))
                        (begin
                          (write '(funapp 1740 21))
                          (display "\n")
                          (x8007 x8006 x8005)))
                       (letrec*
                        ((x8023
                          (letrec*
                           ((xj7405
                             (begin
                               (write '(funapp 1744 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1744 37))
                                  (display "\n")
                                  'module))))
                            (xk7406
                             (begin
                               (write '(funapp 1744 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1744 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g8024
                              (begin
                                (write '(funapp 1747 27))
                                (display "\n")
                                ((lambda (j7409 k7410 f7411)
                                   (letrec*
                                    ((g8025
                                      (lambda (g7407 g7408)
                                        (letrec*
                                         ((g8026
                                           (letrec*
                                            ((x8032
                                              (begin
                                                (write '(funapp 1754 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8027
                                              (letrec*
                                               ((x8030
                                                 (letrec*
                                                  ((x8031
                                                    (begin
                                                      (write '(funapp 1759 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1760 45))
                                                    (display "\n")
                                                    (x8031
                                                     j7409
                                                     k7410
                                                     g7407))))
                                                (x8028
                                                 (letrec*
                                                  ((x8029
                                                    (begin
                                                      (write '(funapp 1763 53))
                                                      (display "\n")
                                                      (listof any/c))))
                                                  (begin
                                                    (write '(funapp 1764 45))
                                                    (display "\n")
                                                    (x8029
                                                     j7409
                                                     k7410
                                                     g7408)))))
                                               (begin
                                                 (write '(funapp 1765 42))
                                                 (display "\n")
                                                 (f7411 x8030 x8028)))))
                                            (begin
                                              (write '(funapp 1766 39))
                                              (display "\n")
                                              (x8032 j7409 k7410 x8027)))))
                                         g8026))))
                                    g8025))
                                 xj7405
                                 xk7406
                                 mappend))))
                            g8024)))
                         (x8022 (input))
                         (x8021 (input)))
                        (begin
                          (write '(funapp 1775 21))
                          (display "\n")
                          (x8023 x8022 x8021)))))))))
               g8004))))
           g7439))))
       g7423)))
    g7422)))
