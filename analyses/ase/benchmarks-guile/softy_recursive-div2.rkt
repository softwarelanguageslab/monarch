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
          ((>=
            (lambda (x y)
              (letrec*
               ((g7415
                 (letrec*
                  ((x7417
                    (begin
                      (write '(funapp 47 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 47 55))
                    (display "\n")
                    (assert x7417))))
                (g7416
                 (letrec*
                  ((val7243
                    (begin (write '(funapp 50 29)) (display "\n") (> x y))))
                  (letrec*
                   ((g7418
                     (if val7243
                       val7243
                       (letrec*
                        ((val7244
                          (begin
                            (write '(funapp 56 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7419 (if val7244 val7244 #f))) g7419)))))
                   g7418))))
               g7416)))
           (<=
            (lambda (x y)
              (letrec*
               ((g7420
                 (letrec*
                  ((x7422
                    (begin
                      (write '(funapp 63 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 63 55))
                    (display "\n")
                    (assert x7422))))
                (g7421
                 (letrec*
                  ((val7245
                    (begin (write '(funapp 66 29)) (display "\n") (< x y))))
                  (letrec*
                   ((g7423
                     (if val7245
                       val7245
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 72 35))
                            (display "\n")
                            (= x y))))
                        (letrec* ((g7424 (if val7246 val7246 #f))) g7424)))))
                   g7423))))
               g7421)))
           (>
            (lambda (x y)
              (letrec*
               ((g7425
                 (letrec*
                  ((x7427
                    (begin
                      (write '(funapp 79 41))
                      (display "\n")
                      (number? x))))
                  (begin
                    (write '(funapp 79 55))
                    (display "\n")
                    (assert x7427))))
                (g7426
                 (letrec*
                  ((x7428
                    (begin (write '(funapp 80 41)) (display "\n") (<= x y))))
                  (begin (write '(funapp 80 52)) (display "\n") (not x7428)))))
               g7426)))
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
           ((g7429 (begin (write '(funapp 96 19)) (display "\n") '()))
            (g7430
             (letrec*
              ((empty (begin (write '(funapp 99 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7431
                     (lambda (k j lst)
                       (letrec*
                        ((g7432
                          (begin
                            (write '(funapp 107 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7433
                                  (begin
                                    (write '(funapp 109 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7433))
                             lst))))
                        g7432))))
                   g7431)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7434
                     (letrec*
                      ((x-cnd7435
                        (begin
                          (write '(funapp 118 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7435
                        g7263
                        (begin
                          (write '(blame g7261 119 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7434)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7436
                     (letrec*
                      ((x-cnd7437
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7437
                        g7266
                        (begin
                          (write '(blame g7264 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7436)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7438
                     (letrec*
                      ((x-cnd7439
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7439
                        g7269
                        (begin
                          (write '(blame g7267 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7438)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x-cnd7441
                        (begin
                          (write '(funapp 143 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7442 #t)) g7442)) g7272))))
                      (if x-cnd7441
                        g7272
                        (begin
                          (write '(blame g7270 144 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7440)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x-cnd7444
                        (begin
                          (write '(funapp 152 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7445 #t)) g7445)) g7275))))
                      (if x-cnd7444
                        g7275
                        (begin
                          (write '(blame g7273 153 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7443)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 160 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7447
                        g7278
                        (begin
                          (write '(blame g7276 161 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7446)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 169 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7449
                        g7281
                        (begin
                          (write '(blame g7279 170 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7448)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 177 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7451
                        g7284
                        (begin
                          (write '(blame g7282 178 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7450)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x-cnd7453
                        (begin
                          (write '(funapp 185 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7453
                        g7287
                        (begin
                          (write '(blame g7285 186 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7452)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7454
                     (lambda (k j v)
                       (letrec*
                        ((g7455
                          (letrec*
                           ((x-cnd7456
                             (begin
                               (write '(funapp 196 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7456
                             (begin
                               (write '(funapp 197 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7455))))
                   g7454)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7457
                     (lambda (k j v)
                       (letrec*
                        ((g7458
                          (letrec*
                           ((x-cnd7459
                             (begin
                               (write '(funapp 208 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7459
                             (begin
                               (write '(funapp 210 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7463
                                (letrec*
                                 ((x7464
                                   (begin
                                     (write '(funapp 214 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 215 34))
                                   (display "\n")
                                   (contract k j x7464))))
                               (x7460
                                (letrec*
                                 ((x7462
                                   (begin
                                     (write '(funapp 218 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7461
                                   (begin
                                     (write '(funapp 218 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 219 34))
                                   (display "\n")
                                   (x7462 k j x7461)))))
                              (begin
                                (write '(funapp 220 31))
                                (display "\n")
                                (orig-cons x7463 x7460)))))))
                        g7458))))
                   g7457)))
               (any? (lambda (v) (letrec* ((g7465 #t)) g7465)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x7467
                        (begin
                          (write '(funapp 227 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 227 55))
                        (display "\n")
                        (not x7467)))))
                   g7466)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x-cnd7469
                        (begin
                          (write '(funapp 235 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7470
                                (letrec*
                                 ((x7471
                                   (begin
                                     (write '(funapp 237 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 237 64))
                                   (display "\n")
                                   (not x7471)))))
                              g7470))
                           g7290))))
                      (if x-cnd7469
                        g7290
                        (begin
                          (write '(blame g7288 242 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7468)))
               (>=/c
                (lambda (n)
                  (letrec*
                   ((g7472
                     (lambda (g7291 g7292 g7293)
                       (letrec*
                        ((g7473
                          (letrec*
                           ((x-cnd7474
                             (begin
                               (write '(funapp 253 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7475
                                     (begin
                                       (write '(funapp 254 50))
                                       (display "\n")
                                       (orig->= v n))))
                                   g7475))
                                g7293))))
                           (if x-cnd7474
                             g7293
                             (begin
                               (write '(blame g7291 258 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7291)))))))
                        g7473))))
                   g7472)))
               (>/c
                (lambda (n)
                  (letrec*
                   ((g7476
                     (lambda (g7294 g7295 g7296)
                       (letrec*
                        ((g7477
                          (letrec*
                           ((x-cnd7478
                             (begin
                               (write '(funapp 270 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7479
                                     (begin
                                       (write '(funapp 271 50))
                                       (display "\n")
                                       (orig-> v n))))
                                   g7479))
                                g7296))))
                           (if x-cnd7478
                             g7296
                             (begin
                               (write '(blame g7294 275 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7294)))))))
                        g7477))))
                   g7476)))
               (</c
                (lambda (n)
                  (letrec*
                   ((g7480
                     (lambda (g7297 g7298 g7299)
                       (letrec*
                        ((g7481
                          (letrec*
                           ((x-cnd7482
                             (begin
                               (write '(funapp 287 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7483
                                     (begin
                                       (write '(funapp 288 50))
                                       (display "\n")
                                       (orig-< v n))))
                                   g7483))
                                g7299))))
                           (if x-cnd7482
                             g7299
                             (begin
                               (write '(blame g7297 292 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7297)))))))
                        g7481))))
                   g7480)))
               (<=/c
                (lambda (n)
                  (letrec*
                   ((g7484
                     (lambda (g7300 g7301 g7302)
                       (letrec*
                        ((g7485
                          (letrec*
                           ((x-cnd7486
                             (begin
                               (write '(funapp 304 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7487
                                     (begin
                                       (write '(funapp 305 50))
                                       (display "\n")
                                       (orig-<= v n))))
                                   g7487))
                                g7302))))
                           (if x-cnd7486
                             g7302
                             (begin
                               (write '(blame g7300 309 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7300)))))))
                        g7485))))
                   g7484)))
               (=/c
                (lambda (n)
                  (letrec*
                   ((g7488
                     (lambda (g7303 g7304 g7305)
                       (letrec*
                        ((g7489
                          (letrec*
                           ((x-cnd7490
                             (begin
                               (write '(funapp 321 30))
                               (display "\n")
                               ((lambda (v)
                                  (letrec*
                                   ((g7491
                                     (begin
                                       (write '(funapp 322 50))
                                       (display "\n")
                                       (orig-= v n))))
                                   g7491))
                                g7305))))
                           (if x-cnd7490
                             g7305
                             (begin
                               (write '(blame g7303 326 29))
                               (display "\n")
                               (error
                                (format
                                 "contract violation, blaming ~a~%"
                                 g7303)))))))
                        g7489))))
                   g7488)))
               (meta (lambda (v) (letrec* ((g7492 v)) g7492)))
               (+
                (letrec*
                 ((xj7306
                   (begin (write '(funapp 332 26)) (display "\n") 'server))
                  (xk7307
                   (begin (write '(funapp 332 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7493
                    (begin
                      (write '(funapp 335 21))
                      (display "\n")
                      ((lambda (j7310 k7311 f7312)
                         (letrec*
                          ((g7495
                            (lambda (g7308 g7309)
                              (letrec*
                               ((g7496
                                 (letrec*
                                  ((x7497
                                    (letrec*
                                     ((x7499
                                       (begin
                                         (write '(funapp 344 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7308)))
                                      (x7498
                                       (begin
                                         (write '(funapp 345 44))
                                         (display "\n")
                                         (number?/c j7310 k7311 g7309))))
                                     (begin
                                       (write '(funapp 346 36))
                                       (display "\n")
                                       (f7312 x7499 x7498)))))
                                  (begin
                                    (write '(funapp 347 33))
                                    (display "\n")
                                    (number?/c j7310 k7311 x7497)))))
                               g7496))))
                          g7495))
                       xj7306
                       xk7307
                       (lambda (a b)
                         (letrec*
                          ((g7494
                            (begin
                              (write '(funapp 352 53))
                              (display "\n")
                              (orig-+ a b))))
                          g7494))))))
                  g7493)))
               (-
                (letrec*
                 ((xj7313
                   (begin (write '(funapp 356 26)) (display "\n") 'server))
                  (xk7314
                   (begin (write '(funapp 356 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7500
                    (begin
                      (write '(funapp 359 21))
                      (display "\n")
                      ((lambda (j7317 k7318 f7319)
                         (letrec*
                          ((g7502
                            (lambda (g7315 g7316)
                              (letrec*
                               ((g7503
                                 (letrec*
                                  ((x7504
                                    (letrec*
                                     ((x7506
                                       (begin
                                         (write '(funapp 368 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7315)))
                                      (x7505
                                       (begin
                                         (write '(funapp 369 44))
                                         (display "\n")
                                         (number?/c j7317 k7318 g7316))))
                                     (begin
                                       (write '(funapp 370 36))
                                       (display "\n")
                                       (f7319 x7506 x7505)))))
                                  (begin
                                    (write '(funapp 371 33))
                                    (display "\n")
                                    (number?/c j7317 k7318 x7504)))))
                               g7503))))
                          g7502))
                       xj7313
                       xk7314
                       (lambda (a b)
                         (letrec*
                          ((g7501
                            (begin
                              (write '(funapp 376 53))
                              (display "\n")
                              (orig-- a b))))
                          g7501))))))
                  g7500)))
               (*
                (letrec*
                 ((xj7320
                   (begin (write '(funapp 380 26)) (display "\n") 'server))
                  (xk7321
                   (begin (write '(funapp 380 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7507
                    (begin
                      (write '(funapp 383 21))
                      (display "\n")
                      ((lambda (j7324 k7325 f7326)
                         (letrec*
                          ((g7509
                            (lambda (g7322 g7323)
                              (letrec*
                               ((g7510
                                 (letrec*
                                  ((x7511
                                    (letrec*
                                     ((x7513
                                       (begin
                                         (write '(funapp 392 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7322)))
                                      (x7512
                                       (begin
                                         (write '(funapp 393 44))
                                         (display "\n")
                                         (number?/c j7324 k7325 g7323))))
                                     (begin
                                       (write '(funapp 394 36))
                                       (display "\n")
                                       (f7326 x7513 x7512)))))
                                  (begin
                                    (write '(funapp 395 33))
                                    (display "\n")
                                    (number?/c j7324 k7325 x7511)))))
                               g7510))))
                          g7509))
                       xj7320
                       xk7321
                       (lambda (a b)
                         (letrec*
                          ((g7508
                            (begin
                              (write '(funapp 400 53))
                              (display "\n")
                              (orig-* a b))))
                          g7508))))))
                  g7507)))
               (<
                (letrec*
                 ((xj7327
                   (begin (write '(funapp 404 26)) (display "\n") 'server))
                  (xk7328
                   (begin (write '(funapp 404 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7514
                    (begin
                      (write '(funapp 407 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7516
                            (lambda (g7329 g7330)
                              (letrec*
                               ((g7517
                                 (letrec*
                                  ((x7518
                                    (letrec*
                                     ((x7520
                                       (begin
                                         (write '(funapp 416 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7329)))
                                      (x7519
                                       (begin
                                         (write '(funapp 417 44))
                                         (display "\n")
                                         (number?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 418 36))
                                       (display "\n")
                                       (f7333 x7520 x7519)))))
                                  (begin
                                    (write '(funapp 419 33))
                                    (display "\n")
                                    (boolean?/c j7331 k7332 x7518)))))
                               g7517))))
                          g7516))
                       xj7327
                       xk7328
                       (lambda (a b)
                         (letrec*
                          ((g7515
                            (begin
                              (write '(funapp 424 53))
                              (display "\n")
                              (orig-< a b))))
                          g7515))))))
                  g7514)))
               (>
                (letrec*
                 ((xj7334
                   (begin (write '(funapp 428 26)) (display "\n") 'server))
                  (xk7335
                   (begin (write '(funapp 428 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7521
                    (begin
                      (write '(funapp 431 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7523
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7524
                                 (letrec*
                                  ((x7525
                                    (letrec*
                                     ((x7527
                                       (begin
                                         (write '(funapp 440 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7336)))
                                      (x7526
                                       (begin
                                         (write '(funapp 441 44))
                                         (display "\n")
                                         (number?/c j7338 k7339 g7337))))
                                     (begin
                                       (write '(funapp 442 36))
                                       (display "\n")
                                       (f7340 x7527 x7526)))))
                                  (begin
                                    (write '(funapp 443 33))
                                    (display "\n")
                                    (boolean?/c j7338 k7339 x7525)))))
                               g7524))))
                          g7523))
                       xj7334
                       xk7335
                       (lambda (a b)
                         (letrec*
                          ((g7522
                            (begin
                              (write '(funapp 448 53))
                              (display "\n")
                              (orig-> a b))))
                          g7522))))))
                  g7521)))
               (<=
                (letrec*
                 ((xj7341
                   (begin (write '(funapp 452 26)) (display "\n") 'server))
                  (xk7342
                   (begin (write '(funapp 452 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7528
                    (begin
                      (write '(funapp 455 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7530
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7531
                                 (letrec*
                                  ((x7532
                                    (letrec*
                                     ((x7534
                                       (begin
                                         (write '(funapp 464 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7343)))
                                      (x7533
                                       (begin
                                         (write '(funapp 465 44))
                                         (display "\n")
                                         (number?/c j7345 k7346 g7344))))
                                     (begin
                                       (write '(funapp 466 36))
                                       (display "\n")
                                       (f7347 x7534 x7533)))))
                                  (begin
                                    (write '(funapp 467 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7532)))))
                               g7531))))
                          g7530))
                       xj7341
                       xk7342
                       (lambda (a b)
                         (letrec*
                          ((g7529
                            (begin
                              (write '(funapp 472 53))
                              (display "\n")
                              (orig-<= a b))))
                          g7529))))))
                  g7528)))
               (>=
                (letrec*
                 ((xj7348
                   (begin (write '(funapp 476 26)) (display "\n") 'server))
                  (xk7349
                   (begin (write '(funapp 476 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7535
                    (begin
                      (write '(funapp 479 21))
                      (display "\n")
                      ((lambda (j7352 k7353 f7354)
                         (letrec*
                          ((g7537
                            (lambda (g7350 g7351)
                              (letrec*
                               ((g7538
                                 (letrec*
                                  ((x7539
                                    (letrec*
                                     ((x7541
                                       (begin
                                         (write '(funapp 488 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7350)))
                                      (x7540
                                       (begin
                                         (write '(funapp 489 44))
                                         (display "\n")
                                         (number?/c j7352 k7353 g7351))))
                                     (begin
                                       (write '(funapp 490 36))
                                       (display "\n")
                                       (f7354 x7541 x7540)))))
                                  (begin
                                    (write '(funapp 491 33))
                                    (display "\n")
                                    (boolean?/c j7352 k7353 x7539)))))
                               g7538))))
                          g7537))
                       xj7348
                       xk7349
                       (lambda (a b)
                         (letrec*
                          ((g7536
                            (begin
                              (write '(funapp 496 53))
                              (display "\n")
                              (orig->= a b))))
                          g7536))))))
                  g7535)))
               (/
                (letrec*
                 ((xj7355
                   (begin (write '(funapp 500 26)) (display "\n") 'server))
                  (xk7356
                   (begin (write '(funapp 500 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7542
                    (begin
                      (write '(funapp 503 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g7544
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g7545
                                 (letrec*
                                  ((x7546
                                    (letrec*
                                     ((x7548
                                       (begin
                                         (write '(funapp 512 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7357)))
                                      (x7547
                                       (begin
                                         (write '(funapp 513 44))
                                         (display "\n")
                                         (number?/c j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 514 36))
                                       (display "\n")
                                       (f7361 x7548 x7547)))))
                                  (begin
                                    (write '(funapp 515 33))
                                    (display "\n")
                                    (number?/c j7359 k7360 x7546)))))
                               g7545))))
                          g7544))
                       xj7355
                       xk7356
                       (lambda (a b)
                         (letrec*
                          ((g7543
                            (begin
                              (write '(funapp 520 53))
                              (display "\n")
                              (orig-/ a b))))
                          g7543))))))
                  g7542)))
               (car
                (letrec*
                 ((xj7362
                   (begin (write '(funapp 524 26)) (display "\n") 'server))
                  (xk7363
                   (begin (write '(funapp 524 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7549
                    (begin
                      (write '(funapp 527 21))
                      (display "\n")
                      ((lambda (j7365 k7366 f7367)
                         (letrec*
                          ((g7551
                            (lambda (g7364)
                              (letrec*
                               ((g7552
                                 (letrec*
                                  ((x7553
                                    (letrec*
                                     ((x7554
                                       (begin
                                         (write '(funapp 536 44))
                                         (display "\n")
                                         (pair?/c j7365 k7366 g7364))))
                                     (begin
                                       (write '(funapp 537 36))
                                       (display "\n")
                                       (f7367 x7554)))))
                                  (begin
                                    (write '(funapp 538 33))
                                    (display "\n")
                                    (any/c j7365 k7366 x7553)))))
                               g7552))))
                          g7551))
                       xj7362
                       xk7363
                       (lambda (p)
                         (letrec*
                          ((g7550
                            (begin
                              (write '(funapp 543 51))
                              (display "\n")
                              (orig-car p))))
                          g7550))))))
                  g7549)))
               (cdr
                (letrec*
                 ((xj7368
                   (begin (write '(funapp 547 26)) (display "\n") 'server))
                  (xk7369
                   (begin (write '(funapp 547 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7555
                    (begin
                      (write '(funapp 550 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g7557
                            (lambda (g7370)
                              (letrec*
                               ((g7558
                                 (letrec*
                                  ((x7559
                                    (letrec*
                                     ((x7560
                                       (begin
                                         (write '(funapp 559 44))
                                         (display "\n")
                                         (pair?/c j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 560 36))
                                       (display "\n")
                                       (f7373 x7560)))))
                                  (begin
                                    (write '(funapp 561 33))
                                    (display "\n")
                                    (any/c j7371 k7372 x7559)))))
                               g7558))))
                          g7557))
                       xj7368
                       xk7369
                       (lambda (p)
                         (letrec*
                          ((g7556
                            (begin
                              (write '(funapp 566 51))
                              (display "\n")
                              (orig-cdr p))))
                          g7556))))))
                  g7555)))
               (cons
                (letrec*
                 ((xj7374
                   (begin (write '(funapp 570 26)) (display "\n") 'server))
                  (xk7375
                   (begin (write '(funapp 570 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7561
                    (begin
                      (write '(funapp 573 21))
                      (display "\n")
                      ((lambda (j7378 k7379 f7380)
                         (letrec*
                          ((g7563
                            (lambda (g7376 g7377)
                              (letrec*
                               ((g7564
                                 (letrec*
                                  ((x7565
                                    (letrec*
                                     ((x7567
                                       (begin
                                         (write '(funapp 582 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7376)))
                                      (x7566
                                       (begin
                                         (write '(funapp 583 44))
                                         (display "\n")
                                         (any/c j7378 k7379 g7377))))
                                     (begin
                                       (write '(funapp 584 36))
                                       (display "\n")
                                       (f7380 x7567 x7566)))))
                                  (begin
                                    (write '(funapp 585 33))
                                    (display "\n")
                                    (pair?/c j7378 k7379 x7565)))))
                               g7564))))
                          g7563))
                       xj7374
                       xk7375
                       (lambda (a b)
                         (letrec*
                          ((g7562
                            (begin
                              (write '(funapp 591 41))
                              (display "\n")
                              (orig-cons a b))))
                          g7562))))))
                  g7561)))
               (vector-ref
                (letrec*
                 ((xj7381
                   (begin (write '(funapp 595 26)) (display "\n") 'server))
                  (xk7382
                   (begin (write '(funapp 595 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7568
                    (begin
                      (write '(funapp 598 21))
                      (display "\n")
                      ((lambda (j7384 k7385 f7386)
                         (letrec*
                          ((g7570
                            (lambda (g7383)
                              (letrec*
                               ((g7571
                                 (letrec*
                                  ((x7572
                                    (letrec*
                                     ((x7573
                                       (begin
                                         (write '(funapp 607 44))
                                         (display "\n")
                                         (vector?/c j7384 k7385 g7383))))
                                     (begin
                                       (write '(funapp 608 36))
                                       (display "\n")
                                       (f7386 x7573)))))
                                  (begin
                                    (write '(funapp 609 33))
                                    (display "\n")
                                    (integer?/c j7384 k7385 x7572)))))
                               g7571))))
                          g7570))
                       xj7381
                       xk7382
                       (lambda (v i)
                         (letrec*
                          ((g7569
                            (begin
                              (write '(funapp 615 41))
                              (display "\n")
                              (orig-vector-ref v i))))
                          g7569))))))
                  g7568)))
               (vector-set!
                (letrec*
                 ((xj7387
                   (begin (write '(funapp 619 26)) (display "\n") 'server))
                  (xk7388
                   (begin (write '(funapp 619 43)) (display "\n") 'client)))
                 (letrec*
                  ((g7574
                    (begin
                      (write '(funapp 622 21))
                      (display "\n")
                      ((lambda (j7391 k7392 f7393)
                         (letrec*
                          ((g7576
                            (lambda (g7389 g7390)
                              (letrec*
                               ((g7577
                                 (letrec*
                                  ((x7578
                                    (letrec*
                                     ((x7580
                                       (begin
                                         (write '(funapp 631 44))
                                         (display "\n")
                                         (vector?/c j7391 k7392 g7389)))
                                      (x7579
                                       (begin
                                         (write '(funapp 632 44))
                                         (display "\n")
                                         (integer?/c j7391 k7392 g7390))))
                                     (begin
                                       (write '(funapp 633 36))
                                       (display "\n")
                                       (f7393 x7580 x7579)))))
                                  (begin
                                    (write '(funapp 634 33))
                                    (display "\n")
                                    (any/c j7391 k7392 x7578)))))
                               g7577))))
                          g7576))
                       xj7387
                       xk7388
                       (lambda (vec i v)
                         (letrec*
                          ((g7575
                            (begin
                              (write '(funapp 640 41))
                              (display "\n")
                              (orig-vector-set! vec i v))))
                          g7575))))))
                  g7574)))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7581
                     (if cnd
                       (begin (write '(funapp 645 35)) (display "\n") '())
                       (begin
                         (write '(funapp 645 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7581)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7582
                     (letrec*
                      ((x7583
                        (letrec*
                         ((x7584
                           (begin
                             (write '(funapp 652 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 652 58))
                           (display "\n")
                           (cdr x7584)))))
                      (begin
                        (write '(funapp 653 23))
                        (display "\n")
                        (cdr x7583)))))
                   g7582)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7585
                     (letrec*
                      ((x7588
                        (begin
                          (write '(funapp 659 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 659 62))
                        (display "\n")
                        (assert x7588))))
                    (g7586
                     (letrec*
                      ((x7589
                        (begin
                          (write '(funapp 660 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 660 57))
                        (display "\n")
                        (assert x7589))))
                    (g7587
                     (letrec*
                      ((x-cnd7590
                        (begin
                          (write '(funapp 663 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7590
                        (begin (write '(funapp 665 24)) (display "\n") '())
                        (letrec*
                         ((x7593
                           (letrec*
                            ((x7594
                              (begin
                                (write '(funapp 667 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 667 61))
                              (display "\n")
                              (f x7594))))
                          (x7591
                           (letrec*
                            ((x7592
                              (begin
                                (write '(funapp 668 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 668 61))
                              (display "\n")
                              (map f x7592)))))
                         (begin
                           (write '(funapp 669 26))
                           (display "\n")
                           (cons x7593 x7591)))))))
                   g7587)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x7596
                        (begin
                          (write '(funapp 674 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 674 55))
                        (display "\n")
                        (cdr x7596)))))
                   g7595)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x7598
                        (letrec*
                         ((x7599
                           (letrec*
                            ((x7600
                              (begin
                                (write '(funapp 683 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 683 61))
                              (display "\n")
                              (car x7600)))))
                         (begin
                           (write '(funapp 684 26))
                           (display "\n")
                           (cdr x7599)))))
                      (begin
                        (write '(funapp 685 23))
                        (display "\n")
                        (car x7598)))))
                   g7597)))
               (cdadar
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
                                (write '(funapp 694 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 694 61))
                              (display "\n")
                              (cdr x7604)))))
                         (begin
                           (write '(funapp 695 26))
                           (display "\n")
                           (car x7603)))))
                      (begin
                        (write '(funapp 696 23))
                        (display "\n")
                        (cdr x7602)))))
                   g7601)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7608
                        (begin
                          (write '(funapp 702 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 702 60))
                        (display "\n")
                        (assert x7608))))
                    (g7606
                     (letrec*
                      ((x7609
                        (begin
                          (write '(funapp 704 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 704 59))
                        (display "\n")
                        (assert x7609))))
                    (g7607
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
                       ((g7610
                         (begin
                           (write '(funapp 710 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7611 res))
                       g7611))))
                   g7607)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (letrec*
                         ((x7614
                           (begin
                             (write '(funapp 718 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 718 58))
                           (display "\n")
                           (cdr x7614)))))
                      (begin
                        (write '(funapp 719 23))
                        (display "\n")
                        (car x7613)))))
                   g7612)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (letrec*
                         ((x7617
                           (letrec*
                            ((x7618
                              (begin
                                (write '(funapp 728 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 728 61))
                              (display "\n")
                              (car x7618)))))
                         (begin
                           (write '(funapp 729 26))
                           (display "\n")
                           (car x7617)))))
                      (begin
                        (write '(funapp 730 23))
                        (display "\n")
                        (cdr x7616)))))
                   g7615)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 735 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 735 57))
                        (display "\n")
                        (assert x7621))))
                    (g7620
                     (letrec*
                      ((x-cnd7622
                        (begin
                          (write '(funapp 738 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7622
                        #f
                        (letrec*
                         ((x-cnd7623
                           (letrec*
                            ((x7624
                              (begin
                                (write '(funapp 743 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 743 56))
                              (display "\n")
                              (eq? x7624 k)))))
                         (if x-cnd7623
                           (begin
                             (write '(funapp 745 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7625
                              (begin
                                (write '(funapp 746 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 746 55))
                              (display "\n")
                              (assq k x7625)))))))))
                   g7620)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 751 60))
                        (display "\n")
                        (= 0 x7627)))))
                   g7626)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 756 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 756 57))
                        (display "\n")
                        (assert x7630))))
                    (g7629
                     (letrec*
                      ((x-cnd7631
                        (begin
                          (write '(funapp 759 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7631
                        ""
                        (letrec*
                         ((x7634
                           (letrec*
                            ((x7635
                              (begin
                                (write '(funapp 764 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 764 55))
                              (display "\n")
                              (char->string x7635))))
                          (x7632
                           (letrec*
                            ((x7633
                              (begin
                                (write '(funapp 766 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 766 55))
                              (display "\n")
                              (list->string x7633)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (string-append x7634 x7632)))))))
                   g7629)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 772 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 772 58))
                        (display "\n")
                        (assert x7639))))
                    (g7637
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 773 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 773 58))
                        (display "\n")
                        (assert x7640))))
                    (g7638
                     (letrec*
                      ((val7247
                        (begin
                          (write '(funapp 776 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7641
                         (if val7247
                           val7247
                           (begin
                             (write '(funapp 778 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7641))))
                   g7638)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7643
                        (letrec*
                         ((x7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 788 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 788 61))
                              (display "\n")
                              (cdr x7645)))))
                         (begin
                           (write '(funapp 789 26))
                           (display "\n")
                           (cdr x7644)))))
                      (begin
                        (write '(funapp 790 23))
                        (display "\n")
                        (cdr x7643)))))
                   g7642)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 795 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 795 57))
                        (display "\n")
                        (assert x7649))))
                    (g7647
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 796 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 796 57))
                        (display "\n")
                        (assert x7650))))
                    (g7648
                     (letrec*
                      ((x-cnd7651
                        (begin
                          (write '(funapp 799 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7651
                        x
                        (letrec*
                         ((x7653
                           (begin
                             (write '(funapp 803 34))
                             (display "\n")
                             (cdr x)))
                          (x7652
                           (begin
                             (write '(funapp 803 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 804 26))
                           (display "\n")
                           (list-tail x7653 x7652)))))))
                   g7648)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7654
                     (begin (write '(funapp 806 49)) (display "\n") '())))
                   g7654)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x-cnd7656
                        (letrec*
                         ((x7657 #\a))
                         (begin
                           (write '(funapp 813 48))
                           (display "\n")
                           (char-ci>=? c x7657)))))
                      (if x-cnd7656
                        (letrec*
                         ((x7658 #\z))
                         (begin
                           (write '(funapp 815 48))
                           (display "\n")
                           (char-ci<=? c x7658)))
                        #f))))
                   g7655)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((val7248
                        (letrec*
                         ((x7660
                           (begin
                             (write '(funapp 824 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 824 62))
                           (display "\n")
                           (= x7660 9)))))
                      (letrec*
                       ((g7661
                         (if val7248
                           val7248
                           (letrec*
                            ((val7249
                              (letrec*
                               ((x7662
                                 (begin
                                   (write '(funapp 832 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 833 32))
                                 (display "\n")
                                 (= x7662 10)))))
                            (letrec*
                             ((g7663
                               (if val7249
                                 val7249
                                 (letrec*
                                  ((x7664
                                    (begin
                                      (write '(funapp 839 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 840 35))
                                    (display "\n")
                                    (= x7664 32))))))
                             g7663)))))
                       g7661))))
                   g7659)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7666
                        (letrec*
                         ((x7667
                           (begin
                             (write '(funapp 849 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 849 58))
                           (display "\n")
                           (cdr x7667)))))
                      (begin
                        (write '(funapp 850 23))
                        (display "\n")
                        (cdr x7666)))))
                   g7665)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 855 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 855 59))
                        (display "\n")
                        (assert x7670))))
                    (g7669
                     (begin (write '(funapp 856 28)) (display "\n") (> x 0))))
                   g7669)))
               ($pc (begin (write '(funapp 858 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7671 #f)) g7671)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7672
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 864 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 864 55))
                        (display "\n")
                        (cdr x7673)))))
                   g7672)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7674
                     (letrec*
                      ((x7676
                        (begin
                          (write '(funapp 869 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 869 59))
                        (display "\n")
                        (assert x7676))))
                    (g7675
                     (letrec*
                      ((x-cnd7677
                        (begin
                          (write '(funapp 872 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7677
                        (begin
                          (write '(funapp 873 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 873 49))
                          (display "\n")
                          (floor x))))))
                   g7675)))
               ($cmp (begin (write '(funapp 875 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7678
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 881 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7679
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (letrec*
                               ((x-cnd7680
                                 (begin
                                   (write '(funapp 889 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7680
                                 (begin
                                   (write '(funapp 890 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7681
                               (if val7251
                                 val7251
                                 (letrec*
                                  ((val7252
                                    (letrec*
                                     ((x-cnd7682
                                       (begin
                                         (write '(funapp 898 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7682
                                       (letrec*
                                        ((x-cnd7683
                                          (begin
                                            (write '(funapp 901 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7683
                                          (begin
                                            (write '(funapp 902 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
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
                                               (write '(funapp 911 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7685
                                             (letrec*
                                              ((x-cnd7686
                                                (begin
                                                  (write '(funapp 914 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7686
                                                (letrec*
                                                 ((x-cnd7687
                                                   (letrec*
                                                    ((x7689
                                                      (begin
                                                        (write
                                                         '(funapp 919 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7688
                                                      (begin
                                                        (write
                                                         '(funapp 920 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 921 53))
                                                      (display "\n")
                                                      (equal? x7689 x7688)))))
                                                 (if x-cnd7687
                                                   (letrec*
                                                    ((x7691
                                                      (begin
                                                        (write
                                                         '(funapp 924 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7690
                                                      (begin
                                                        (write
                                                         '(funapp 925 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 926 53))
                                                      (display "\n")
                                                      (equal? x7691 x7690)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7692
                                           (if val7253
                                             val7253
                                             (letrec*
                                              ((x-cnd7693
                                                (begin
                                                  (write '(funapp 935 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7693
                                                (letrec*
                                                 ((x-cnd7694
                                                   (begin
                                                     (write '(funapp 938 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7694
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 941 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7695
                                                       (letrec*
                                                        ((x-cnd7696
                                                          (letrec*
                                                           ((x7697
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
                                                             (= x7697 n)))))
                                                        (if x-cnd7696
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7698
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
                                                                    ((g7699
                                                                      (if val7254
                                                                        val7254
                                                                        (letrec*
                                                                         ((x-cnd7700
                                                                           (letrec*
                                                                            ((x7702
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
                                                                             (x7701
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
                                                                               x7702
                                                                               x7701)))))
                                                                         (if x-cnd7700
                                                                           (letrec*
                                                                            ((x7703
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
                                                                               x7703)))
                                                                           #f)))))
                                                                    g7699))))
                                                                g7698))))
                                                           (letrec*
                                                            ((g7704
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   990
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7704))
                                                          #f))))
                                                     g7695))
                                                   #f))
                                                #f)))))
                                         g7692)))))
                                   g7684)))))
                             g7681)))))
                       g7679))))
                   g7678)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7705
                     (letrec*
                      ((x7706
                        (letrec*
                         ((x7707
                           (letrec*
                            ((x7708
                              (begin
                                (write '(funapp 1008 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1008 61))
                              (display "\n")
                              (car x7708)))))
                         (begin
                           (write '(funapp 1009 26))
                           (display "\n")
                           (car x7707)))))
                      (begin
                        (write '(funapp 1010 23))
                        (display "\n")
                        (cdr x7706)))))
                   g7705)))
               (caaddr
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
                                (write '(funapp 1019 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1019 61))
                              (display "\n")
                              (cdr x7712)))))
                         (begin
                           (write '(funapp 1020 26))
                           (display "\n")
                           (car x7711)))))
                      (begin
                        (write '(funapp 1021 23))
                        (display "\n")
                        (car x7710)))))
                   g7709)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7713
                     (begin
                       (write '(funapp 1023 53))
                       (display "\n")
                       (eq? x y))))
                   g7713)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7714
                     (letrec*
                      ((x7717
                        (begin
                          (write '(funapp 1028 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 1028 60))
                        (display "\n")
                        (assert x7717))))
                    (g7715
                     (letrec*
                      ((x7718
                        (begin
                          (write '(funapp 1030 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1030 59))
                        (display "\n")
                        (assert x7718))))
                    (g7716
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
                       ((g7719
                         (begin
                           (write '(funapp 1036 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7720 res))
                       g7720))))
                   g7716)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7721
                     (begin
                       (write '(funapp 1039 50))
                       (display "\n")
                       (cons
                        x
                        (begin
                          (write '(funapp 1039 57))
                          (display "\n")
                          '())))))
                   g7721)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7722
                     (letrec*
                      ((x7725
                        (begin
                          (write '(funapp 1043 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1043 58))
                        (display "\n")
                        (assert x7725))))
                    (g7723
                     (letrec*
                      ((x7726
                        (begin
                          (write '(funapp 1044 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1044 58))
                        (display "\n")
                        (assert x7726))))
                    (g7724
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1047 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7727
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1049 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7727))))
                   g7724)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7729
                        (letrec*
                         ((x7730
                           (begin
                             (write '(funapp 1057 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1057 58))
                           (display "\n")
                           (car x7730)))))
                      (begin
                        (write '(funapp 1058 23))
                        (display "\n")
                        (cdr x7729)))))
                   g7728)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7732
                        (letrec*
                         ((x7733
                           (letrec*
                            ((x7734
                              (begin
                                (write '(funapp 1067 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1067 61))
                              (display "\n")
                              (cdr x7734)))))
                         (begin
                           (write '(funapp 1068 26))
                           (display "\n")
                           (car x7733)))))
                      (begin
                        (write '(funapp 1069 23))
                        (display "\n")
                        (cdr x7732)))))
                   g7731)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7736
                        (letrec*
                         ((x7737
                           (begin
                             (write '(funapp 1077 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1077 58))
                           (display "\n")
                           (cdr x7737)))))
                      (begin
                        (write '(funapp 1078 23))
                        (display "\n")
                        (car x7736)))))
                   g7735)))
               (caadr
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
                             (cdr x))))
                         (begin
                           (write '(funapp 1085 58))
                           (display "\n")
                           (car x7740)))))
                      (begin
                        (write '(funapp 1086 23))
                        (display "\n")
                        (car x7739)))))
                   g7738)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1091 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1091 58))
                        (display "\n")
                        (assert x7744))))
                    (g7742
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1092 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1092 58))
                        (display "\n")
                        (assert x7745))))
                    (g7743
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1093 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 1093 66))
                        (display "\n")
                        (not x7746)))))
                   g7743)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (letrec*
                         ((x7749
                           (letrec*
                            ((x7750
                              (begin
                                (write '(funapp 1103 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1103 61))
                              (display "\n")
                              (car x7750)))))
                         (begin
                           (write '(funapp 1104 26))
                           (display "\n")
                           (car x7749)))))
                      (begin
                        (write '(funapp 1105 23))
                        (display "\n")
                        (car x7748)))))
                   g7747)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1110 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1110 59))
                        (display "\n")
                        (assert x7753))))
                    (g7752
                     (begin (write '(funapp 1111 28)) (display "\n") (< x 0))))
                   g7752)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7754
                     (begin
                       (write '(funapp 1113 53))
                       (display "\n")
                       (memq e l))))
                   g7754)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (begin
                             (write '(funapp 1119 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 1119 58))
                           (display "\n")
                           (car x7757)))))
                      (begin
                        (write '(funapp 1120 23))
                        (display "\n")
                        (car x7756)))))
                   g7755)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7758
                     (begin (write '(funapp 1122 51)) (display "\n") '())))
                   g7758)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1126 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1126 57))
                        (display "\n")
                        (assert x7761))))
                    (g7760
                     (letrec*
                      ((x-cnd7762
                        (begin
                          (write '(funapp 1129 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7762
                        (begin (write '(funapp 1131 24)) (display "\n") '())
                        (letrec*
                         ((x7765
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1133 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1133 61))
                              (display "\n")
                              (reverse x7766))))
                          (x7763
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (list x7764)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (append x7765 x7763)))))))
                   g7760)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7768
                        (letrec*
                         ((x7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1144 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1144 61))
                              (display "\n")
                              (car x7770)))))
                         (begin
                           (write '(funapp 1145 26))
                           (display "\n")
                           (car x7769)))))
                      (begin
                        (write '(funapp 1146 23))
                        (display "\n")
                        (car x7768)))))
                   g7767)))
               (cddadr
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
                                (write '(funapp 1155 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1155 61))
                              (display "\n")
                              (car x7774)))))
                         (begin
                           (write '(funapp 1156 26))
                           (display "\n")
                           (cdr x7773)))))
                      (begin
                        (write '(funapp 1157 23))
                        (display "\n")
                        (cdr x7772)))))
                   g7771)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 1162 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1162 59))
                        (display "\n")
                        (assert x7777))))
                    (g7776
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1163 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 1163 60))
                        (display "\n")
                        (= 1 x7778)))))
                   g7776)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7780
                        (letrec*
                         ((x7781
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 1172 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1172 61))
                              (display "\n")
                              (cdr x7782)))))
                         (begin
                           (write '(funapp 1173 26))
                           (display "\n")
                           (car x7781)))))
                      (begin
                        (write '(funapp 1174 23))
                        (display "\n")
                        (car x7780)))))
                   g7779)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1180 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 1180 59))
                        (display "\n")
                        (assert x7786))))
                    (g7784
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1181 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 1181 60))
                        (display "\n")
                        (assert x7787))))
                    (g7785
                     (letrec*
                      ((x-cnd7788
                        (begin
                          (write '(funapp 1184 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7788
                        (letrec*
                         ((g7789
                           (begin
                             (write '(funapp 1186 42))
                             (display "\n")
                             (proc))))
                         g7789)
                        (letrec*
                         ((x-cnd7790
                           (letrec*
                            ((x7791
                              (begin
                                (write '(funapp 1189 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 1189 58))
                              (display "\n")
                              (null? x7791)))))
                         (if x-cnd7790
                           (letrec*
                            ((g7792
                              (letrec*
                               ((x7793
                                 (begin
                                   (write '(funapp 1193 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 1193 61))
                                 (display "\n")
                                 (proc x7793)))))
                            g7792)
                           (letrec*
                            ((x-cnd7794
                              (letrec*
                               ((x7795
                                 (begin
                                   (write '(funapp 1197 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 1197 62))
                                 (display "\n")
                                 (null? x7795)))))
                            (if x-cnd7794
                              (letrec*
                               ((g7796
                                 (letrec*
                                  ((x7798
                                    (begin
                                      (write '(funapp 1202 43))
                                      (display "\n")
                                      (car args)))
                                   (x7797
                                    (begin
                                      (write '(funapp 1202 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 1203 35))
                                    (display "\n")
                                    (proc x7798 x7797)))))
                               g7796)
                              (letrec*
                               ((x-cnd7799
                                 (letrec*
                                  ((x7800
                                    (begin
                                      (write '(funapp 1208 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 1209 35))
                                    (display "\n")
                                    (null? x7800)))))
                               (if x-cnd7799
                                 (letrec*
                                  ((g7801
                                    (letrec*
                                     ((x7804
                                       (begin
                                         (write '(funapp 1214 46))
                                         (display "\n")
                                         (car args)))
                                      (x7803
                                       (begin
                                         (write '(funapp 1215 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7802
                                       (begin
                                         (write '(funapp 1216 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 1217 38))
                                       (display "\n")
                                       (proc x7804 x7803 x7802)))))
                                  g7801)
                                 (letrec*
                                  ((x-cnd7805
                                    (letrec*
                                     ((x7806
                                       (begin
                                         (write '(funapp 1222 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 1223 38))
                                       (display "\n")
                                       (null? x7806)))))
                                  (if x-cnd7805
                                    (letrec*
                                     ((g7807
                                       (letrec*
                                        ((x7811
                                          (begin
                                            (write '(funapp 1228 49))
                                            (display "\n")
                                            (car args)))
                                         (x7810
                                          (begin
                                            (write '(funapp 1229 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7809
                                          (begin
                                            (write '(funapp 1230 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7808
                                          (begin
                                            (write '(funapp 1231 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 1232 41))
                                          (display "\n")
                                          (proc x7811 x7810 x7809 x7808)))))
                                     g7807)
                                    (letrec*
                                     ((x-cnd7812
                                       (letrec*
                                        ((x7813
                                          (letrec*
                                           ((x7814
                                             (begin
                                               (write '(funapp 1239 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1240 44))
                                             (display "\n")
                                             (cdr x7814)))))
                                        (begin
                                          (write '(funapp 1241 41))
                                          (display "\n")
                                          (null? x7813)))))
                                     (if x-cnd7812
                                       (letrec*
                                        ((g7815
                                          (letrec*
                                           ((x7821
                                             (begin
                                               (write '(funapp 1246 52))
                                               (display "\n")
                                               (car args)))
                                            (x7820
                                             (begin
                                               (write '(funapp 1247 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7819
                                             (begin
                                               (write '(funapp 1248 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7818
                                             (begin
                                               (write '(funapp 1249 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7816
                                             (letrec*
                                              ((x7817
                                                (begin
                                                  (write '(funapp 1252 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1253 47))
                                                (display "\n")
                                                (car x7817)))))
                                           (begin
                                             (write '(funapp 1254 44))
                                             (display "\n")
                                             (proc
                                              x7821
                                              x7820
                                              x7819
                                              x7818
                                              x7816)))))
                                        g7815)
                                       (letrec*
                                        ((x-cnd7822
                                          (letrec*
                                           ((x7823
                                             (letrec*
                                              ((x7824
                                                (begin
                                                  (write '(funapp 1266 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1267 47))
                                                (display "\n")
                                                (cddr x7824)))))
                                           (begin
                                             (write '(funapp 1268 44))
                                             (display "\n")
                                             (null? x7823)))))
                                        (if x-cnd7822
                                          (letrec*
                                           ((g7825
                                             (letrec*
                                              ((x7833
                                                (begin
                                                  (write '(funapp 1273 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7832
                                                (begin
                                                  (write '(funapp 1274 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7831
                                                (begin
                                                  (write '(funapp 1275 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7830
                                                (begin
                                                  (write '(funapp 1276 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7828
                                                (letrec*
                                                 ((x7829
                                                   (begin
                                                     (write '(funapp 1279 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1280 50))
                                                   (display "\n")
                                                   (car x7829))))
                                               (x7826
                                                (letrec*
                                                 ((x7827
                                                   (begin
                                                     (write '(funapp 1283 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1284 50))
                                                   (display "\n")
                                                   (cadr x7827)))))
                                              (begin
                                                (write '(funapp 1285 47))
                                                (display "\n")
                                                (proc
                                                 x7833
                                                 x7832
                                                 x7831
                                                 x7830
                                                 x7828
                                                 x7826)))))
                                           g7825)
                                          (letrec*
                                           ((x-cnd7834
                                             (letrec*
                                              ((x7835
                                                (letrec*
                                                 ((x7836
                                                   (begin
                                                     (write '(funapp 1298 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1299 50))
                                                   (display "\n")
                                                   (cdddr x7836)))))
                                              (begin
                                                (write '(funapp 1300 47))
                                                (display "\n")
                                                (null? x7835)))))
                                           (if x-cnd7834
                                             (letrec*
                                              ((g7837
                                                (letrec*
                                                 ((x7847
                                                   (begin
                                                     (write '(funapp 1305 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7846
                                                   (begin
                                                     (write '(funapp 1306 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7845
                                                   (begin
                                                     (write '(funapp 1307 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7844
                                                   (begin
                                                     (write '(funapp 1308 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7842
                                                   (letrec*
                                                    ((x7843
                                                      (begin
                                                        (write
                                                         '(funapp 1311 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1312 53))
                                                      (display "\n")
                                                      (car x7843))))
                                                  (x7840
                                                   (letrec*
                                                    ((x7841
                                                      (begin
                                                        (write
                                                         '(funapp 1315 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1316 53))
                                                      (display "\n")
                                                      (cadr x7841))))
                                                  (x7838
                                                   (letrec*
                                                    ((x7839
                                                      (begin
                                                        (write
                                                         '(funapp 1319 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1320 53))
                                                      (display "\n")
                                                      (caddr x7839)))))
                                                 (begin
                                                   (write '(funapp 1321 50))
                                                   (display "\n")
                                                   (proc
                                                    x7847
                                                    x7846
                                                    x7845
                                                    x7844
                                                    x7842
                                                    x7840
                                                    x7838)))))
                                              g7837)
                                             (letrec*
                                              ((g7848
                                                (begin
                                                  (write '(funapp 1332 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7848)))))))))))))))))))
                   g7785)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1338 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1338 57))
                        (display "\n")
                        (assert x7851))))
                    (g7850
                     (letrec*
                      ((x-cnd7852
                        (begin
                          (write '(funapp 1341 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7852
                        #f
                        (letrec*
                         ((x-cnd7853
                           (letrec*
                            ((x7854
                              (begin
                                (write '(funapp 1346 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1346 55))
                              (display "\n")
                              (equal? x7854 e)))))
                         (if x-cnd7853
                           l
                           (letrec*
                            ((x7855
                              (begin
                                (write '(funapp 1349 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1349 55))
                              (display "\n")
                              (member e x7855)))))))))
                   g7850)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7857
                        (letrec*
                         ((x7858
                           (letrec*
                            ((x7859
                              (begin
                                (write '(funapp 1358 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1358 61))
                              (display "\n")
                              (cdr x7859)))))
                         (begin
                           (write '(funapp 1359 26))
                           (display "\n")
                           (cdr x7858)))))
                      (begin
                        (write '(funapp 1360 23))
                        (display "\n")
                        (cdr x7857)))))
                   g7856)))
               (cadddr
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
                                (write '(funapp 1369 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1369 61))
                              (display "\n")
                              (cdr x7863)))))
                         (begin
                           (write '(funapp 1370 26))
                           (display "\n")
                           (cdr x7862)))))
                      (begin
                        (write '(funapp 1371 23))
                        (display "\n")
                        (car x7861)))))
                   g7860)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7864
                     (begin
                       (write '(funapp 1373 53))
                       (display "\n")
                       (random 42))))
                   g7864)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x7867
                        (begin
                          (write '(funapp 1377 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1377 59))
                        (display "\n")
                        (assert x7867))))
                    (g7866
                     (begin (write '(funapp 1378 28)) (display "\n") (= x 0))))
                   g7866)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1385 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7869
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1387 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7869))))
                   g7868)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x7871
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1393 55))
                        (display "\n")
                        (car x7871)))))
                   g7870)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((val7257
                        (letrec*
                         ((x-cnd7873
                           (begin
                             (write '(funapp 1403 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7873
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 1405 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1405 55))
                              (display "\n")
                              (list? x7874)))
                           #f))))
                      (letrec*
                       ((g7875
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1408 52))
                             (display "\n")
                             (null? l)))))
                       g7875))))
                   g7872)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x7877
                        (letrec*
                         ((x7878
                           (letrec*
                            ((x7879
                              (begin
                                (write '(funapp 1418 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1418 61))
                              (display "\n")
                              (car x7879)))))
                         (begin
                           (write '(funapp 1419 26))
                           (display "\n")
                           (cdr x7878)))))
                      (begin
                        (write '(funapp 1420 23))
                        (display "\n")
                        (cdr x7877)))))
                   g7876)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x-cnd7881
                        (letrec*
                         ((x7882 #\0))
                         (begin
                           (write '(funapp 1427 58))
                           (display "\n")
                           (char<=? x7882 c)))))
                      (if x-cnd7881
                        (letrec*
                         ((x7883 #\9))
                         (begin
                           (write '(funapp 1429 48))
                           (display "\n")
                           (char<=? c x7883)))
                        #f))))
                   g7880)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 1436 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1436 57))
                        (display "\n")
                        (assert x7886))))
                    (g7885
                     (letrec*
                      ((x-cnd7887
                        (begin
                          (write '(funapp 1439 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7887
                        #f
                        (letrec*
                         ((x-cnd7888
                           (letrec*
                            ((x7889
                              (begin
                                (write '(funapp 1444 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1444 56))
                              (display "\n")
                              (eqv? x7889 k)))))
                         (if x-cnd7888
                           (begin
                             (write '(funapp 1446 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7890
                              (begin
                                (write '(funapp 1447 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1447 55))
                              (display "\n")
                              (assq k x7890)))))))))
                   g7885)))
               (not (lambda (x) (letrec* ((g7891 (if x #f #t))) g7891)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7892
                     (begin
                       (write '(funapp 1451 50))
                       (display "\n")
                       (append l1 l2))))
                   g7892)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7893
                     (letrec*
                      ((x7895
                        (begin
                          (write '(funapp 1455 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1455 57))
                        (display "\n")
                        (assert x7895))))
                    (g7894
                     (letrec*
                      ((x-cnd7896
                        (begin
                          (write '(funapp 1458 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7896
                        #f
                        (letrec*
                         ((x-cnd7897
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 1463 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1463 55))
                              (display "\n")
                              (eq? x7898 e)))))
                         (if x-cnd7897
                           l
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 1466 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1466 55))
                              (display "\n")
                              (memq e x7899)))))))))
                   g7894)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7901
                        (letrec*
                         ((x7902
                           (letrec*
                            ((x7903
                              (begin
                                (write '(funapp 1475 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1475 61))
                              (display "\n")
                              (car x7903)))))
                         (begin
                           (write '(funapp 1476 26))
                           (display "\n")
                           (cdr x7902)))))
                      (begin
                        (write '(funapp 1477 23))
                        (display "\n")
                        (car x7901)))))
                   g7900)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 1482 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1482 57))
                        (display "\n")
                        (assert x7906))))
                    (g7905
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7907
                             (letrec*
                              ((x-cnd7908
                                (begin
                                  (write '(funapp 1490 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7908
                                0
                                (letrec*
                                 ((x7909
                                   (letrec*
                                    ((x7910
                                      (begin
                                        (write '(funapp 1495 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1495 63))
                                      (display "\n")
                                      (rec x7910)))))
                                 (begin
                                   (write '(funapp 1496 34))
                                   (display "\n")
                                   (+ 1 x7909)))))))
                           g7907))))
                      (letrec*
                       ((g7911
                         (begin
                           (write '(funapp 1498 40))
                           (display "\n")
                           (rec l))))
                       g7911))))
                   g7905)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 1503 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1503 58))
                        (display "\n")
                        (assert x7915))))
                    (g7913
                     (letrec*
                      ((x7916
                        (begin
                          (write '(funapp 1504 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1504 58))
                        (display "\n")
                        (assert x7916))))
                    (g7914
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1507 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7917
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1509 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7917))))
                   g7914)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7918
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 1515 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1515 65))
                        (display "\n")
                        (not x7919)))))
                   g7918)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7920
                     (letrec*
                      ((x7921
                        (letrec*
                         ((x7922
                           (begin
                             (write '(funapp 1522 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1522 58))
                           (display "\n")
                           (car x7922)))))
                      (begin
                        (write '(funapp 1523 23))
                        (display "\n")
                        (cdr x7921)))))
                   g7920)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7923
                     (letrec*
                      ((x7925
                        (begin
                          (write '(funapp 1528 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1528 57))
                        (display "\n")
                        (assert x7925))))
                    (g7924
                     (letrec*
                      ((x-cnd7926
                        (begin
                          (write '(funapp 1531 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7926
                        #f
                        (letrec*
                         ((x-cnd7927
                           (letrec*
                            ((x7928
                              (begin
                                (write '(funapp 1536 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1536 56))
                              (display "\n")
                              (equal? x7928 k)))))
                         (if x-cnd7927
                           (begin
                             (write '(funapp 1538 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7929
                              (begin
                                (write '(funapp 1539 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1539 55))
                              (display "\n")
                              (assoc k x7929)))))))))
                   g7924)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7930
                     (letrec*
                      ((x7931
                        (begin
                          (write '(funapp 1544 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1544 55))
                        (display "\n")
                        (car x7931)))))
                   g7930)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7932
                     (letrec*
                      ((x7935
                        (begin
                          (write '(funapp 1549 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1549 58))
                        (display "\n")
                        (assert x7935))))
                    (g7933
                     (letrec*
                      ((x7936
                        (begin
                          (write '(funapp 1550 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1550 58))
                        (display "\n")
                        (assert x7936))))
                    (g7934
                     (letrec*
                      ((x7937
                        (begin
                          (write '(funapp 1551 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1551 63))
                        (display "\n")
                        (not x7937)))))
                   g7934)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7938
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 1558 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7939
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 1560 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7939))))
                   g7938)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7940
                     (letrec*
                      ((x7943
                        (begin
                          (write '(funapp 1566 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1566 62))
                        (display "\n")
                        (assert x7943))))
                    (g7941
                     (letrec*
                      ((x7944
                        (begin
                          (write '(funapp 1567 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1567 57))
                        (display "\n")
                        (assert x7944))))
                    (g7942
                     (letrec*
                      ((x-cnd7945
                        (begin
                          (write '(funapp 1570 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7945
                        #t
                        (letrec*
                         ((x-cnd7946
                           (begin
                             (write '(funapp 1574 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7946
                           (letrec*
                            ((g7947
                              (letrec*
                               ((x7949
                                 (begin
                                   (write '(funapp 1577 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1577 64))
                                 (display "\n")
                                 (f x7949))))
                             (g7948
                              (letrec*
                               ((x7950
                                 (begin
                                   (write '(funapp 1579 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1579 58))
                                 (display "\n")
                                 (for-each f x7950)))))
                            g7948)
                           (begin
                             (write '(funapp 1581 27))
                             (display "\n")
                             '())))))))
                   g7942)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7951
                     (letrec*
                      ((x7953
                        (begin
                          (write '(funapp 1586 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1586 59))
                        (display "\n")
                        (assert x7953))))
                    (g7952
                     (letrec*
                      ((x-cnd7954
                        (begin
                          (write '(funapp 1588 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7954
                        (begin
                          (write '(funapp 1588 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7952)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7955
                     (letrec*
                      ((x7958
                        (begin
                          (write '(funapp 1593 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1593 58))
                        (display "\n")
                        (assert x7958))))
                    (g7956
                     (letrec*
                      ((x7959
                        (begin
                          (write '(funapp 1594 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1594 58))
                        (display "\n")
                        (assert x7959))))
                    (g7957
                     (letrec*
                      ((val7260
                        (begin
                          (write '(funapp 1597 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7960
                         (if val7260
                           val7260
                           (begin
                             (write '(funapp 1599 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7960))))
                   g7957)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7961
                     (letrec*
                      ((x7962
                        (letrec*
                         ((x7963
                           (letrec*
                            ((x7964
                              (begin
                                (write '(funapp 1609 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1609 61))
                              (display "\n")
                              (cdr x7964)))))
                         (begin
                           (write '(funapp 1610 26))
                           (display "\n")
                           (cdr x7963)))))
                      (begin
                        (write '(funapp 1611 23))
                        (display "\n")
                        (car x7962)))))
                   g7961)))
               (newline (lambda () (letrec* ((g7965 #f)) g7965)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7966
                     (letrec*
                      ((x7968
                        (letrec*
                         ((x7969
                           (begin
                             (write '(funapp 1619 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1619 58))
                           (display "\n")
                           (abs x7969))))
                       (x7967
                        (begin
                          (write '(funapp 1620 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1621 23))
                        (display "\n")
                        (/ x7968 x7967)))))
                   g7966)))
               (deref car)
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7970
                     (letrec*
                      ((x7974
                        (begin
                          (write '(funapp 1627 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1627 57))
                        (display "\n")
                        (assert x7974))))
                    (g7971
                     (letrec*
                      ((x7975
                        (begin
                          (write '(funapp 1628 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1628 63))
                        (display "\n")
                        (assert x7975))))
                    (g7972
                     (letrec*
                      ((x7976
                        (letrec*
                         ((x7977
                           (begin
                             (write '(funapp 1631 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1631 61))
                           (display "\n")
                           (< index x7977)))))
                      (begin
                        (write '(funapp 1632 23))
                        (display "\n")
                        (assert x7976))))
                    (g7973
                     (letrec*
                      ((x-cnd7978
                        (begin
                          (write '(funapp 1635 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7978
                        (begin
                          (write '(funapp 1637 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7980
                           (begin
                             (write '(funapp 1639 34))
                             (display "\n")
                             (cdr l)))
                          (x7979
                           (begin
                             (write '(funapp 1639 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1640 26))
                           (display "\n")
                           (list-ref x7980 x7979)))))))
                   g7973)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7981
                     (letrec*
                      ((x-cnd7982
                        (begin
                          (write '(funapp 1647 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7982
                        a
                        (letrec*
                         ((x7983
                           (begin
                             (write '(funapp 1650 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1650 57))
                           (display "\n")
                           (gcd b x7983)))))))
                   g7981)))
               (recursive-div2
                (lambda (l)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x-cnd7985
                        (begin
                          (write '(funapp 1657 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7985
                        empty
                        (letrec*
                         ((x7989
                           (begin
                             (write '(funapp 1661 34))
                             (display "\n")
                             (car l)))
                          (x7986
                           (letrec*
                            ((x7987
                              (letrec*
                               ((x7988
                                 (begin
                                   (write '(funapp 1664 54))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1664 64))
                                 (display "\n")
                                 (cdr x7988)))))
                            (begin
                              (write '(funapp 1665 29))
                              (display "\n")
                              (recursive-div2 x7987)))))
                         (begin
                           (write '(funapp 1666 26))
                           (display "\n")
                           (cons x7989 x7986)))))))
                   g7984)))
               (even-list/c
                (lambda (g7394 g7395 g7396)
                  (letrec*
                   ((g7990
                     (letrec*
                      ((x-cnd7991
                        (begin
                          (write '(funapp 1674 25))
                          (display "\n")
                          ((lambda ()
                             (letrec*
                              ((g7992
                                (letrec*
                                 ((x7993
                                   (letrec*
                                    ((x7994
                                      (begin
                                        (write '(funapp 1680 43))
                                        (display "\n")
                                        (cons/c any/c even-list/c))))
                                    (begin
                                      (write '(funapp 1681 35))
                                      (display "\n")
                                      (cons/c any/c x7994)))))
                                 (begin
                                   (write '(funapp 1682 32))
                                   (display "\n")
                                   (or/c null? x7993)))))
                              g7992))
                           g7396))))
                      (if x-cnd7991
                        g7396
                        (begin
                          (write '(blame g7394 1687 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7394)))))))
                   g7990))))
              (letrec*
               ((g7995
                 (begin
                   (write '(funapp 1696 18))
                   (display "\n")
                   (parallel
                    (begin
                      (write '(funapp 1697 19))
                      (display "\n")
                      (parallel
                       (letrec*
                        ((x7997
                          (letrec*
                           ((xj7397
                             (begin
                               (write '(funapp 1701 33))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1701 37))
                                  (display "\n")
                                  'module))))
                            (xk7398
                             (begin
                               (write '(funapp 1701 56))
                               (display "\n")
                               (loc
                                (begin
                                  (write '(funapp 1701 60))
                                  (display "\n")
                                  'importer)))))
                           (letrec*
                            ((g7998
                              (begin
                                (write '(funapp 1704 27))
                                (display "\n")
                                ((lambda (j7400 k7401 f7402)
                                   (letrec*
                                    ((g7999
                                      (lambda (g7399)
                                        (letrec*
                                         ((g8000
                                           (letrec*
                                            ((x8004
                                              (begin
                                                (write '(funapp 1711 47))
                                                (display "\n")
                                                (listof any/c)))
                                             (x8001
                                              (letrec*
                                               ((x8002
                                                 (letrec*
                                                  ((x8003
                                                    (begin
                                                      (write '(funapp 1716 53))
                                                      (display "\n")
                                                      (even-list/c))))
                                                  (begin
                                                    (write '(funapp 1717 45))
                                                    (display "\n")
                                                    (x8003
                                                     j7400
                                                     k7401
                                                     g7399)))))
                                               (begin
                                                 (write '(funapp 1718 42))
                                                 (display "\n")
                                                 (f7402 x8002)))))
                                            (begin
                                              (write '(funapp 1719 39))
                                              (display "\n")
                                              (x8004 j7400 k7401 x8001)))))
                                         g8000))))
                                    g7999))
                                 xj7397
                                 xk7398
                                 recursive-div2))))
                            g7998)))
                         (x7996 (input)))
                        (begin
                          (write '(funapp 1727 21))
                          (display "\n")
                          (x7997 x7996)))))))))
               g7995))))
           g7430))))
       g7414)))
    g7413)))
